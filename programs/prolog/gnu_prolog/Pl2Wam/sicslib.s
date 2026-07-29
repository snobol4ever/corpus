                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_copyright$2F1_α
proc_prolog_copyright$2F1_α:
                        .global          proc_prolog_copyright$2F1_α
                        .global          proc_prolog_copyright$2F1_β
                        .global          proc_prolog_copyright$2F1_γ
                        .global          proc_prolog_copyright$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_copyright$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx7_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx7_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx7_101
.Lx7_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx7_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_copyright$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx10_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n3_op11_α
.Lx10_0:
                        .quad            .Lx10_0_s
.Lx10_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx11_2]
                                                                                        jmp   .Lx11_3
.Lx11_2:
                        .quad            .Lx11_2_s
.Lx11_2_s:
                        .string          ""
.Lx11_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_move_label_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_copyright$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_prolog_copyright$2F1_ω
                                                                                        jmp   proc_prolog_copyright$2F1_ω
n5_op11_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n6_disjunction_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_β:
                                                                                        jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx17_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx17_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_copyright$2F1_α_body
.Lx17_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx17_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_prolog_flag$2F2_α
proc_current_prolog_flag$2F2_α:
                        .global          proc_current_prolog_flag$2F2_α
                        .global          proc_current_prolog_flag$2F2_β
                        .global          proc_current_prolog_flag$2F2_γ
                        .global          proc_current_prolog_flag$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_prolog_flag$2F2_α_body:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n20_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx26_60:
                        .section         .rodata
.Lbynamegenfn10:        .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn10]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_prolog_flag$2F2_ω
                                                                                        jmp   n21_suspend_α
n20_call_builtin_gen_β:
                                                                                        jmp   .Lx26_60
#-----------------------------------------------------------------------------------------------------------------------
n21_suspend_α:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_prolog_flag$2F2_γ
n21_suspend_β:
                                                                                        jmp   n20_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_prolog_flag$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_version$2F1_α
proc_prolog_version$2F1_α:
                        .global          proc_prolog_version$2F1_α
                        .global          proc_prolog_version$2F1_β
                        .global          proc_prolog_version$2F1_γ
                        .global          proc_prolog_version$2F1_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_version$2F1_α_body:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx38_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx38_101
.Lx38_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx38_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   n30_var_ref_α
n29_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
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
.Lx43_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        cmp              esi, 1
                                                                                        jne   .Lx43_55
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_55:
                        cmp              esi, 2
                                                                                        jne   .Lx43_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_56:
                        cmp              eax, 13
                                                                                        jne   .Lx43_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_41
                        cmp              rax, r8
                                                                                        je    .Lx43_41
                        mov              r8, rax
                                                                                        jmp   .Lx43_40
.Lx43_41:
                        lea              r9, [rbp + 240]
.Lx43_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        cmp              esi, 1
                                                                                        jne   .Lx43_57
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_57:
                        cmp              esi, 2
                                                                                        jne   .Lx43_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_58:
                        cmp              eax, 13
                                                                                        jne   .Lx43_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_43
                        cmp              rax, r9
                                                                                        je    .Lx43_43
                        mov              r9, rax
                                                                                        jmp   .Lx43_42
.Lx43_43:
                        cmp              r8, r9
                                                                                        je    .Lx43_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_44
                        cmp              eax, 99
                                                                                        je    .Lx43_44
                        cmp              eax, 13
                                                                                        jne   .Lx43_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx43_44
                                                                                        jmp   .Lx43_45
.Lx43_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_53
                        cmp              eax, 99
                                                                                        je    .Lx43_53
                        cmp              eax, 13
                                                                                        jne   .Lx43_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx43_53
                                                                                        jmp   .Lx43_46
.Lx43_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx43_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx43_53
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
                                                                                        jmp   .Lx43_51
.Lx43_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_47
                        cmp              eax, 99
                                                                                        je    .Lx43_47
                        cmp              eax, 13
                                                                                        jne   .Lx43_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx43_47
                                                                                        jmp   .Lx43_48
.Lx43_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx43_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx43_53
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
                                                                                        jmp   .Lx43_51
.Lx43_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx43_49
                        cmp              edx, 14
                                                                                        je    .Lx43_53
                                                                                        jmp   .Lx43_52
.Lx43_49:
                        cmp              edx, 14
                                                                                        je    .Lx43_52
                        cmp              ecx, 7
                                                                                        je    .Lx43_53
                        cmp              edx, 7
                                                                                        je    .Lx43_53
                        cmp              ecx, 6
                                                                                        jne   .Lx43_50
                        cmp              edx, 6
                                                                                        jne   .Lx43_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx43_51
                                                                                        jmp   .Lx43_52
.Lx43_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx43_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx43_53
.Lx43_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx43_54
.Lx43_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx43_54
.Lx43_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx43_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n34_op11_α
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n35_var_ref_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "version"
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
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
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   proc_prolog_version$2F1_ω
n34_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n36_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx49_21
.Lx49_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx49_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx49_23
.Lx49_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx49_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx49_1
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx49_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx49_2
.Lx49_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx49_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx49_2
.Lx49_1:
                        call             rt_faildescr@PLT
.Lx49_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n34_op11_α
                                                                                        jmp   n37_suspend_α
n36_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n37_suspend_α:
                        lea              rax, [rip + n37_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prolog_version$2F1_γ
n37_suspend_β:
                                                                                        jmp   n36_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_prolog_version$2F1_res]
                        push             rax
                        mov              rax, [rbp + 328]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse$2F2_α
proc_reverse$2F2_α:
                        .global          proc_reverse$2F2_α
                        .global          proc_reverse$2F2_β
                        .global          proc_reverse$2F2_γ
                        .global          proc_reverse$2F2_ω
                        sub              rsp, 1088
                        mov              [rsp + 1064], rcx
                        mov              [rsp + 1072], rdx
                        mov              [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1056
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse$2F2_α_body:
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rbp + 992], rax
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx85_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx85_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx85_101
.Lx85_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx85_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n53_var_ref_α
n52_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n55_lit_string_α
.Lx88_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n56_op11_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
.Lx90_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx90_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_111
                        cmp              esi, 1
                                                                                        jne   .Lx90_112
                        mov              r8, rax
                                                                                        jmp   .Lx90_110
.Lx90_112:
                        cmp              esi, 2
                                                                                        jne   .Lx90_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx90_111
                        mov              r8, rax
                                                                                        jmp   .Lx90_110
.Lx90_113:
                        cmp              eax, 13
                                                                                        jne   .Lx90_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_111
                        cmp              rax, r8
                                                                                        je    .Lx90_111
                        mov              r8, rax
                                                                                        jmp   .Lx90_110
.Lx90_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_114
                        cmp              eax, 99
                                                                                        je    .Lx90_114
                        cmp              eax, 13
                                                                                        jne   .Lx90_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx90_114
                                                                                        jmp   .Lx90_118
.Lx90_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx90_115
                        cmp              eax, 6
                                                                                        je    .Lx90_114
                        cmp              eax, 1
                                                                                        jne   .Lx90_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx90_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx90_114
                                                                                        jmp   .Lx90_116
.Lx90_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx90_117
.Lx90_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx90_117
.Lx90_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx90_117:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n58_var_ref_α
                                                                                        jmp   n57_var_ref_α
n56_op11_β:
                                                                                        jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n60_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n61_op11_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n62_lit_integer_α
.Lx96_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              rsi, qword ptr [rip + .Lx97_2]
                                                                                        jmp   .Lx97_3
.Lx97_2:
                        .quad            .Lx97_2_s
.Lx97_2_s:
                        .string          "[]"
.Lx97_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n63_var_ref_α
n61_op11_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n65_op11_α
.Lx98_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n58_var_ref_α
n64_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx102_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx102_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_111
                        cmp              esi, 1
                                                                                        jne   .Lx102_112
                        mov              r8, rax
                                                                                        jmp   .Lx102_110
.Lx102_112:
                        cmp              esi, 2
                                                                                        jne   .Lx102_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx102_111
                        mov              r8, rax
                                                                                        jmp   .Lx102_110
.Lx102_113:
                        cmp              eax, 13
                                                                                        jne   .Lx102_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_111
                        cmp              rax, r8
                                                                                        je    .Lx102_111
                        mov              r8, rax
                                                                                        jmp   .Lx102_110
.Lx102_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_114
                        cmp              eax, 99
                                                                                        je    .Lx102_114
                        cmp              eax, 13
                                                                                        jne   .Lx102_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx102_114
                                                                                        jmp   .Lx102_118
.Lx102_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx102_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx102_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx102_115
                                                                                        jmp   .Lx102_114
.Lx102_119:
                        cmp              eax, 6
                                                                                        jne   .Lx102_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx102_114
                                                                                        jmp   .Lx102_115
.Lx102_120:
                        cmp              eax, 1
                                                                                        jne   .Lx102_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx102_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx102_114
                                                                                        jmp   .Lx102_115
.Lx102_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx102_117
.Lx102_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx102_117
.Lx102_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx102_117:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n67_var_ref_α
n65_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n69_op11_α
.Lx103_0:
                        .quad            .Lx103_0_s
.Lx103_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
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
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   proc_reverse$2F2_ω
n68_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              rsi, qword ptr [rip + .Lx107_2]
                                                                                        jmp   .Lx107_3
.Lx107_2:
                        .quad            .Lx107_2_s
.Lx107_2_s:
                        .string          "[]"
.Lx107_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n64_op11_α
                                                                                        jmp   n71_suspend_α
n69_op11_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n71_suspend_β:
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx114_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_61
                        cmp              esi, 1
                                                                                        jne   .Lx114_62
                        mov              r8, rax
                                                                                        jmp   .Lx114_60
.Lx114_62:
                        cmp              esi, 2
                                                                                        jne   .Lx114_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_61
                        mov              r8, rax
                                                                                        jmp   .Lx114_60
.Lx114_63:
                        cmp              eax, 13
                                                                                        jne   .Lx114_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_61
                        cmp              rax, r8
                                                                                        je    .Lx114_61
                        mov              r8, rax
                                                                                        jmp   .Lx114_60
.Lx114_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_80
                        cmp              eax, 99
                                                                                        je    .Lx114_80
                        cmp              eax, 13
                                                                                        jne   .Lx114_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx114_80
                                                                                        jmp   .Lx114_74
.Lx114_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx114_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx114_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx114_73
                        lea              r9, [rbp + 496]
.Lx114_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_65
                        cmp              esi, 1
                                                                                        jne   .Lx114_66
                        mov              r9, rax
                                                                                        jmp   .Lx114_64
.Lx114_66:
                        cmp              esi, 2
                                                                                        jne   .Lx114_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_65
                        mov              r9, rax
                                                                                        jmp   .Lx114_64
.Lx114_67:
                        cmp              eax, 13
                                                                                        jne   .Lx114_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_65
                        cmp              rax, r9
                                                                                        je    .Lx114_65
                        mov              r9, rax
                                                                                        jmp   .Lx114_64
.Lx114_65:
                        lea              rcx, [rbp + 512]
.Lx114_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx114_69
                        cmp              esi, 1
                                                                                        jne   .Lx114_70
                        mov              rcx, rax
                                                                                        jmp   .Lx114_68
.Lx114_70:
                        cmp              esi, 2
                                                                                        jne   .Lx114_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_69
                        mov              rcx, rax
                                                                                        jmp   .Lx114_68
.Lx114_71:
                        cmp              eax, 13
                                                                                        jne   .Lx114_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx114_69
                        cmp              rax, rcx
                                                                                        je    .Lx114_69
                        mov              rcx, rax
                                                                                        jmp   .Lx114_68
.Lx114_69:
                        cmp              r9, rcx
                                                                                        je    .Lx114_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_75
                        cmp              eax, 99
                                                                                        je    .Lx114_75
                        cmp              eax, 13
                                                                                        jne   .Lx114_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx114_75
                                                                                        jmp   .Lx114_72
.Lx114_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_76
                        cmp              eax, 99
                                                                                        je    .Lx114_76
                        cmp              eax, 13
                                                                                        jne   .Lx114_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx114_76
                                                                                        jmp   .Lx114_72
.Lx114_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx114_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx114_72
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
                                                                                        jmp   .Lx114_77
.Lx114_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx114_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx114_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx114_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx114_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx114_72
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
                        lea              r9, [rbp + 496]
.Lx114_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_82
                        cmp              esi, 1
                                                                                        jne   .Lx114_83
                        mov              r9, rax
                                                                                        jmp   .Lx114_81
.Lx114_83:
                        cmp              esi, 2
                                                                                        jne   .Lx114_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_82
                        mov              r9, rax
                                                                                        jmp   .Lx114_81
.Lx114_84:
                        cmp              eax, 13
                                                                                        jne   .Lx114_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_82
                        cmp              rax, r9
                                                                                        je    .Lx114_82
                        mov              r9, rax
                                                                                        jmp   .Lx114_81
.Lx114_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_85
                        cmp              eax, 99
                                                                                        je    .Lx114_85
                        cmp              eax, 13
                                                                                        jne   .Lx114_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx114_85
                                                                                        jmp   .Lx114_86
.Lx114_85:
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
                                                                                        jmp   .Lx114_87
.Lx114_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx114_87:
                        lea              rcx, [rbp + 512]
.Lx114_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx114_89
                        cmp              esi, 1
                                                                                        jne   .Lx114_90
                        mov              rcx, rax
                                                                                        jmp   .Lx114_88
.Lx114_90:
                        cmp              esi, 2
                                                                                        jne   .Lx114_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_89
                        mov              rcx, rax
                                                                                        jmp   .Lx114_88
.Lx114_91:
                        cmp              eax, 13
                                                                                        jne   .Lx114_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx114_89
                        cmp              rax, rcx
                                                                                        je    .Lx114_89
                        mov              rcx, rax
                                                                                        jmp   .Lx114_88
.Lx114_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_92
                        cmp              eax, 99
                                                                                        je    .Lx114_92
                        cmp              eax, 13
                                                                                        jne   .Lx114_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx114_92
                                                                                        jmp   .Lx114_93
.Lx114_92:
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
                                                                                        jmp   .Lx114_94
.Lx114_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx114_94:
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
                                                                                        jmp   .Lx114_77
.Lx114_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx114_77
.Lx114_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx114_77:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
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
                                                                                        je    n68_op11_α
                                                                                        jmp   n77_var_ref_α
n76_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1008]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1024]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n79_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n80_var_ref_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1040]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n82_op11_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n83_call_proc_staged_α
n82_op11_β:
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx130_21
.Lx130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx130_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx130_23
.Lx130_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx130_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_24
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx130_25
.Lx130_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx130_25:
                        mov              edi, 8
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx130_1
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx130_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx130_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_1:
                        call             rt_faildescr@PLT
.Lx130_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n68_op11_α
                                                                                        jmp   n84_suspend_α
n83_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "reverse1/3"
#-----------------------------------------------------------------------------------------------------------------------
n84_suspend_α:
                        lea              rax, [rip + n84_suspend_β]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n84_suspend_β:
                                                                                        jmp   n83_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 992]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1064]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_ω:
                        mov              rax, [rbp + 1072]
                        lea              rsp, [rbp + 1088]
                        mov              rbp, [rbp + 1080]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go_other$2F0_α
proc_go_other$2F0_α:
                        .global          proc_go_other$2F0_α
                        .global          proc_go_other$2F0_β
                        .global          proc_go_other$2F0_γ
                        .global          proc_go_other$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_go_other$2F0_α_body:
                        lea              rax, [rip + n139_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
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
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx140_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   n134_var_ref_α
n133_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n135_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx144_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx144_21
.Lx144_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx144_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx144_1
                        lea              rcx, [rip + .Lx144_3]
                        lea              rdx, [rip + .Lx144_4]
                                                                                        jmp   rax
.Lx144_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx144_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx144_2
.Lx144_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx144_2
.Lx144_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx144_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx144_2
.Lx144_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx144_2
.Lx144_1:
                        call             rt_faildescr@PLT
.Lx144_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n137_op11_α
                                                                                        jmp   n136_var_ref_α
n135_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n138_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
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
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   proc_go_other$2F0_ω
n137_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx149_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx149_21
.Lx149_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx149_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx149_1
                        lea              rcx, [rip + .Lx149_3]
                        lea              rdx, [rip + .Lx149_4]
                                                                                        jmp   rax
.Lx149_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx149_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx149_2
.Lx149_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx149_2
.Lx149_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx149_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx149_2
.Lx149_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx149_2
.Lx149_1:
                        call             rt_faildescr@PLT
.Lx149_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n135_call_proc_staged_β
                                                                                        jmp   n139_suspend_α
n138_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
n139_suspend_α:
                        lea              rax, [rip + n139_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other$2F0_γ
n139_suspend_β:
                                                                                        jmp   n138_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go_other$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_append$2F3_α
proc_append$2F3_α:
                        .global          proc_append$2F3_α
                        .global          proc_append$2F3_β
                        .global          proc_append$2F3_γ
                        .global          proc_append$2F3_ω
                        sub              rsp, 1200
                        mov              [rsp + 1176], rcx
                        mov              [rsp + 1184], rdx
                        mov              [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1168
                        call             rt_jmp_frame_lexprep2@PLT
proc_append$2F3_α_body:
                        lea              rax, [rip + n177_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx189_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx189_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx189_101
.Lx189_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx189_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n153_var_ref_α
n152_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n153_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n154_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n155_lit_string_α
.Lx192_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n156_op11_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n156_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx194_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx194_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx194_111
                        cmp              esi, 1
                                                                                        jne   .Lx194_112
                        mov              r8, rax
                                                                                        jmp   .Lx194_110
.Lx194_112:
                        cmp              esi, 2
                                                                                        jne   .Lx194_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx194_111
                        mov              r8, rax
                                                                                        jmp   .Lx194_110
.Lx194_113:
                        cmp              eax, 13
                                                                                        jne   .Lx194_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx194_111
                        cmp              rax, r8
                                                                                        je    .Lx194_111
                        mov              r8, rax
                                                                                        jmp   .Lx194_110
.Lx194_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx194_114
                        cmp              eax, 99
                                                                                        je    .Lx194_114
                        cmp              eax, 13
                                                                                        jne   .Lx194_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx194_114
                                                                                        jmp   .Lx194_118
.Lx194_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx194_115
                        cmp              eax, 6
                                                                                        je    .Lx194_114
                        cmp              eax, 1
                                                                                        jne   .Lx194_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx194_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx194_114
                                                                                        jmp   .Lx194_116
.Lx194_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx194_117
.Lx194_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx194_117
.Lx194_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx194_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n158_var_ref_α
                                                                                        jmp   n157_var_ref_α
n156_op11_β:
                                                                                        jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n161_op11_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n162_lit_integer_α
.Lx200_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx201_2]
                                                                                        jmp   .Lx201_3
.Lx201_2:
                        .quad            .Lx201_2_s
.Lx201_2_s:
                        .string          "[]"
.Lx201_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n163_var_ref_α
n161_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n165_op11_α
.Lx202_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n158_var_ref_α
n164_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx206_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx206_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx206_111
                        cmp              esi, 1
                                                                                        jne   .Lx206_112
                        mov              r8, rax
                                                                                        jmp   .Lx206_110
.Lx206_112:
                        cmp              esi, 2
                                                                                        jne   .Lx206_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx206_111
                        mov              r8, rax
                                                                                        jmp   .Lx206_110
.Lx206_113:
                        cmp              eax, 13
                                                                                        jne   .Lx206_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx206_111
                        cmp              rax, r8
                                                                                        je    .Lx206_111
                        mov              r8, rax
                                                                                        jmp   .Lx206_110
.Lx206_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx206_114
                        cmp              eax, 99
                                                                                        je    .Lx206_114
                        cmp              eax, 13
                                                                                        jne   .Lx206_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx206_114
                                                                                        jmp   .Lx206_118
.Lx206_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx206_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx206_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx206_115
                                                                                        jmp   .Lx206_114
.Lx206_119:
                        cmp              eax, 6
                                                                                        jne   .Lx206_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx206_114
                                                                                        jmp   .Lx206_115
.Lx206_120:
                        cmp              eax, 1
                                                                                        jne   .Lx206_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx206_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx206_114
                                                                                        jmp   .Lx206_115
.Lx206_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx206_117
.Lx206_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx206_117
.Lx206_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx206_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n168_op11_α
                                                                                        jmp   n167_var_ref_α
n165_op11_β:
                                                                                        jmp   n168_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n169_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
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
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   proc_append$2F3_ω
n168_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n169_op11_α:
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
                        lea              r9, [rbp + 848]
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
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n171_var_ref_α
n169_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n172_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n174_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n175_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
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
.Lx221_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx221_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx221_61
                        cmp              esi, 1
                                                                                        jne   .Lx221_62
                        mov              r8, rax
                                                                                        jmp   .Lx221_60
.Lx221_62:
                        cmp              esi, 2
                                                                                        jne   .Lx221_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx221_61
                        mov              r8, rax
                                                                                        jmp   .Lx221_60
.Lx221_63:
                        cmp              eax, 13
                                                                                        jne   .Lx221_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx221_61
                        cmp              rax, r8
                                                                                        je    .Lx221_61
                        mov              r8, rax
                                                                                        jmp   .Lx221_60
.Lx221_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx221_80
                        cmp              eax, 99
                                                                                        je    .Lx221_80
                        cmp              eax, 13
                                                                                        jne   .Lx221_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx221_80
                                                                                        jmp   .Lx221_74
.Lx221_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx221_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx221_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx221_73
                        lea              r9, [rbp + 512]
.Lx221_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx221_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx221_65
                        cmp              esi, 1
                                                                                        jne   .Lx221_66
                        mov              r9, rax
                                                                                        jmp   .Lx221_64
.Lx221_66:
                        cmp              esi, 2
                                                                                        jne   .Lx221_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx221_65
                        mov              r9, rax
                                                                                        jmp   .Lx221_64
.Lx221_67:
                        cmp              eax, 13
                                                                                        jne   .Lx221_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx221_65
                        cmp              rax, r9
                                                                                        je    .Lx221_65
                        mov              r9, rax
                                                                                        jmp   .Lx221_64
.Lx221_65:
                        lea              rcx, [rbp + 528]
.Lx221_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx221_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx221_69
                        cmp              esi, 1
                                                                                        jne   .Lx221_70
                        mov              rcx, rax
                                                                                        jmp   .Lx221_68
.Lx221_70:
                        cmp              esi, 2
                                                                                        jne   .Lx221_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx221_69
                        mov              rcx, rax
                                                                                        jmp   .Lx221_68
.Lx221_71:
                        cmp              eax, 13
                                                                                        jne   .Lx221_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx221_69
                        cmp              rax, rcx
                                                                                        je    .Lx221_69
                        mov              rcx, rax
                                                                                        jmp   .Lx221_68
.Lx221_69:
                        cmp              r9, rcx
                                                                                        je    .Lx221_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx221_75
                        cmp              eax, 99
                                                                                        je    .Lx221_75
                        cmp              eax, 13
                                                                                        jne   .Lx221_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx221_75
                                                                                        jmp   .Lx221_72
.Lx221_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx221_76
                        cmp              eax, 99
                                                                                        je    .Lx221_76
                        cmp              eax, 13
                                                                                        jne   .Lx221_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx221_76
                                                                                        jmp   .Lx221_72
.Lx221_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx221_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx221_72
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
                                                                                        jmp   .Lx221_77
.Lx221_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx221_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx221_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx221_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx221_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx221_72
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
.Lx221_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx221_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx221_82
                        cmp              esi, 1
                                                                                        jne   .Lx221_83
                        mov              r9, rax
                                                                                        jmp   .Lx221_81
.Lx221_83:
                        cmp              esi, 2
                                                                                        jne   .Lx221_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx221_82
                        mov              r9, rax
                                                                                        jmp   .Lx221_81
.Lx221_84:
                        cmp              eax, 13
                                                                                        jne   .Lx221_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx221_82
                        cmp              rax, r9
                                                                                        je    .Lx221_82
                        mov              r9, rax
                                                                                        jmp   .Lx221_81
.Lx221_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx221_85
                        cmp              eax, 99
                                                                                        je    .Lx221_85
                        cmp              eax, 13
                                                                                        jne   .Lx221_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx221_85
                                                                                        jmp   .Lx221_86
.Lx221_85:
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
                                                                                        jmp   .Lx221_87
.Lx221_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx221_87:
                        lea              rcx, [rbp + 528]
.Lx221_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx221_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx221_89
                        cmp              esi, 1
                                                                                        jne   .Lx221_90
                        mov              rcx, rax
                                                                                        jmp   .Lx221_88
.Lx221_90:
                        cmp              esi, 2
                                                                                        jne   .Lx221_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx221_89
                        mov              rcx, rax
                                                                                        jmp   .Lx221_88
.Lx221_91:
                        cmp              eax, 13
                                                                                        jne   .Lx221_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx221_89
                        cmp              rax, rcx
                                                                                        je    .Lx221_89
                        mov              rcx, rax
                                                                                        jmp   .Lx221_88
.Lx221_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx221_92
                        cmp              eax, 99
                                                                                        je    .Lx221_92
                        cmp              eax, 13
                                                                                        jne   .Lx221_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx221_92
                                                                                        jmp   .Lx221_93
.Lx221_92:
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
                                                                                        jmp   .Lx221_94
.Lx221_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx221_94:
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
                                                                                        jmp   .Lx221_77
.Lx221_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx221_77
.Lx221_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx221_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n168_op11_α
                                                                                        jmp   n176_var_ref_α
n174_op11_β:
                                                                                        jmp   n168_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
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
                        lea              r9, [rbp + 768]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n177_suspend_α
n175_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n178_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n177_suspend_α:
                        lea              rax, [rip + n177_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n177_suspend_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n179_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n179_op11_α:
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
.Lx229_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx229_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        cmp              esi, 1
                                                                                        jne   .Lx229_55
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_55:
                        cmp              esi, 2
                                                                                        jne   .Lx229_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_56:
                        cmp              eax, 13
                                                                                        jne   .Lx229_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        cmp              rax, r8
                                                                                        je    .Lx229_41
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_41:
                        lea              r9, [rbp + 416]
.Lx229_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx229_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        cmp              esi, 1
                                                                                        jne   .Lx229_57
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_57:
                        cmp              esi, 2
                                                                                        jne   .Lx229_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_58:
                        cmp              eax, 13
                                                                                        jne   .Lx229_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        cmp              rax, r9
                                                                                        je    .Lx229_43
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_43:
                        cmp              r8, r9
                                                                                        je    .Lx229_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_44
                        cmp              eax, 99
                                                                                        je    .Lx229_44
                        cmp              eax, 13
                                                                                        jne   .Lx229_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx229_44
                                                                                        jmp   .Lx229_45
.Lx229_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_53
                        cmp              eax, 99
                                                                                        je    .Lx229_53
                        cmp              eax, 13
                                                                                        jne   .Lx229_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx229_53
                                                                                        jmp   .Lx229_46
.Lx229_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx229_53
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
                                                                                        jmp   .Lx229_51
.Lx229_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_47
                        cmp              eax, 99
                                                                                        je    .Lx229_47
                        cmp              eax, 13
                                                                                        jne   .Lx229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx229_47
                                                                                        jmp   .Lx229_48
.Lx229_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx229_53
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
                                                                                        jmp   .Lx229_51
.Lx229_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx229_49
                        cmp              edx, 14
                                                                                        je    .Lx229_53
                                                                                        jmp   .Lx229_52
.Lx229_49:
                        cmp              edx, 14
                                                                                        je    .Lx229_52
                        cmp              ecx, 7
                                                                                        je    .Lx229_53
                        cmp              edx, 7
                                                                                        je    .Lx229_53
                        cmp              ecx, 6
                                                                                        jne   .Lx229_50
                        cmp              edx, 6
                                                                                        jne   .Lx229_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx229_51
                                                                                        jmp   .Lx229_52
.Lx229_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx229_53
.Lx229_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx229_54
.Lx229_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx229_54
.Lx229_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx229_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n168_op11_α
                                                                                        jmp   n180_var_ref_α
n179_op11_β:
                                                                                        jmp   n168_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n181_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n183_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx236_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx236_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx236_61
                        cmp              esi, 1
                                                                                        jne   .Lx236_62
                        mov              r8, rax
                                                                                        jmp   .Lx236_60
.Lx236_62:
                        cmp              esi, 2
                                                                                        jne   .Lx236_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx236_61
                        mov              r8, rax
                                                                                        jmp   .Lx236_60
.Lx236_63:
                        cmp              eax, 13
                                                                                        jne   .Lx236_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx236_61
                        cmp              rax, r8
                                                                                        je    .Lx236_61
                        mov              r8, rax
                                                                                        jmp   .Lx236_60
.Lx236_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx236_80
                        cmp              eax, 99
                                                                                        je    .Lx236_80
                        cmp              eax, 13
                                                                                        jne   .Lx236_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx236_80
                                                                                        jmp   .Lx236_74
.Lx236_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx236_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx236_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx236_73
                        lea              r9, [rbp + 320]
.Lx236_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx236_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx236_65
                        cmp              esi, 1
                                                                                        jne   .Lx236_66
                        mov              r9, rax
                                                                                        jmp   .Lx236_64
.Lx236_66:
                        cmp              esi, 2
                                                                                        jne   .Lx236_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx236_65
                        mov              r9, rax
                                                                                        jmp   .Lx236_64
.Lx236_67:
                        cmp              eax, 13
                                                                                        jne   .Lx236_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx236_65
                        cmp              rax, r9
                                                                                        je    .Lx236_65
                        mov              r9, rax
                                                                                        jmp   .Lx236_64
.Lx236_65:
                        lea              rcx, [rbp + 336]
.Lx236_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx236_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx236_69
                        cmp              esi, 1
                                                                                        jne   .Lx236_70
                        mov              rcx, rax
                                                                                        jmp   .Lx236_68
.Lx236_70:
                        cmp              esi, 2
                                                                                        jne   .Lx236_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx236_69
                        mov              rcx, rax
                                                                                        jmp   .Lx236_68
.Lx236_71:
                        cmp              eax, 13
                                                                                        jne   .Lx236_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx236_69
                        cmp              rax, rcx
                                                                                        je    .Lx236_69
                        mov              rcx, rax
                                                                                        jmp   .Lx236_68
.Lx236_69:
                        cmp              r9, rcx
                                                                                        je    .Lx236_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx236_75
                        cmp              eax, 99
                                                                                        je    .Lx236_75
                        cmp              eax, 13
                                                                                        jne   .Lx236_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx236_75
                                                                                        jmp   .Lx236_72
.Lx236_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx236_76
                        cmp              eax, 99
                                                                                        je    .Lx236_76
                        cmp              eax, 13
                                                                                        jne   .Lx236_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx236_76
                                                                                        jmp   .Lx236_72
.Lx236_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx236_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx236_72
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
                                                                                        jmp   .Lx236_77
.Lx236_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx236_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx236_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx236_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx236_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx236_72
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
                        lea              r9, [rbp + 320]
.Lx236_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx236_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx236_82
                        cmp              esi, 1
                                                                                        jne   .Lx236_83
                        mov              r9, rax
                                                                                        jmp   .Lx236_81
.Lx236_83:
                        cmp              esi, 2
                                                                                        jne   .Lx236_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx236_82
                        mov              r9, rax
                                                                                        jmp   .Lx236_81
.Lx236_84:
                        cmp              eax, 13
                                                                                        jne   .Lx236_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx236_82
                        cmp              rax, r9
                                                                                        je    .Lx236_82
                        mov              r9, rax
                                                                                        jmp   .Lx236_81
.Lx236_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx236_85
                        cmp              eax, 99
                                                                                        je    .Lx236_85
                        cmp              eax, 13
                                                                                        jne   .Lx236_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx236_85
                                                                                        jmp   .Lx236_86
.Lx236_85:
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
                                                                                        jmp   .Lx236_87
.Lx236_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx236_87:
                        lea              rcx, [rbp + 336]
.Lx236_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx236_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx236_89
                        cmp              esi, 1
                                                                                        jne   .Lx236_90
                        mov              rcx, rax
                                                                                        jmp   .Lx236_88
.Lx236_90:
                        cmp              esi, 2
                                                                                        jne   .Lx236_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx236_89
                        mov              rcx, rax
                                                                                        jmp   .Lx236_88
.Lx236_91:
                        cmp              eax, 13
                                                                                        jne   .Lx236_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx236_89
                        cmp              rax, rcx
                                                                                        je    .Lx236_89
                        mov              rcx, rax
                                                                                        jmp   .Lx236_88
.Lx236_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx236_92
                        cmp              eax, 99
                                                                                        je    .Lx236_92
                        cmp              eax, 13
                                                                                        jne   .Lx236_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx236_92
                                                                                        jmp   .Lx236_93
.Lx236_92:
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
                                                                                        jmp   .Lx236_94
.Lx236_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx236_94:
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
                                                                                        jmp   .Lx236_77
.Lx236_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx236_77
.Lx236_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx236_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n168_op11_α
                                                                                        jmp   n184_var_ref_α
n183_op11_β:
                                                                                        jmp   n168_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n185_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n187_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx244_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx244_21
.Lx244_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx244_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx244_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx244_23
.Lx244_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx244_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx244_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx244_25
.Lx244_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx244_25:
                        mov              edi, 5
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx244_1
                        lea              rcx, [rip + .Lx244_3]
                        lea              rdx, [rip + .Lx244_4]
                                                                                        jmp   rax
.Lx244_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx244_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx244_2
.Lx244_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx244_2
.Lx244_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx244_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx244_2
.Lx244_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx244_2
.Lx244_1:
                        call             rt_faildescr@PLT
.Lx244_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n168_op11_α
                                                                                        jmp   n188_suspend_α
n187_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n188_suspend_α:
                        lea              rax, [rip + n188_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n188_suspend_β:
                                                                                        jmp   n187_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_append$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1176]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_append$2F3_ω:
                        mov              rax, [rbp + 1184]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, [rbp + 1192]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F2_α
proc_$disj0$2F2_α:
                        .global          proc_$disj0$2F2_α
                        .global          proc_$disj0$2F2_β
                        .global          proc_$disj0$2F2_γ
                        .global          proc_$disj0$2F2_ω
                        sub              rsp, 736
                        mov              [rsp + 712], rcx
                        mov              [rsp + 720], rdx
                        mov              [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 704
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F2_α_body:
                        lea              rax, [rip + n264_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n247_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx270_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx270_101
.Lx270_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx270_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n248_var_ref_α
n247_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n250_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
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
.Lx275_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx275_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx275_41
                        cmp              esi, 1
                                                                                        jne   .Lx275_55
                        mov              r8, rax
                                                                                        jmp   .Lx275_40
.Lx275_55:
                        cmp              esi, 2
                                                                                        jne   .Lx275_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx275_41
                        mov              r8, rax
                                                                                        jmp   .Lx275_40
.Lx275_56:
                        cmp              eax, 13
                                                                                        jne   .Lx275_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx275_41
                        cmp              rax, r8
                                                                                        je    .Lx275_41
                        mov              r8, rax
                                                                                        jmp   .Lx275_40
.Lx275_41:
                        lea              r9, [rbp + 608]
.Lx275_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx275_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx275_43
                        cmp              esi, 1
                                                                                        jne   .Lx275_57
                        mov              r9, rax
                                                                                        jmp   .Lx275_42
.Lx275_57:
                        cmp              esi, 2
                                                                                        jne   .Lx275_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx275_43
                        mov              r9, rax
                                                                                        jmp   .Lx275_42
.Lx275_58:
                        cmp              eax, 13
                                                                                        jne   .Lx275_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx275_43
                        cmp              rax, r9
                                                                                        je    .Lx275_43
                        mov              r9, rax
                                                                                        jmp   .Lx275_42
.Lx275_43:
                        cmp              r8, r9
                                                                                        je    .Lx275_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx275_44
                        cmp              eax, 99
                                                                                        je    .Lx275_44
                        cmp              eax, 13
                                                                                        jne   .Lx275_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx275_44
                                                                                        jmp   .Lx275_45
.Lx275_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx275_53
                        cmp              eax, 99
                                                                                        je    .Lx275_53
                        cmp              eax, 13
                                                                                        jne   .Lx275_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx275_53
                                                                                        jmp   .Lx275_46
.Lx275_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx275_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx275_53
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
                                                                                        jmp   .Lx275_51
.Lx275_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx275_47
                        cmp              eax, 99
                                                                                        je    .Lx275_47
                        cmp              eax, 13
                                                                                        jne   .Lx275_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx275_47
                                                                                        jmp   .Lx275_48
.Lx275_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx275_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx275_53
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
                                                                                        jmp   .Lx275_51
.Lx275_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx275_49
                        cmp              edx, 14
                                                                                        je    .Lx275_53
                                                                                        jmp   .Lx275_52
.Lx275_49:
                        cmp              edx, 14
                                                                                        je    .Lx275_52
                        cmp              ecx, 7
                                                                                        je    .Lx275_53
                        cmp              edx, 7
                                                                                        je    .Lx275_53
                        cmp              ecx, 6
                                                                                        jne   .Lx275_50
                        cmp              edx, 6
                                                                                        jne   .Lx275_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx275_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx275_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx275_51
                                                                                        jmp   .Lx275_52
.Lx275_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx275_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx275_53
.Lx275_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx275_54
.Lx275_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx275_54
.Lx275_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx275_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n252_op11_α
                                                                                        jmp   n251_var_ref_α
n250_op11_β:
                                                                                        jmp   n252_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n254_var_ref_α
n252_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n255_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx283_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx283_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        cmp              esi, 1
                                                                                        jne   .Lx283_55
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_55:
                        cmp              esi, 2
                                                                                        jne   .Lx283_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_56:
                        cmp              eax, 13
                                                                                        jne   .Lx283_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_41
                        cmp              rax, r8
                                                                                        je    .Lx283_41
                        mov              r8, rax
                                                                                        jmp   .Lx283_40
.Lx283_41:
                        lea              r9, [rbp + 528]
.Lx283_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx283_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        cmp              esi, 1
                                                                                        jne   .Lx283_57
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_57:
                        cmp              esi, 2
                                                                                        jne   .Lx283_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_58:
                        cmp              eax, 13
                                                                                        jne   .Lx283_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx283_43
                        cmp              rax, r9
                                                                                        je    .Lx283_43
                        mov              r9, rax
                                                                                        jmp   .Lx283_42
.Lx283_43:
                        cmp              r8, r9
                                                                                        je    .Lx283_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_44
                        cmp              eax, 99
                                                                                        je    .Lx283_44
                        cmp              eax, 13
                                                                                        jne   .Lx283_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx283_44
                                                                                        jmp   .Lx283_45
.Lx283_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_53
                        cmp              eax, 99
                                                                                        je    .Lx283_53
                        cmp              eax, 13
                                                                                        jne   .Lx283_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx283_53
                                                                                        jmp   .Lx283_46
.Lx283_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx283_53
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
                                                                                        jmp   .Lx283_51
.Lx283_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx283_47
                        cmp              eax, 99
                                                                                        je    .Lx283_47
                        cmp              eax, 13
                                                                                        jne   .Lx283_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx283_47
                                                                                        jmp   .Lx283_48
.Lx283_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx283_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx283_53
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
                                                                                        jmp   .Lx283_51
.Lx283_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx283_49
                        cmp              edx, 14
                                                                                        je    .Lx283_53
                                                                                        jmp   .Lx283_52
.Lx283_49:
                        cmp              edx, 14
                                                                                        je    .Lx283_52
                        cmp              ecx, 7
                                                                                        je    .Lx283_53
                        cmp              edx, 7
                                                                                        je    .Lx283_53
                        cmp              ecx, 6
                                                                                        jne   .Lx283_50
                        cmp              edx, 6
                                                                                        jne   .Lx283_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx283_51
                                                                                        jmp   .Lx283_52
.Lx283_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx283_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx283_53
.Lx283_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx283_54
.Lx283_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx283_54
.Lx283_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx283_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n252_op11_α
                                                                                        jmp   n257_var_ref_α
n255_op11_β:
                                                                                        jmp   n252_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n258_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n259_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n258_op11_α:
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
                        lea              r9, [rbp + 320]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n261_op11_α
                                                                                        jmp   n260_var_ref_α
n258_op11_β:
                                                                                        jmp   n261_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n262_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n263_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
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
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   proc_$disj0$2F2_ω
n261_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n262_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx295_21
.Lx295_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx295_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx295_23
.Lx295_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx295_23:
                        mov              rdi, qword ptr [rip + .Lx295_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx295_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx295_3]
                        lea              rdx, [rip + .Lx295_4]
                                                                                        jmp   rax
.Lx295_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx295_2
.Lx295_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx295_2
.Lx295_1:
                        call             rt_faildescr@PLT
.Lx295_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n252_op11_α
                                                                                        jmp   n264_suspend_α
n262_call_proc_staged_β:
                                                                                        jmp   n252_op11_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "bb_get/2"
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n265_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n264_suspend_α:
                        lea              rax, [rip + n264_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n264_suspend_β:
                                                                                        jmp   n262_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n265_op11_α:
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
.Lx300_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx300_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx300_41
                        cmp              esi, 1
                                                                                        jne   .Lx300_55
                        mov              r8, rax
                                                                                        jmp   .Lx300_40
.Lx300_55:
                        cmp              esi, 2
                                                                                        jne   .Lx300_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx300_41
                        mov              r8, rax
                                                                                        jmp   .Lx300_40
.Lx300_56:
                        cmp              eax, 13
                                                                                        jne   .Lx300_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx300_41
                        cmp              rax, r8
                                                                                        je    .Lx300_41
                        mov              r8, rax
                                                                                        jmp   .Lx300_40
.Lx300_41:
                        lea              r9, [rbp + 240]
.Lx300_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx300_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx300_43
                        cmp              esi, 1
                                                                                        jne   .Lx300_57
                        mov              r9, rax
                                                                                        jmp   .Lx300_42
.Lx300_57:
                        cmp              esi, 2
                                                                                        jne   .Lx300_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx300_43
                        mov              r9, rax
                                                                                        jmp   .Lx300_42
.Lx300_58:
                        cmp              eax, 13
                                                                                        jne   .Lx300_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx300_43
                        cmp              rax, r9
                                                                                        je    .Lx300_43
                        mov              r9, rax
                                                                                        jmp   .Lx300_42
.Lx300_43:
                        cmp              r8, r9
                                                                                        je    .Lx300_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx300_44
                        cmp              eax, 99
                                                                                        je    .Lx300_44
                        cmp              eax, 13
                                                                                        jne   .Lx300_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx300_44
                                                                                        jmp   .Lx300_45
.Lx300_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx300_53
                        cmp              eax, 99
                                                                                        je    .Lx300_53
                        cmp              eax, 13
                                                                                        jne   .Lx300_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx300_53
                                                                                        jmp   .Lx300_46
.Lx300_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx300_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx300_53
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
                                                                                        jmp   .Lx300_51
.Lx300_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx300_47
                        cmp              eax, 99
                                                                                        je    .Lx300_47
                        cmp              eax, 13
                                                                                        jne   .Lx300_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx300_47
                                                                                        jmp   .Lx300_48
.Lx300_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx300_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx300_53
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
                                                                                        jmp   .Lx300_51
.Lx300_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx300_49
                        cmp              edx, 14
                                                                                        je    .Lx300_53
                                                                                        jmp   .Lx300_52
.Lx300_49:
                        cmp              edx, 14
                                                                                        je    .Lx300_52
                        cmp              ecx, 7
                                                                                        je    .Lx300_53
                        cmp              edx, 7
                                                                                        je    .Lx300_53
                        cmp              ecx, 6
                                                                                        jne   .Lx300_50
                        cmp              edx, 6
                                                                                        jne   .Lx300_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx300_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx300_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx300_51
                                                                                        jmp   .Lx300_52
.Lx300_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx300_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx300_53
.Lx300_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx300_54
.Lx300_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx300_54
.Lx300_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx300_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n261_op11_α
                                                                                        jmp   n266_var_ref_α
n265_op11_β:
                                                                                        jmp   n261_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n267_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n268_op11_α
.Lx303_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n268_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n261_op11_α
                                                                                        jmp   n269_suspend_α
n268_op11_β:
                                                                                        jmp   n261_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n269_suspend_α:
                        lea              rax, [rip + n269_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n269_suspend_β:
                                                                                        jmp   n261_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F2_res]
                        push             rax
                        mov              rax, [rbp + 712]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_ω:
                        mov              rax, [rbp + 720]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_argument_list$2F1_α
proc_argument_list$2F1_α:
                        .global          proc_argument_list$2F1_α
                        .global          proc_argument_list$2F1_β
                        .global          proc_argument_list$2F1_γ
                        .global          proc_argument_list$2F1_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_argument_list$2F1_α_body:
                        lea              rax, [rip + n315_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx316_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx316_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx316_101
.Lx316_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx316_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   n308_var_ref_α
n307_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n310_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n310_op11_α:
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
.Lx321_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx321_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_41
                        cmp              esi, 1
                                                                                        jne   .Lx321_55
                        mov              r8, rax
                                                                                        jmp   .Lx321_40
.Lx321_55:
                        cmp              esi, 2
                                                                                        jne   .Lx321_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx321_41
                        mov              r8, rax
                                                                                        jmp   .Lx321_40
.Lx321_56:
                        cmp              eax, 13
                                                                                        jne   .Lx321_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_41
                        cmp              rax, r8
                                                                                        je    .Lx321_41
                        mov              r8, rax
                                                                                        jmp   .Lx321_40
.Lx321_41:
                        lea              r9, [rbp + 240]
.Lx321_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx321_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_43
                        cmp              esi, 1
                                                                                        jne   .Lx321_57
                        mov              r9, rax
                                                                                        jmp   .Lx321_42
.Lx321_57:
                        cmp              esi, 2
                                                                                        jne   .Lx321_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx321_43
                        mov              r9, rax
                                                                                        jmp   .Lx321_42
.Lx321_58:
                        cmp              eax, 13
                                                                                        jne   .Lx321_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx321_43
                        cmp              rax, r9
                                                                                        je    .Lx321_43
                        mov              r9, rax
                                                                                        jmp   .Lx321_42
.Lx321_43:
                        cmp              r8, r9
                                                                                        je    .Lx321_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx321_44
                        cmp              eax, 99
                                                                                        je    .Lx321_44
                        cmp              eax, 13
                                                                                        jne   .Lx321_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx321_44
                                                                                        jmp   .Lx321_45
.Lx321_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx321_53
                        cmp              eax, 99
                                                                                        je    .Lx321_53
                        cmp              eax, 13
                                                                                        jne   .Lx321_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx321_53
                                                                                        jmp   .Lx321_46
.Lx321_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx321_53
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
                                                                                        jmp   .Lx321_51
.Lx321_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx321_47
                        cmp              eax, 99
                                                                                        je    .Lx321_47
                        cmp              eax, 13
                                                                                        jne   .Lx321_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx321_47
                                                                                        jmp   .Lx321_48
.Lx321_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx321_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx321_53
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
                                                                                        jmp   .Lx321_51
.Lx321_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx321_49
                        cmp              edx, 14
                                                                                        je    .Lx321_53
                                                                                        jmp   .Lx321_52
.Lx321_49:
                        cmp              edx, 14
                                                                                        je    .Lx321_52
                        cmp              ecx, 7
                                                                                        je    .Lx321_53
                        cmp              edx, 7
                                                                                        je    .Lx321_53
                        cmp              ecx, 6
                                                                                        jne   .Lx321_50
                        cmp              edx, 6
                                                                                        jne   .Lx321_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx321_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx321_51
                                                                                        jmp   .Lx321_52
.Lx321_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx321_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx321_53
.Lx321_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx321_54
.Lx321_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx321_54
.Lx321_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx321_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n312_op11_α
                                                                                        jmp   n311_lit_string_α
n310_op11_β:
                                                                                        jmp   n312_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n313_var_ref_α
.Lx322_0:
                        .quad            .Lx322_0_s
.Lx322_0_s:
                        .string          "argv"
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
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
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   proc_argument_list$2F1_ω
n312_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n314_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n314_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx327_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx327_21
.Lx327_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx327_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx327_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx327_23
.Lx327_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx327_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx327_1
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4]
                                                                                        jmp   rax
.Lx327_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx327_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx327_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_1:
                        call             rt_faildescr@PLT
.Lx327_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n312_op11_α
                                                                                        jmp   n315_suspend_α
n314_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n315_suspend_α:
                        lea              rax, [rip + n315_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_argument_list$2F1_γ
n315_suspend_β:
                                                                                        jmp   n314_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_argument_list$2F1_res]
                        push             rax
                        mov              rax, [rbp + 328]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse1$2F3_α
proc_reverse1$2F3_α:
                        .global          proc_reverse1$2F3_α
                        .global          proc_reverse1$2F3_β
                        .global          proc_reverse1$2F3_γ
                        .global          proc_reverse1$2F3_ω
                        sub              rsp, 1280
                        mov              [rsp + 1256], rcx
                        mov              [rsp + 1264], rdx
                        mov              [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1248
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse1$2F3_α_body:
                        lea              rax, [rip + n355_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n330_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx369_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx369_101
.Lx369_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx369_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse1$2F3_ω
                                                                                        jmp   n331_var_ref_α
n330_op11_β:
                                                                                        jmp   proc_reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n332_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n333_lit_string_α
.Lx372_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx373_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n334_op11_α
.Lx373_0:
                        .quad            .Lx373_0_s
.Lx373_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n334_op11_α:
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
.Lx374_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx374_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_111
                        cmp              esi, 1
                                                                                        jne   .Lx374_112
                        mov              r8, rax
                                                                                        jmp   .Lx374_110
.Lx374_112:
                        cmp              esi, 2
                                                                                        jne   .Lx374_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx374_111
                        mov              r8, rax
                                                                                        jmp   .Lx374_110
.Lx374_113:
                        cmp              eax, 13
                                                                                        jne   .Lx374_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_111
                        cmp              rax, r8
                                                                                        je    .Lx374_111
                        mov              r8, rax
                                                                                        jmp   .Lx374_110
.Lx374_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_114
                        cmp              eax, 99
                                                                                        je    .Lx374_114
                        cmp              eax, 13
                                                                                        jne   .Lx374_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx374_114
                                                                                        jmp   .Lx374_118
.Lx374_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx374_115
                        cmp              eax, 6
                                                                                        je    .Lx374_114
                        cmp              eax, 1
                                                                                        jne   .Lx374_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx374_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx374_114
                                                                                        jmp   .Lx374_116
.Lx374_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx374_117
.Lx374_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx374_117
.Lx374_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx374_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n336_var_ref_α
                                                                                        jmp   n335_var_ref_α
n334_op11_β:
                                                                                        jmp   n336_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n337_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n336_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n338_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n339_op11_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n340_lit_integer_α
.Lx380_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n339_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx381_2]
                                                                                        jmp   .Lx381_3
.Lx381_2:
                        .quad            .Lx381_2_s
.Lx381_2_s:
                        .string          "[]"
.Lx381_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n341_var_ref_α
n339_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n343_op11_α
.Lx382_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_op11_α:
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
                                                                                        je    proc_reverse1$2F3_ω
                                                                                        jmp   n336_var_ref_α
n342_op11_β:
                                                                                        jmp   proc_reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
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
.Lx386_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx386_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_111
                        cmp              esi, 1
                                                                                        jne   .Lx386_112
                        mov              r8, rax
                                                                                        jmp   .Lx386_110
.Lx386_112:
                        cmp              esi, 2
                                                                                        jne   .Lx386_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx386_111
                        mov              r8, rax
                                                                                        jmp   .Lx386_110
.Lx386_113:
                        cmp              eax, 13
                                                                                        jne   .Lx386_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_111
                        cmp              rax, r8
                                                                                        je    .Lx386_111
                        mov              r8, rax
                                                                                        jmp   .Lx386_110
.Lx386_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_114
                        cmp              eax, 99
                                                                                        je    .Lx386_114
                        cmp              eax, 13
                                                                                        jne   .Lx386_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx386_114
                                                                                        jmp   .Lx386_118
.Lx386_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx386_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx386_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx386_115
                                                                                        jmp   .Lx386_114
.Lx386_119:
                        cmp              eax, 6
                                                                                        jne   .Lx386_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx386_114
                                                                                        jmp   .Lx386_115
.Lx386_120:
                        cmp              eax, 1
                                                                                        jne   .Lx386_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx386_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx386_114
                                                                                        jmp   .Lx386_115
.Lx386_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx386_117
.Lx386_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx386_117
.Lx386_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx386_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n345_var_ref_α
n343_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n347_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n348_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n346_op11_α:
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
                                                                                        je    proc_reverse1$2F3_ω
                                                                                        jmp   proc_reverse1$2F3_ω
n346_op11_β:
                                                                                        jmp   proc_reverse1$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n347_op11_α:
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
                        lea              r9, [rbp + 928]
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
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n349_var_ref_α
n347_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n348_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n351_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n352_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n353_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_op11_α:
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
.Lx401_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx401_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_61
                        cmp              esi, 1
                                                                                        jne   .Lx401_62
                        mov              r8, rax
                                                                                        jmp   .Lx401_60
.Lx401_62:
                        cmp              esi, 2
                                                                                        jne   .Lx401_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_61
                        mov              r8, rax
                                                                                        jmp   .Lx401_60
.Lx401_63:
                        cmp              eax, 13
                                                                                        jne   .Lx401_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_61
                        cmp              rax, r8
                                                                                        je    .Lx401_61
                        mov              r8, rax
                                                                                        jmp   .Lx401_60
.Lx401_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_80
                        cmp              eax, 99
                                                                                        je    .Lx401_80
                        cmp              eax, 13
                                                                                        jne   .Lx401_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx401_80
                                                                                        jmp   .Lx401_74
.Lx401_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx401_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx401_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx401_73
                        lea              r9, [rbp + 592]
.Lx401_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx401_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_65
                        cmp              esi, 1
                                                                                        jne   .Lx401_66
                        mov              r9, rax
                                                                                        jmp   .Lx401_64
.Lx401_66:
                        cmp              esi, 2
                                                                                        jne   .Lx401_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_65
                        mov              r9, rax
                                                                                        jmp   .Lx401_64
.Lx401_67:
                        cmp              eax, 13
                                                                                        jne   .Lx401_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_65
                        cmp              rax, r9
                                                                                        je    .Lx401_65
                        mov              r9, rax
                                                                                        jmp   .Lx401_64
.Lx401_65:
                        lea              rcx, [rbp + 608]
.Lx401_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx401_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx401_69
                        cmp              esi, 1
                                                                                        jne   .Lx401_70
                        mov              rcx, rax
                                                                                        jmp   .Lx401_68
.Lx401_70:
                        cmp              esi, 2
                                                                                        jne   .Lx401_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_69
                        mov              rcx, rax
                                                                                        jmp   .Lx401_68
.Lx401_71:
                        cmp              eax, 13
                                                                                        jne   .Lx401_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx401_69
                        cmp              rax, rcx
                                                                                        je    .Lx401_69
                        mov              rcx, rax
                                                                                        jmp   .Lx401_68
.Lx401_69:
                        cmp              r9, rcx
                                                                                        je    .Lx401_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_75
                        cmp              eax, 99
                                                                                        je    .Lx401_75
                        cmp              eax, 13
                                                                                        jne   .Lx401_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx401_75
                                                                                        jmp   .Lx401_72
.Lx401_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_76
                        cmp              eax, 99
                                                                                        je    .Lx401_76
                        cmp              eax, 13
                                                                                        jne   .Lx401_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx401_76
                                                                                        jmp   .Lx401_72
.Lx401_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx401_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx401_72
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
                                                                                        jmp   .Lx401_77
.Lx401_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx401_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx401_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx401_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx401_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx401_72
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
.Lx401_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx401_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_82
                        cmp              esi, 1
                                                                                        jne   .Lx401_83
                        mov              r9, rax
                                                                                        jmp   .Lx401_81
.Lx401_83:
                        cmp              esi, 2
                                                                                        jne   .Lx401_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_82
                        mov              r9, rax
                                                                                        jmp   .Lx401_81
.Lx401_84:
                        cmp              eax, 13
                                                                                        jne   .Lx401_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx401_82
                        cmp              rax, r9
                                                                                        je    .Lx401_82
                        mov              r9, rax
                                                                                        jmp   .Lx401_81
.Lx401_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_85
                        cmp              eax, 99
                                                                                        je    .Lx401_85
                        cmp              eax, 13
                                                                                        jne   .Lx401_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx401_85
                                                                                        jmp   .Lx401_86
.Lx401_85:
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
                                                                                        jmp   .Lx401_87
.Lx401_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx401_87:
                        lea              rcx, [rbp + 608]
.Lx401_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx401_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx401_89
                        cmp              esi, 1
                                                                                        jne   .Lx401_90
                        mov              rcx, rax
                                                                                        jmp   .Lx401_88
.Lx401_90:
                        cmp              esi, 2
                                                                                        jne   .Lx401_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx401_89
                        mov              rcx, rax
                                                                                        jmp   .Lx401_88
.Lx401_91:
                        cmp              eax, 13
                                                                                        jne   .Lx401_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx401_89
                        cmp              rax, rcx
                                                                                        je    .Lx401_89
                        mov              rcx, rax
                                                                                        jmp   .Lx401_88
.Lx401_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx401_92
                        cmp              eax, 99
                                                                                        je    .Lx401_92
                        cmp              eax, 13
                                                                                        jne   .Lx401_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx401_92
                                                                                        jmp   .Lx401_93
.Lx401_92:
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
                                                                                        jmp   .Lx401_94
.Lx401_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx401_94:
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
                                                                                        jmp   .Lx401_77
.Lx401_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx401_77
.Lx401_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx401_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n354_var_ref_α
n352_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n353_op11_α:
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
.Lx402_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx402_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              esi, 1
                                                                                        jne   .Lx402_55
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_55:
                        cmp              esi, 2
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_56:
                        cmp              eax, 13
                                                                                        jne   .Lx402_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_41
                        cmp              rax, r8
                                                                                        je    .Lx402_41
                        mov              r8, rax
                                                                                        jmp   .Lx402_40
.Lx402_41:
                        lea              r9, [rbp + 848]
.Lx402_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx402_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              esi, 1
                                                                                        jne   .Lx402_57
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_57:
                        cmp              esi, 2
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_58:
                        cmp              eax, 13
                                                                                        jne   .Lx402_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx402_43
                        cmp              rax, r9
                                                                                        je    .Lx402_43
                        mov              r9, rax
                                                                                        jmp   .Lx402_42
.Lx402_43:
                        cmp              r8, r9
                                                                                        je    .Lx402_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_44
                        cmp              eax, 99
                                                                                        je    .Lx402_44
                        cmp              eax, 13
                                                                                        jne   .Lx402_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx402_44
                                                                                        jmp   .Lx402_45
.Lx402_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_53
                        cmp              eax, 99
                                                                                        je    .Lx402_53
                        cmp              eax, 13
                                                                                        jne   .Lx402_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_46
.Lx402_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx402_47
                        cmp              eax, 99
                                                                                        je    .Lx402_47
                        cmp              eax, 13
                                                                                        jne   .Lx402_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx402_47
                                                                                        jmp   .Lx402_48
.Lx402_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx402_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx402_53
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
                                                                                        jmp   .Lx402_51
.Lx402_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx402_49
                        cmp              edx, 14
                                                                                        je    .Lx402_53
                                                                                        jmp   .Lx402_52
.Lx402_49:
                        cmp              edx, 14
                                                                                        je    .Lx402_52
                        cmp              ecx, 7
                                                                                        je    .Lx402_53
                        cmp              edx, 7
                                                                                        je    .Lx402_53
                        cmp              ecx, 6
                                                                                        jne   .Lx402_50
                        cmp              edx, 6
                                                                                        jne   .Lx402_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx402_51
                                                                                        jmp   .Lx402_52
.Lx402_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx402_53
.Lx402_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx402_54
.Lx402_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx402_54
.Lx402_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx402_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n342_op11_α
                                                                                        jmp   n355_suspend_α
n353_op11_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n356_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n355_suspend_α:
                        lea              rax, [rip + n355_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse1$2F3_γ
n355_suspend_β:
                                                                                        jmp   n342_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n357_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
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
.Lx409_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx409_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_41
                        cmp              esi, 1
                                                                                        jne   .Lx409_55
                        mov              r8, rax
                                                                                        jmp   .Lx409_40
.Lx409_55:
                        cmp              esi, 2
                                                                                        jne   .Lx409_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx409_41
                        mov              r8, rax
                                                                                        jmp   .Lx409_40
.Lx409_56:
                        cmp              eax, 13
                                                                                        jne   .Lx409_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_41
                        cmp              rax, r8
                                                                                        je    .Lx409_41
                        mov              r8, rax
                                                                                        jmp   .Lx409_40
.Lx409_41:
                        lea              r9, [rbp + 496]
.Lx409_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx409_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_43
                        cmp              esi, 1
                                                                                        jne   .Lx409_57
                        mov              r9, rax
                                                                                        jmp   .Lx409_42
.Lx409_57:
                        cmp              esi, 2
                                                                                        jne   .Lx409_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx409_43
                        mov              r9, rax
                                                                                        jmp   .Lx409_42
.Lx409_58:
                        cmp              eax, 13
                                                                                        jne   .Lx409_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx409_43
                        cmp              rax, r9
                                                                                        je    .Lx409_43
                        mov              r9, rax
                                                                                        jmp   .Lx409_42
.Lx409_43:
                        cmp              r8, r9
                                                                                        je    .Lx409_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx409_44
                        cmp              eax, 99
                                                                                        je    .Lx409_44
                        cmp              eax, 13
                                                                                        jne   .Lx409_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx409_44
                                                                                        jmp   .Lx409_45
.Lx409_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx409_53
                        cmp              eax, 99
                                                                                        je    .Lx409_53
                        cmp              eax, 13
                                                                                        jne   .Lx409_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx409_53
                                                                                        jmp   .Lx409_46
.Lx409_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx409_53
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
                                                                                        jmp   .Lx409_51
.Lx409_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx409_47
                        cmp              eax, 99
                                                                                        je    .Lx409_47
                        cmp              eax, 13
                                                                                        jne   .Lx409_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx409_47
                                                                                        jmp   .Lx409_48
.Lx409_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx409_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx409_53
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
                                                                                        jmp   .Lx409_51
.Lx409_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx409_49
                        cmp              edx, 14
                                                                                        je    .Lx409_53
                                                                                        jmp   .Lx409_52
.Lx409_49:
                        cmp              edx, 14
                                                                                        je    .Lx409_52
                        cmp              ecx, 7
                                                                                        je    .Lx409_53
                        cmp              edx, 7
                                                                                        je    .Lx409_53
                        cmp              ecx, 6
                                                                                        jne   .Lx409_50
                        cmp              edx, 6
                                                                                        jne   .Lx409_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx409_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx409_51
                                                                                        jmp   .Lx409_52
.Lx409_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx409_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx409_53
.Lx409_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx409_54
.Lx409_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx409_54
.Lx409_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx409_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n358_var_ref_α
n357_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
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
.Lx414_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx414_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_41
                        cmp              esi, 1
                                                                                        jne   .Lx414_55
                        mov              r8, rax
                                                                                        jmp   .Lx414_40
.Lx414_55:
                        cmp              esi, 2
                                                                                        jne   .Lx414_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx414_41
                        mov              r8, rax
                                                                                        jmp   .Lx414_40
.Lx414_56:
                        cmp              eax, 13
                                                                                        jne   .Lx414_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_41
                        cmp              rax, r8
                                                                                        je    .Lx414_41
                        mov              r8, rax
                                                                                        jmp   .Lx414_40
.Lx414_41:
                        lea              r9, [rbp + 416]
.Lx414_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx414_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_43
                        cmp              esi, 1
                                                                                        jne   .Lx414_57
                        mov              r9, rax
                                                                                        jmp   .Lx414_42
.Lx414_57:
                        cmp              esi, 2
                                                                                        jne   .Lx414_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx414_43
                        mov              r9, rax
                                                                                        jmp   .Lx414_42
.Lx414_58:
                        cmp              eax, 13
                                                                                        jne   .Lx414_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx414_43
                        cmp              rax, r9
                                                                                        je    .Lx414_43
                        mov              r9, rax
                                                                                        jmp   .Lx414_42
.Lx414_43:
                        cmp              r8, r9
                                                                                        je    .Lx414_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx414_44
                        cmp              eax, 99
                                                                                        je    .Lx414_44
                        cmp              eax, 13
                                                                                        jne   .Lx414_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx414_44
                                                                                        jmp   .Lx414_45
.Lx414_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx414_53
                        cmp              eax, 99
                                                                                        je    .Lx414_53
                        cmp              eax, 13
                                                                                        jne   .Lx414_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx414_53
                                                                                        jmp   .Lx414_46
.Lx414_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx414_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx414_53
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
                                                                                        jmp   .Lx414_51
.Lx414_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx414_47
                        cmp              eax, 99
                                                                                        je    .Lx414_47
                        cmp              eax, 13
                                                                                        jne   .Lx414_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx414_47
                                                                                        jmp   .Lx414_48
.Lx414_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx414_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx414_53
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
                                                                                        jmp   .Lx414_51
.Lx414_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx414_49
                        cmp              edx, 14
                                                                                        je    .Lx414_53
                                                                                        jmp   .Lx414_52
.Lx414_49:
                        cmp              edx, 14
                                                                                        je    .Lx414_52
                        cmp              ecx, 7
                                                                                        je    .Lx414_53
                        cmp              edx, 7
                                                                                        je    .Lx414_53
                        cmp              ecx, 6
                                                                                        jne   .Lx414_50
                        cmp              edx, 6
                                                                                        jne   .Lx414_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx414_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx414_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx414_51
                                                                                        jmp   .Lx414_52
.Lx414_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx414_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx414_53
.Lx414_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx414_54
.Lx414_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx414_54
.Lx414_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx414_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n361_var_ref_α
n360_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n362_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n363_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n364_var_ref_α
.Lx419_0:
                        .quad            .Lx419_0_s
.Lx419_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n365_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n366_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n367_call_proc_staged_α
n366_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx426_21
.Lx426_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx426_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx426_23
.Lx426_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx426_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx426_24
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx426_25
.Lx426_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx426_25:
                        mov              edi, 8
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx426_1
                        lea              rcx, [rip + .Lx426_3]
                        lea              rdx, [rip + .Lx426_4]
                                                                                        jmp   rax
.Lx426_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx426_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx426_2
.Lx426_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx426_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx426_2
.Lx426_1:
                        call             rt_faildescr@PLT
.Lx426_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n368_suspend_α
n367_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "reverse1/3"
#-----------------------------------------------------------------------------------------------------------------------
n368_suspend_α:
                        lea              rax, [rip + n368_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse1$2F3_γ
n368_suspend_β:
                                                                                        jmp   n367_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse1$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1256]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse1$2F3_ω:
                        mov              rax, [rbp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_name$2F1_α
proc_prolog_name$2F1_α:
                        .global          proc_prolog_name$2F1_α
                        .global          proc_prolog_name$2F1_β
                        .global          proc_prolog_name$2F1_γ
                        .global          proc_prolog_name$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_name$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n429_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx436_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx436_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx436_101
.Lx436_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx436_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   n430_var_ref_α
n429_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n432_op11_α
.Lx439_0:
                        .quad            .Lx439_0_s
.Lx439_0_s:
                        .string          "SICStus Prolog"
#-----------------------------------------------------------------------------------------------------------------------
n432_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx440_2]
                                                                                        jmp   .Lx440_3
.Lx440_2:
                        .quad            .Lx440_2_s
.Lx440_2_s:
                        .string          "SICStus Prolog"
.Lx440_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n434_op11_α
                                                                                        jmp   n433_move_label_α
n432_op11_β:
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n433_move_label_α:
                        lea              rax, [rip + n434_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_name$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
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
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   proc_prolog_name$2F1_ω
n434_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n435_disjunction_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_β:
                                                                                        jmp   n435_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx446_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx446_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_name$2F1_α_body
.Lx446_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx446_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_date$2F1_α
proc_prolog_date$2F1_α:
                        .global          proc_prolog_date$2F1_α
                        .global          proc_prolog_date$2F1_β
                        .global          proc_prolog_date$2F1_γ
                        .global          proc_prolog_date$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_date$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n447_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx454_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx454_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx454_101
.Lx454_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx454_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   n448_var_ref_α
n447_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n448_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n450_op11_α
.Lx457_0:
                        .quad            .Lx457_0_s
.Lx457_0_s:
                        .string          "2000"
#-----------------------------------------------------------------------------------------------------------------------
n450_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx458_2]
                                                                                        jmp   .Lx458_3
.Lx458_2:
                        .quad            .Lx458_2_s
.Lx458_2_s:
                        .string          "2000"
.Lx458_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n452_op11_α
                                                                                        jmp   n451_move_label_α
n450_op11_β:
                                                                                        jmp   n452_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n451_move_label_α:
                        lea              rax, [rip + n452_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_date$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n452_op11_α:
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
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   proc_prolog_date$2F1_ω
n452_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n453_disjunction_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_β:
                                                                                        jmp   n453_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx464_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx464_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_date$2F1_α_body
.Lx464_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx464_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_assign$2F2_α
proc_g_assign$2F2_α:
                        .global          proc_g_assign$2F2_α
                        .global          proc_g_assign$2F2_β
                        .global          proc_g_assign$2F2_γ
                        .global          proc_g_assign$2F2_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_assign$2F2_α_body:
                        lea              rax, [rip + n476_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n465_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx477_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx477_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx477_101
.Lx477_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx477_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   n466_var_ref_α
n465_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n467_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n468_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n468_op11_α:
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
.Lx482_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx482_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              esi, 1
                                                                                        jne   .Lx482_55
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_55:
                        cmp              esi, 2
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_56:
                        cmp              eax, 13
                                                                                        jne   .Lx482_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_41
                        cmp              rax, r8
                                                                                        je    .Lx482_41
                        mov              r8, rax
                                                                                        jmp   .Lx482_40
.Lx482_41:
                        lea              r9, [rbp + 320]
.Lx482_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx482_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              esi, 1
                                                                                        jne   .Lx482_57
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_57:
                        cmp              esi, 2
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_58:
                        cmp              eax, 13
                                                                                        jne   .Lx482_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx482_43
                        cmp              rax, r9
                                                                                        je    .Lx482_43
                        mov              r9, rax
                                                                                        jmp   .Lx482_42
.Lx482_43:
                        cmp              r8, r9
                                                                                        je    .Lx482_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_44
                        cmp              eax, 99
                                                                                        je    .Lx482_44
                        cmp              eax, 13
                                                                                        jne   .Lx482_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx482_44
                                                                                        jmp   .Lx482_45
.Lx482_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_53
                        cmp              eax, 99
                                                                                        je    .Lx482_53
                        cmp              eax, 13
                                                                                        jne   .Lx482_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_46
.Lx482_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                                                                                        jmp   .Lx482_51
.Lx482_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx482_47
                        cmp              eax, 99
                                                                                        je    .Lx482_47
                        cmp              eax, 13
                                                                                        jne   .Lx482_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx482_47
                                                                                        jmp   .Lx482_48
.Lx482_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx482_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx482_53
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
                                                                                        jmp   .Lx482_51
.Lx482_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx482_49
                        cmp              edx, 14
                                                                                        je    .Lx482_53
                                                                                        jmp   .Lx482_52
.Lx482_49:
                        cmp              edx, 14
                                                                                        je    .Lx482_52
                        cmp              ecx, 7
                                                                                        je    .Lx482_53
                        cmp              edx, 7
                                                                                        je    .Lx482_53
                        cmp              ecx, 6
                                                                                        jne   .Lx482_50
                        cmp              edx, 6
                                                                                        jne   .Lx482_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx482_51
                                                                                        jmp   .Lx482_52
.Lx482_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx482_53
.Lx482_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx482_54
.Lx482_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx482_54
.Lx482_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx482_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n470_op11_α
                                                                                        jmp   n469_var_ref_α
n468_op11_β:
                                                                                        jmp   n470_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n471_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
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
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   proc_g_assign$2F2_ω
n470_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n472_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n472_op11_α:
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
                        lea              r9, [rbp + 240]
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
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n470_op11_α
                                                                                        jmp   n473_var_ref_α
n472_op11_β:
                                                                                        jmp   n470_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n474_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n475_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n475_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx494_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx494_21
.Lx494_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx494_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx494_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx494_23
.Lx494_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx494_23:
                        mov              rdi, qword ptr [rip + .Lx494_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx494_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx494_3]
                        lea              rdx, [rip + .Lx494_4]
                                                                                        jmp   rax
.Lx494_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx494_2
.Lx494_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx494_2
.Lx494_1:
                        call             rt_faildescr@PLT
.Lx494_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n470_op11_α
                                                                                        jmp   n476_suspend_α
n475_call_proc_staged_β:
                                                                                        jmp   n470_op11_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "bb_put/2"
#-----------------------------------------------------------------------------------------------------------------------
n476_suspend_α:
                        lea              rax, [rip + n476_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_assign$2F2_γ
n476_suspend_β:
                                                                                        jmp   n475_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_assign$2F2_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_read$2F2_α
proc_g_read$2F2_α:
                        .global          proc_g_read$2F2_α
                        .global          proc_g_read$2F2_β
                        .global          proc_g_read$2F2_γ
                        .global          proc_g_read$2F2_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_read$2F2_α_body:
                        lea              rax, [rip + n512_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx513_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx513_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx513_101
.Lx513_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx513_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   n498_var_ref_α
n497_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n500_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
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
.Lx518_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx518_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        cmp              esi, 1
                                                                                        jne   .Lx518_55
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_55:
                        cmp              esi, 2
                                                                                        jne   .Lx518_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_56:
                        cmp              eax, 13
                                                                                        jne   .Lx518_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_41
                        cmp              rax, r8
                                                                                        je    .Lx518_41
                        mov              r8, rax
                                                                                        jmp   .Lx518_40
.Lx518_41:
                        lea              r9, [rbp + 432]
.Lx518_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx518_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        cmp              esi, 1
                                                                                        jne   .Lx518_57
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_57:
                        cmp              esi, 2
                                                                                        jne   .Lx518_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_58:
                        cmp              eax, 13
                                                                                        jne   .Lx518_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx518_43
                        cmp              rax, r9
                                                                                        je    .Lx518_43
                        mov              r9, rax
                                                                                        jmp   .Lx518_42
.Lx518_43:
                        cmp              r8, r9
                                                                                        je    .Lx518_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_44
                        cmp              eax, 99
                                                                                        je    .Lx518_44
                        cmp              eax, 13
                                                                                        jne   .Lx518_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx518_44
                                                                                        jmp   .Lx518_45
.Lx518_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_53
                        cmp              eax, 99
                                                                                        je    .Lx518_53
                        cmp              eax, 13
                                                                                        jne   .Lx518_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx518_53
                                                                                        jmp   .Lx518_46
.Lx518_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx518_53
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
                                                                                        jmp   .Lx518_51
.Lx518_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx518_47
                        cmp              eax, 99
                                                                                        je    .Lx518_47
                        cmp              eax, 13
                                                                                        jne   .Lx518_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx518_47
                                                                                        jmp   .Lx518_48
.Lx518_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx518_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx518_53
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
                                                                                        jmp   .Lx518_51
.Lx518_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx518_49
                        cmp              edx, 14
                                                                                        je    .Lx518_53
                                                                                        jmp   .Lx518_52
.Lx518_49:
                        cmp              edx, 14
                                                                                        je    .Lx518_52
                        cmp              ecx, 7
                                                                                        je    .Lx518_53
                        cmp              edx, 7
                                                                                        je    .Lx518_53
                        cmp              ecx, 6
                                                                                        jne   .Lx518_50
                        cmp              edx, 6
                                                                                        jne   .Lx518_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx518_51
                                                                                        jmp   .Lx518_52
.Lx518_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx518_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx518_53
.Lx518_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx518_54
.Lx518_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx518_54
.Lx518_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx518_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n502_op11_α
                                                                                        jmp   n501_var_ref_α
n500_op11_β:
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n503_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n502_op11_α:
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
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   proc_g_read$2F2_ω
n502_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n504_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n504_op11_α:
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
.Lx524_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx524_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        cmp              esi, 1
                                                                                        jne   .Lx524_55
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_55:
                        cmp              esi, 2
                                                                                        jne   .Lx524_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_56:
                        cmp              eax, 13
                                                                                        jne   .Lx524_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_41
                        cmp              rax, r8
                                                                                        je    .Lx524_41
                        mov              r8, rax
                                                                                        jmp   .Lx524_40
.Lx524_41:
                        lea              r9, [rbp + 352]
.Lx524_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx524_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        cmp              esi, 1
                                                                                        jne   .Lx524_57
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_57:
                        cmp              esi, 2
                                                                                        jne   .Lx524_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_58:
                        cmp              eax, 13
                                                                                        jne   .Lx524_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx524_43
                        cmp              rax, r9
                                                                                        je    .Lx524_43
                        mov              r9, rax
                                                                                        jmp   .Lx524_42
.Lx524_43:
                        cmp              r8, r9
                                                                                        je    .Lx524_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_44
                        cmp              eax, 99
                                                                                        je    .Lx524_44
                        cmp              eax, 13
                                                                                        jne   .Lx524_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx524_44
                                                                                        jmp   .Lx524_45
.Lx524_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_53
                        cmp              eax, 99
                                                                                        je    .Lx524_53
                        cmp              eax, 13
                                                                                        jne   .Lx524_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx524_53
                                                                                        jmp   .Lx524_46
.Lx524_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx524_53
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
                                                                                        jmp   .Lx524_51
.Lx524_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx524_47
                        cmp              eax, 99
                                                                                        je    .Lx524_47
                        cmp              eax, 13
                                                                                        jne   .Lx524_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx524_47
                                                                                        jmp   .Lx524_48
.Lx524_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx524_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx524_53
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
                                                                                        jmp   .Lx524_51
.Lx524_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx524_49
                        cmp              edx, 14
                                                                                        je    .Lx524_53
                                                                                        jmp   .Lx524_52
.Lx524_49:
                        cmp              edx, 14
                                                                                        je    .Lx524_52
                        cmp              ecx, 7
                                                                                        je    .Lx524_53
                        cmp              edx, 7
                                                                                        je    .Lx524_53
                        cmp              ecx, 6
                                                                                        jne   .Lx524_50
                        cmp              edx, 6
                                                                                        jne   .Lx524_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx524_51
                                                                                        jmp   .Lx524_52
.Lx524_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx524_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx524_53
.Lx524_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx524_54
.Lx524_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx524_54
.Lx524_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx524_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n502_op11_α
                                                                                        jmp   n505_var_ref_α
n504_op11_β:
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n506_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n507_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n507_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx530_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx530_21
.Lx530_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx530_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx530_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx530_23
.Lx530_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx530_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx530_1
                        lea              rcx, [rip + .Lx530_3]
                        lea              rdx, [rip + .Lx530_4]
                                                                                        jmp   rax
.Lx530_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx530_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx530_2
.Lx530_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx530_2
.Lx530_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx530_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx530_2
.Lx530_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx530_2
.Lx530_1:
                        call             rt_faildescr@PLT
.Lx530_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n502_op11_α
                                                                                        jmp   n508_op19_α
n507_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "$disj0/2"
#-----------------------------------------------------------------------------------------------------------------------
n508_op19_α:
                                                                                        jmp   n509_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n510_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n511_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_op11_α:
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
.Lx536_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx536_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              esi, 1
                                                                                        jne   .Lx536_55
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_55:
                        cmp              esi, 2
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_56:
                        cmp              eax, 13
                                                                                        jne   .Lx536_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_41
                        cmp              rax, r8
                                                                                        je    .Lx536_41
                        mov              r8, rax
                                                                                        jmp   .Lx536_40
.Lx536_41:
                        lea              r9, [rbp + 160]
.Lx536_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx536_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        cmp              esi, 1
                                                                                        jne   .Lx536_57
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_57:
                        cmp              esi, 2
                                                                                        jne   .Lx536_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_58:
                        cmp              eax, 13
                                                                                        jne   .Lx536_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx536_43
                        cmp              rax, r9
                                                                                        je    .Lx536_43
                        mov              r9, rax
                                                                                        jmp   .Lx536_42
.Lx536_43:
                        cmp              r8, r9
                                                                                        je    .Lx536_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_44
                        cmp              eax, 99
                                                                                        je    .Lx536_44
                        cmp              eax, 13
                                                                                        jne   .Lx536_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx536_44
                                                                                        jmp   .Lx536_45
.Lx536_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_53
                        cmp              eax, 99
                                                                                        je    .Lx536_53
                        cmp              eax, 13
                                                                                        jne   .Lx536_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_46
.Lx536_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx536_53
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
                                                                                        jmp   .Lx536_51
.Lx536_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx536_47
                        cmp              eax, 99
                                                                                        je    .Lx536_47
                        cmp              eax, 13
                                                                                        jne   .Lx536_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx536_47
                                                                                        jmp   .Lx536_48
.Lx536_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx536_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx536_53
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
                                                                                        jmp   .Lx536_51
.Lx536_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx536_49
                        cmp              edx, 14
                                                                                        je    .Lx536_53
                                                                                        jmp   .Lx536_52
.Lx536_49:
                        cmp              edx, 14
                                                                                        je    .Lx536_52
                        cmp              ecx, 7
                                                                                        je    .Lx536_53
                        cmp              edx, 7
                                                                                        je    .Lx536_53
                        cmp              ecx, 6
                                                                                        jne   .Lx536_50
                        cmp              edx, 6
                                                                                        jne   .Lx536_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx536_51
                                                                                        jmp   .Lx536_52
.Lx536_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx536_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx536_53
.Lx536_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx536_54
.Lx536_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx536_54
.Lx536_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx536_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n502_op11_α
                                                                                        jmp   n512_suspend_α
n511_op11_β:
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n512_suspend_α:
                        lea              rax, [rip + n512_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_read$2F2_γ
n512_suspend_β:
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_read$2F2_res]
                        push             rax
                        mov              rax, [rbp + 552]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go_other1$2F1_α
proc_go_other1$2F1_α:
                        .global          proc_go_other1$2F1_α
                        .global          proc_go_other1$2F1_β
                        .global          proc_go_other1$2F1_γ
                        .global          proc_go_other1$2F1_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_go_other1$2F1_α_body:
                        lea              rax, [rip + n554_suspend_β]
                        mov              qword ptr [rbp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n539_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx558_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx558_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx558_101
.Lx558_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx558_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n540_var_ref_α
n539_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n541_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n542_lit_string_α
.Lx561_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n543_op11_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n543_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx563_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx563_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx563_111
                        cmp              esi, 1
                                                                                        jne   .Lx563_112
                        mov              r8, rax
                                                                                        jmp   .Lx563_110
.Lx563_112:
                        cmp              esi, 2
                                                                                        jne   .Lx563_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx563_111
                        mov              r8, rax
                                                                                        jmp   .Lx563_110
.Lx563_113:
                        cmp              eax, 13
                                                                                        jne   .Lx563_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx563_111
                        cmp              rax, r8
                                                                                        je    .Lx563_111
                        mov              r8, rax
                                                                                        jmp   .Lx563_110
.Lx563_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx563_114
                        cmp              eax, 99
                                                                                        je    .Lx563_114
                        cmp              eax, 13
                                                                                        jne   .Lx563_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx563_114
                                                                                        jmp   .Lx563_118
.Lx563_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx563_115
                        cmp              eax, 6
                                                                                        je    .Lx563_114
                        cmp              eax, 1
                                                                                        jne   .Lx563_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx563_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx563_114
                                                                                        jmp   .Lx563_116
.Lx563_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx563_117
.Lx563_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx563_117
.Lx563_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx563_117:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n545_var_ref_α
                                                                                        jmp   n544_var_ref_α
n543_op11_β:
                                                                                        jmp   n545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n546_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n547_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n548_op11_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n547_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n549_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx571_2]
                                                                                        jmp   .Lx571_3
.Lx571_2:
                        .quad            .Lx571_2_s
.Lx571_2_s:
                        .string          "[]"
.Lx571_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n551_op11_α
                                                                                        jmp   n550_op19_α
n548_op11_β:
                                                                                        jmp   n551_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n549_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx572_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx572_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx572_41
                        cmp              esi, 1
                                                                                        jne   .Lx572_55
                        mov              r8, rax
                                                                                        jmp   .Lx572_40
.Lx572_55:
                        cmp              esi, 2
                                                                                        jne   .Lx572_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx572_41
                        mov              r8, rax
                                                                                        jmp   .Lx572_40
.Lx572_56:
                        cmp              eax, 13
                                                                                        jne   .Lx572_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx572_41
                        cmp              rax, r8
                                                                                        je    .Lx572_41
                        mov              r8, rax
                                                                                        jmp   .Lx572_40
.Lx572_41:
                        lea              r9, [rbp + 224]
.Lx572_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx572_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx572_43
                        cmp              esi, 1
                                                                                        jne   .Lx572_57
                        mov              r9, rax
                                                                                        jmp   .Lx572_42
.Lx572_57:
                        cmp              esi, 2
                                                                                        jne   .Lx572_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx572_43
                        mov              r9, rax
                                                                                        jmp   .Lx572_42
.Lx572_58:
                        cmp              eax, 13
                                                                                        jne   .Lx572_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx572_43
                        cmp              rax, r9
                                                                                        je    .Lx572_43
                        mov              r9, rax
                                                                                        jmp   .Lx572_42
.Lx572_43:
                        cmp              r8, r9
                                                                                        je    .Lx572_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx572_44
                        cmp              eax, 99
                                                                                        je    .Lx572_44
                        cmp              eax, 13
                                                                                        jne   .Lx572_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx572_44
                                                                                        jmp   .Lx572_45
.Lx572_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx572_53
                        cmp              eax, 99
                                                                                        je    .Lx572_53
                        cmp              eax, 13
                                                                                        jne   .Lx572_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx572_53
                                                                                        jmp   .Lx572_46
.Lx572_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx572_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx572_53
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
                                                                                        jmp   .Lx572_51
.Lx572_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx572_47
                        cmp              eax, 99
                                                                                        je    .Lx572_47
                        cmp              eax, 13
                                                                                        jne   .Lx572_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx572_47
                                                                                        jmp   .Lx572_48
.Lx572_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx572_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx572_53
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
                                                                                        jmp   .Lx572_51
.Lx572_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx572_49
                        cmp              edx, 14
                                                                                        je    .Lx572_53
                                                                                        jmp   .Lx572_52
.Lx572_49:
                        cmp              edx, 14
                                                                                        je    .Lx572_52
                        cmp              ecx, 7
                                                                                        je    .Lx572_53
                        cmp              edx, 7
                                                                                        je    .Lx572_53
                        cmp              ecx, 6
                                                                                        jne   .Lx572_50
                        cmp              edx, 6
                                                                                        jne   .Lx572_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx572_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx572_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx572_51
                                                                                        jmp   .Lx572_52
.Lx572_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx572_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx572_53
.Lx572_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx572_54
.Lx572_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx572_54
.Lx572_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx572_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n553_op11_α
                                                                                        jmp   n552_var_ref_α
n549_op11_β:
                                                                                        jmp   n553_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n550_op19_α:
                                                                                        jmp   n554_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n551_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n545_var_ref_α
n551_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n555_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n553_op11_α:
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
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   proc_go_other1$2F1_ω
n553_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n554_suspend_α:
                        lea              rax, [rip + n554_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n554_suspend_β:
                                                                                        jmp   n551_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n555_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx581_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx581_21
.Lx581_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx581_21:
                        mov              rdi, qword ptr [rip + .Lx581_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx581_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx581_3]
                        lea              rdx, [rip + .Lx581_4]
                                                                                        jmp   rax
.Lx581_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx581_2
.Lx581_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx581_2
.Lx581_1:
                        call             rt_faildescr@PLT
.Lx581_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n553_op11_α
                                                                                        jmp   n556_call_proc_staged_α
n555_call_proc_staged_β:
                                                                                        jmp   n553_op11_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "pl2wam/1"
#-----------------------------------------------------------------------------------------------------------------------
n556_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx583_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx583_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx583_3]
                        lea              rdx, [rip + .Lx583_4]
                                                                                        jmp   rax
.Lx583_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx583_2
.Lx583_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx583_2
.Lx583_1:
                        call             rt_faildescr@PLT
.Lx583_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n555_call_proc_staged_β
                                                                                        jmp   n557_suspend_α
n556_call_proc_staged_β:
                                                                                        jmp   n555_call_proc_staged_β
.Lx583_0:
                        .quad            .Lx583_0_s
.Lx583_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n557_suspend_α:
                        lea              rax, [rip + n557_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n557_suspend_β:
                                                                                        jmp   n556_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 512]
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go_other1$2F1_res]
                        push             rax
                        mov              rax, [rbp + 552]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "prolog_copyright/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_prolog_copyright$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_prolog_copyright$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "current_prolog_flag/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_current_prolog_flag$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "prolog_version/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_prolog_version$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "reverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_reverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1056
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "go_other/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_go_other$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "$disj0/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_$disj0$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "argument_list/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_argument_list$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "reverse1/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_reverse1$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "prolog_name/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_prolog_name$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_prolog_name$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "prolog_date/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prolog_date$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prolog_date$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "g_assign/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_g_assign$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "g_read/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_g_read$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "go_other1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_go_other1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 544
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
                        sub              rsp, 184
                        mov              rdi, rsp
                        mov              ecx, 184
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n587_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n587_call_proc_staged_α:
                        mov              qword ptr [rsp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx593_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx593_21
.Lx593_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        call             rt_arg_stage@PLT
.Lx593_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx593_1
                        lea              rcx, [rip + .Lx593_3]
                        lea              rdx, [rip + .Lx593_4]
                                                                                        jmp   rax
.Lx593_3:
                        mov              qword ptr [rsp + 120], rsp
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax
                                                                                        jne   .Lx593_5
                        mov              qword ptr [rsp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx593_2
.Lx593_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx593_2
.Lx593_4:
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax
                                                                                        jne   .Lx593_6
                        mov              qword ptr [rsp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx593_2
.Lx593_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx593_2
.Lx593_1:
                        call             rt_faildescr@PLT
.Lx593_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n588_var_ref_α
n587_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx593_0:
                        .quad            .Lx593_0_s
.Lx593_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n589_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n589_call_proc_staged_α:
                        mov              qword ptr [rsp + 32], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx597_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx597_21
.Lx597_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx597_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx597_1
                        lea              rcx, [rip + .Lx597_3]
                        lea              rdx, [rip + .Lx597_4]
                                                                                        jmp   rax
.Lx597_3:
                        mov              qword ptr [rsp + 40], rsp
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax
                                                                                        jne   .Lx597_5
                        mov              qword ptr [rsp + 32], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_4:
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax
                                                                                        jne   .Lx597_6
                        mov              qword ptr [rsp + 32], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_1:
                        call             rt_faildescr@PLT
.Lx597_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n587_call_proc_staged_β
                                                                                        jmp   main_γ
n589_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 40]
                                                                                        jmp   qword ptr [rsp]
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 184
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 184
                        ret
                        .section         .note.GNU-stack,"",@progbits
