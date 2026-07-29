                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_unify_test$2F2_α
proc_unify_test$2F2_α:
                        .global          proc_unify_test$2F2_α
                        .global          proc_unify_test$2F2_β
                        .global          proc_unify_test$2F2_γ
                        .global          proc_unify_test$2F2_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_unify_test$2F2_α_body:
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
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx10_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_unify_test$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_unify_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
.Lx15_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx15_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx15_41
                        cmp              esi, 1
                                                                                        jne   .Lx15_55
                        mov              r8, rax
                                                                                        jmp   .Lx15_40
.Lx15_55:
                        cmp              esi, 2
                                                                                        jne   .Lx15_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx15_41
                        mov              r8, rax
                                                                                        jmp   .Lx15_40
.Lx15_56:
                        cmp              eax, 13
                                                                                        jne   .Lx15_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx15_41
                        cmp              rax, r8
                                                                                        je    .Lx15_41
                        mov              r8, rax
                                                                                        jmp   .Lx15_40
.Lx15_41:
                        lea              r9, [rbp + 256]
.Lx15_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx15_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx15_43
                        cmp              esi, 1
                                                                                        jne   .Lx15_57
                        mov              r9, rax
                                                                                        jmp   .Lx15_42
.Lx15_57:
                        cmp              esi, 2
                                                                                        jne   .Lx15_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx15_43
                        mov              r9, rax
                                                                                        jmp   .Lx15_42
.Lx15_58:
                        cmp              eax, 13
                                                                                        jne   .Lx15_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx15_43
                        cmp              rax, r9
                                                                                        je    .Lx15_43
                        mov              r9, rax
                                                                                        jmp   .Lx15_42
.Lx15_43:
                        cmp              r8, r9
                                                                                        je    .Lx15_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx15_44
                        cmp              eax, 99
                                                                                        je    .Lx15_44
                        cmp              eax, 13
                                                                                        jne   .Lx15_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx15_44
                                                                                        jmp   .Lx15_45
.Lx15_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx15_53
                        cmp              eax, 99
                                                                                        je    .Lx15_53
                        cmp              eax, 13
                                                                                        jne   .Lx15_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx15_53
                                                                                        jmp   .Lx15_46
.Lx15_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx15_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx15_53
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
                                                                                        jmp   .Lx15_51
.Lx15_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx15_47
                        cmp              eax, 99
                                                                                        je    .Lx15_47
                        cmp              eax, 13
                                                                                        jne   .Lx15_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx15_47
                                                                                        jmp   .Lx15_48
.Lx15_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx15_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx15_53
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
                                                                                        jmp   .Lx15_51
.Lx15_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx15_49
                        cmp              edx, 14
                                                                                        je    .Lx15_53
                                                                                        jmp   .Lx15_52
.Lx15_49:
                        cmp              edx, 14
                                                                                        je    .Lx15_52
                        cmp              ecx, 7
                                                                                        je    .Lx15_53
                        cmp              edx, 7
                                                                                        je    .Lx15_53
                        cmp              ecx, 6
                                                                                        jne   .Lx15_50
                        cmp              edx, 6
                                                                                        jne   .Lx15_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx15_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx15_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx15_51
                                                                                        jmp   .Lx15_52
.Lx15_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx15_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx15_53
.Lx15_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx15_54
.Lx15_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx15_54
.Lx15_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx15_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
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
                                                                                        je    proc_unify_test$2F2_ω
                                                                                        jmp   proc_unify_test$2F2_ω
n5_op11_β:
                                                                                        jmp   proc_unify_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
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
.Lx21_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx21_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_41
                        cmp              esi, 1
                                                                                        jne   .Lx21_55
                        mov              r8, rax
                                                                                        jmp   .Lx21_40
.Lx21_55:
                        cmp              esi, 2
                                                                                        jne   .Lx21_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx21_41
                        mov              r8, rax
                                                                                        jmp   .Lx21_40
.Lx21_56:
                        cmp              eax, 13
                                                                                        jne   .Lx21_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_41
                        cmp              rax, r8
                                                                                        je    .Lx21_41
                        mov              r8, rax
                                                                                        jmp   .Lx21_40
.Lx21_41:
                        lea              r9, [rbp + 176]
.Lx21_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx21_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_43
                        cmp              esi, 1
                                                                                        jne   .Lx21_57
                        mov              r9, rax
                                                                                        jmp   .Lx21_42
.Lx21_57:
                        cmp              esi, 2
                                                                                        jne   .Lx21_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx21_43
                        mov              r9, rax
                                                                                        jmp   .Lx21_42
.Lx21_58:
                        cmp              eax, 13
                                                                                        jne   .Lx21_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx21_43
                        cmp              rax, r9
                                                                                        je    .Lx21_43
                        mov              r9, rax
                                                                                        jmp   .Lx21_42
.Lx21_43:
                        cmp              r8, r9
                                                                                        je    .Lx21_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx21_44
                        cmp              eax, 99
                                                                                        je    .Lx21_44
                        cmp              eax, 13
                                                                                        jne   .Lx21_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx21_44
                                                                                        jmp   .Lx21_45
.Lx21_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx21_53
                        cmp              eax, 99
                                                                                        je    .Lx21_53
                        cmp              eax, 13
                                                                                        jne   .Lx21_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx21_53
                                                                                        jmp   .Lx21_46
.Lx21_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx21_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx21_53
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
                                                                                        jmp   .Lx21_51
.Lx21_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx21_47
                        cmp              eax, 99
                                                                                        je    .Lx21_47
                        cmp              eax, 13
                                                                                        jne   .Lx21_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx21_47
                                                                                        jmp   .Lx21_48
.Lx21_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx21_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx21_53
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
                                                                                        jmp   .Lx21_51
.Lx21_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx21_49
                        cmp              edx, 14
                                                                                        je    .Lx21_53
                                                                                        jmp   .Lx21_52
.Lx21_49:
                        cmp              edx, 14
                                                                                        je    .Lx21_52
                        cmp              ecx, 7
                                                                                        je    .Lx21_53
                        cmp              edx, 7
                                                                                        je    .Lx21_53
                        cmp              ecx, 6
                                                                                        jne   .Lx21_50
                        cmp              edx, 6
                                                                                        jne   .Lx21_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx21_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx21_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx21_51
                                                                                        jmp   .Lx21_52
.Lx21_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx21_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx21_53
.Lx21_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx21_54
.Lx21_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx21_54
.Lx21_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx21_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_move_label_α
n7_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_unify_test$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n9_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n9_disjunction_β:
                                                                                        jmp   proc_unify_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_unify_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_unify_test$2F2_β:
                                                                                        jmp   n9_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_unify_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_unify_test$2F2_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_unify_test$2F2_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 320], r11
                        lea              rax, [rip + .Lx26_2]
                        mov              qword ptr [rbp + 328], rax
                        lea              rax, [rip + .Lx26_3]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 304
                        mov              edx, 320
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_unify_test$2F2_α_body
.Lx26_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx26_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F8_α
proc_$disj0$2F8_α:
                        .global          proc_$disj0$2F8_α
                        .global          proc_$disj0$2F8_β
                        .global          proc_$disj0$2F8_γ
                        .global          proc_$disj0$2F8_ω
                        sub              rsp, 3440
                        mov              [rsp + 3416], rcx
                        mov              [rsp + 3424], rdx
                        mov              [rsp + 3432], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3264
                        mov              edx, 3408
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F8_α_body:
                        lea              rax, [rip + n83_suspend_β]
                        mov              qword ptr [rbp + 3264], rax
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx139_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx139_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx139_101
.Lx139_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx139_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F8_ω
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   proc_$disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3200]
                        lea              r8, [rbp + 3200]
.Lx144_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx144_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        cmp              esi, 1
                                                                                        jne   .Lx144_55
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_55:
                        cmp              esi, 2
                                                                                        jne   .Lx144_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_56:
                        cmp              eax, 13
                                                                                        jne   .Lx144_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_41
                        cmp              rax, r8
                                                                                        je    .Lx144_41
                        mov              r8, rax
                                                                                        jmp   .Lx144_40
.Lx144_41:
                        lea              r9, [rbp + 3216]
.Lx144_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx144_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        cmp              esi, 1
                                                                                        jne   .Lx144_57
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_57:
                        cmp              esi, 2
                                                                                        jne   .Lx144_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_58:
                        cmp              eax, 13
                                                                                        jne   .Lx144_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx144_43
                        cmp              rax, r9
                                                                                        je    .Lx144_43
                        mov              r9, rax
                                                                                        jmp   .Lx144_42
.Lx144_43:
                        cmp              r8, r9
                                                                                        je    .Lx144_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_44
                        cmp              eax, 99
                                                                                        je    .Lx144_44
                        cmp              eax, 13
                                                                                        jne   .Lx144_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx144_44
                                                                                        jmp   .Lx144_45
.Lx144_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_53
                        cmp              eax, 99
                                                                                        je    .Lx144_53
                        cmp              eax, 13
                                                                                        jne   .Lx144_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx144_53
                                                                                        jmp   .Lx144_46
.Lx144_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx144_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx144_53
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
                                                                                        jmp   .Lx144_51
.Lx144_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx144_47
                        cmp              eax, 99
                                                                                        je    .Lx144_47
                        cmp              eax, 13
                                                                                        jne   .Lx144_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx144_47
                                                                                        jmp   .Lx144_48
.Lx144_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx144_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx144_53
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
                                                                                        jmp   .Lx144_51
.Lx144_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx144_49
                        cmp              edx, 14
                                                                                        je    .Lx144_53
                                                                                        jmp   .Lx144_52
.Lx144_49:
                        cmp              edx, 14
                                                                                        je    .Lx144_52
                        cmp              ecx, 7
                                                                                        je    .Lx144_53
                        cmp              edx, 7
                                                                                        je    .Lx144_53
                        cmp              ecx, 6
                                                                                        jne   .Lx144_50
                        cmp              edx, 6
                                                                                        jne   .Lx144_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx144_51
                                                                                        jmp   .Lx144_52
.Lx144_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx144_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx144_53
.Lx144_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx144_54
.Lx144_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx144_54
.Lx144_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx144_54:
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n31_var_ref_α
n30_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F8_ω
                                                                                        jmp   n34_var_ref_α
n32_op11_β:
                                                                                        jmp   proc_$disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                                                                                        jmp   n35_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3120]
                        lea              r8, [rbp + 3120]
.Lx152_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx152_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx152_41
                        cmp              esi, 1
                                                                                        jne   .Lx152_55
                        mov              r8, rax
                                                                                        jmp   .Lx152_40
.Lx152_55:
                        cmp              esi, 2
                                                                                        jne   .Lx152_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx152_41
                        mov              r8, rax
                                                                                        jmp   .Lx152_40
.Lx152_56:
                        cmp              eax, 13
                                                                                        jne   .Lx152_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx152_41
                        cmp              rax, r8
                                                                                        je    .Lx152_41
                        mov              r8, rax
                                                                                        jmp   .Lx152_40
.Lx152_41:
                        lea              r9, [rbp + 3136]
.Lx152_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx152_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx152_43
                        cmp              esi, 1
                                                                                        jne   .Lx152_57
                        mov              r9, rax
                                                                                        jmp   .Lx152_42
.Lx152_57:
                        cmp              esi, 2
                                                                                        jne   .Lx152_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx152_43
                        mov              r9, rax
                                                                                        jmp   .Lx152_42
.Lx152_58:
                        cmp              eax, 13
                                                                                        jne   .Lx152_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx152_43
                        cmp              rax, r9
                                                                                        je    .Lx152_43
                        mov              r9, rax
                                                                                        jmp   .Lx152_42
.Lx152_43:
                        cmp              r8, r9
                                                                                        je    .Lx152_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx152_44
                        cmp              eax, 99
                                                                                        je    .Lx152_44
                        cmp              eax, 13
                                                                                        jne   .Lx152_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx152_44
                                                                                        jmp   .Lx152_45
.Lx152_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx152_53
                        cmp              eax, 99
                                                                                        je    .Lx152_53
                        cmp              eax, 13
                                                                                        jne   .Lx152_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx152_53
                                                                                        jmp   .Lx152_46
.Lx152_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx152_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx152_53
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
                                                                                        jmp   .Lx152_51
.Lx152_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx152_47
                        cmp              eax, 99
                                                                                        je    .Lx152_47
                        cmp              eax, 13
                                                                                        jne   .Lx152_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx152_47
                                                                                        jmp   .Lx152_48
.Lx152_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx152_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx152_53
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
                                                                                        jmp   .Lx152_51
.Lx152_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx152_49
                        cmp              edx, 14
                                                                                        je    .Lx152_53
                                                                                        jmp   .Lx152_52
.Lx152_49:
                        cmp              edx, 14
                                                                                        je    .Lx152_52
                        cmp              ecx, 7
                                                                                        je    .Lx152_53
                        cmp              edx, 7
                                                                                        je    .Lx152_53
                        cmp              ecx, 6
                                                                                        jne   .Lx152_50
                        cmp              edx, 6
                                                                                        jne   .Lx152_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx152_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx152_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx152_51
                                                                                        jmp   .Lx152_52
.Lx152_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx152_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx152_53
.Lx152_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx152_54
.Lx152_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx152_54
.Lx152_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx152_54:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n37_var_ref_α
n35_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                                                                                        jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
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
.Lx157_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_41
                        cmp              esi, 1
                                                                                        jne   .Lx157_55
                        mov              r8, rax
                                                                                        jmp   .Lx157_40
.Lx157_55:
                        cmp              esi, 2
                                                                                        jne   .Lx157_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_41
                        mov              r8, rax
                                                                                        jmp   .Lx157_40
.Lx157_56:
                        cmp              eax, 13
                                                                                        jne   .Lx157_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_41
                        cmp              rax, r8
                                                                                        je    .Lx157_41
                        mov              r8, rax
                                                                                        jmp   .Lx157_40
.Lx157_41:
                        lea              r9, [rbp + 816]
.Lx157_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx157_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_43
                        cmp              esi, 1
                                                                                        jne   .Lx157_57
                        mov              r9, rax
                                                                                        jmp   .Lx157_42
.Lx157_57:
                        cmp              esi, 2
                                                                                        jne   .Lx157_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx157_43
                        mov              r9, rax
                                                                                        jmp   .Lx157_42
.Lx157_58:
                        cmp              eax, 13
                                                                                        jne   .Lx157_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx157_43
                        cmp              rax, r9
                                                                                        je    .Lx157_43
                        mov              r9, rax
                                                                                        jmp   .Lx157_42
.Lx157_43:
                        cmp              r8, r9
                                                                                        je    .Lx157_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_44
                        cmp              eax, 99
                                                                                        je    .Lx157_44
                        cmp              eax, 13
                                                                                        jne   .Lx157_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx157_44
                                                                                        jmp   .Lx157_45
.Lx157_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_53
                        cmp              eax, 99
                                                                                        je    .Lx157_53
                        cmp              eax, 13
                                                                                        jne   .Lx157_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx157_53
                                                                                        jmp   .Lx157_46
.Lx157_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx157_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx157_53
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
                                                                                        jmp   .Lx157_51
.Lx157_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx157_47
                        cmp              eax, 99
                                                                                        je    .Lx157_47
                        cmp              eax, 13
                                                                                        jne   .Lx157_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx157_47
                                                                                        jmp   .Lx157_48
.Lx157_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx157_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx157_53
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
                                                                                        jmp   .Lx157_51
.Lx157_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx157_49
                        cmp              edx, 14
                                                                                        je    .Lx157_53
                                                                                        jmp   .Lx157_52
.Lx157_49:
                        cmp              edx, 14
                                                                                        je    .Lx157_52
                        cmp              ecx, 7
                                                                                        je    .Lx157_53
                        cmp              edx, 7
                                                                                        je    .Lx157_53
                        cmp              ecx, 6
                                                                                        jne   .Lx157_50
                        cmp              edx, 6
                                                                                        jne   .Lx157_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx157_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx157_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx157_51
                                                                                        jmp   .Lx157_52
.Lx157_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx157_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx157_53
.Lx157_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx157_54
.Lx157_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx157_54
.Lx157_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx157_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n40_var_ref_α
n38_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n42_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F8_ω
                                                                                        jmp   proc_$disj0$2F8_ω
n41_op11_β:
                                                                                        jmp   proc_$disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3040]
                        lea              r8, [rbp + 3040]
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
                        lea              r9, [rbp + 3056]
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
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n44_var_ref_α
n42_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n45_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
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
                        lea              r9, [rbp + 736]
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
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n47_var_ref_α
n45_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n48_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2960]
                        lea              r8, [rbp + 2960]
.Lx173_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx173_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx173_41
                        cmp              esi, 1
                                                                                        jne   .Lx173_55
                        mov              r8, rax
                                                                                        jmp   .Lx173_40
.Lx173_55:
                        cmp              esi, 2
                                                                                        jne   .Lx173_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx173_41
                        mov              r8, rax
                                                                                        jmp   .Lx173_40
.Lx173_56:
                        cmp              eax, 13
                                                                                        jne   .Lx173_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx173_41
                        cmp              rax, r8
                                                                                        je    .Lx173_41
                        mov              r8, rax
                                                                                        jmp   .Lx173_40
.Lx173_41:
                        lea              r9, [rbp + 2976]
.Lx173_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx173_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx173_43
                        cmp              esi, 1
                                                                                        jne   .Lx173_57
                        mov              r9, rax
                                                                                        jmp   .Lx173_42
.Lx173_57:
                        cmp              esi, 2
                                                                                        jne   .Lx173_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx173_43
                        mov              r9, rax
                                                                                        jmp   .Lx173_42
.Lx173_58:
                        cmp              eax, 13
                                                                                        jne   .Lx173_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx173_43
                        cmp              rax, r9
                                                                                        je    .Lx173_43
                        mov              r9, rax
                                                                                        jmp   .Lx173_42
.Lx173_43:
                        cmp              r8, r9
                                                                                        je    .Lx173_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx173_44
                        cmp              eax, 99
                                                                                        je    .Lx173_44
                        cmp              eax, 13
                                                                                        jne   .Lx173_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx173_44
                                                                                        jmp   .Lx173_45
.Lx173_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx173_53
                        cmp              eax, 99
                                                                                        je    .Lx173_53
                        cmp              eax, 13
                                                                                        jne   .Lx173_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx173_53
                                                                                        jmp   .Lx173_46
.Lx173_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx173_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx173_53
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
                                                                                        jmp   .Lx173_51
.Lx173_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx173_47
                        cmp              eax, 99
                                                                                        je    .Lx173_47
                        cmp              eax, 13
                                                                                        jne   .Lx173_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx173_47
                                                                                        jmp   .Lx173_48
.Lx173_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx173_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx173_53
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
                                                                                        jmp   .Lx173_51
.Lx173_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx173_49
                        cmp              edx, 14
                                                                                        je    .Lx173_53
                                                                                        jmp   .Lx173_52
.Lx173_49:
                        cmp              edx, 14
                                                                                        je    .Lx173_52
                        cmp              ecx, 7
                                                                                        je    .Lx173_53
                        cmp              edx, 7
                                                                                        je    .Lx173_53
                        cmp              ecx, 6
                                                                                        jne   .Lx173_50
                        cmp              edx, 6
                                                                                        jne   .Lx173_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx173_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx173_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx173_51
                                                                                        jmp   .Lx173_52
.Lx173_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx173_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx173_53
.Lx173_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx173_54
.Lx173_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx173_54
.Lx173_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx173_54:
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n50_var_ref_α
n48_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n51_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
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
                        lea              r9, [rbp + 656]
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
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n53_var_ref_α
n51_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2880]
                        lea              r8, [rbp + 2880]
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
                        lea              r9, [rbp + 2896]
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
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n56_var_ref_α
n54_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
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
.Lx188_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx188_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx188_41
                        cmp              esi, 1
                                                                                        jne   .Lx188_55
                        mov              r8, rax
                                                                                        jmp   .Lx188_40
.Lx188_55:
                        cmp              esi, 2
                                                                                        jne   .Lx188_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx188_41
                        mov              r8, rax
                                                                                        jmp   .Lx188_40
.Lx188_56:
                        cmp              eax, 13
                                                                                        jne   .Lx188_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx188_41
                        cmp              rax, r8
                                                                                        je    .Lx188_41
                        mov              r8, rax
                                                                                        jmp   .Lx188_40
.Lx188_41:
                        lea              r9, [rbp + 576]
.Lx188_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx188_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx188_43
                        cmp              esi, 1
                                                                                        jne   .Lx188_57
                        mov              r9, rax
                                                                                        jmp   .Lx188_42
.Lx188_57:
                        cmp              esi, 2
                                                                                        jne   .Lx188_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx188_43
                        mov              r9, rax
                                                                                        jmp   .Lx188_42
.Lx188_58:
                        cmp              eax, 13
                                                                                        jne   .Lx188_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx188_43
                        cmp              rax, r9
                                                                                        je    .Lx188_43
                        mov              r9, rax
                                                                                        jmp   .Lx188_42
.Lx188_43:
                        cmp              r8, r9
                                                                                        je    .Lx188_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx188_44
                        cmp              eax, 99
                                                                                        je    .Lx188_44
                        cmp              eax, 13
                                                                                        jne   .Lx188_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx188_44
                                                                                        jmp   .Lx188_45
.Lx188_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx188_53
                        cmp              eax, 99
                                                                                        je    .Lx188_53
                        cmp              eax, 13
                                                                                        jne   .Lx188_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx188_53
                                                                                        jmp   .Lx188_46
.Lx188_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx188_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx188_53
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
                                                                                        jmp   .Lx188_51
.Lx188_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx188_47
                        cmp              eax, 99
                                                                                        je    .Lx188_47
                        cmp              eax, 13
                                                                                        jne   .Lx188_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx188_47
                                                                                        jmp   .Lx188_48
.Lx188_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx188_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx188_53
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
                                                                                        jmp   .Lx188_51
.Lx188_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx188_49
                        cmp              edx, 14
                                                                                        je    .Lx188_53
                                                                                        jmp   .Lx188_52
.Lx188_49:
                        cmp              edx, 14
                                                                                        je    .Lx188_52
                        cmp              ecx, 7
                                                                                        je    .Lx188_53
                        cmp              edx, 7
                                                                                        je    .Lx188_53
                        cmp              ecx, 6
                                                                                        jne   .Lx188_50
                        cmp              edx, 6
                                                                                        jne   .Lx188_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx188_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx188_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx188_51
                                                                                        jmp   .Lx188_52
.Lx188_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx188_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx188_53
.Lx188_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx188_54
.Lx188_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx188_54
.Lx188_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx188_54:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n59_var_ref_α
n57_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2800]
                        lea              r8, [rbp + 2800]
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
                        lea              r9, [rbp + 2816]
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
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n62_var_ref_α
n60_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
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
.Lx198_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx198_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx198_41
                        cmp              rax, r8
                                                                                        je    .Lx198_41
                        mov              r8, rax
                                                                                        jmp   .Lx198_40
.Lx198_41:
                        lea              r9, [rbp + 496]
.Lx198_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx198_44
                        cmp              eax, 13
                                                                                        jne   .Lx198_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx198_44
                                                                                        jmp   .Lx198_45
.Lx198_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx198_53
                        cmp              eax, 99
                                                                                        je    .Lx198_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx198_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx198_49
                        cmp              edx, 14
                                                                                        je    .Lx198_53
                                                                                        jmp   .Lx198_52
.Lx198_49:
                        cmp              edx, 14
                                                                                        je    .Lx198_52
                        cmp              ecx, 7
                                                                                        je    .Lx198_53
                        cmp              edx, 7
                                                                                        je    .Lx198_53
                        cmp              ecx, 6
                                                                                        jne   .Lx198_50
                        cmp              edx, 6
                                                                                        jne   .Lx198_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx198_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx198_54
.Lx198_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx198_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n65_var_ref_α
n63_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rdi, [rbp + 2720]
                        lea              r8, [rbp + 2720]
.Lx203_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              rax, r8
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_41:
                        lea              r9, [rbp + 2736]
.Lx203_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx203_44
                        cmp              eax, 13
                                                                                        jne   .Lx203_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx203_44
                                                                                        jmp   .Lx203_45
.Lx203_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_53
                        cmp              eax, 99
                                                                                        je    .Lx203_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx203_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx203_49
                        cmp              edx, 14
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_52
.Lx203_49:
                        cmp              edx, 14
                                                                                        je    .Lx203_52
                        cmp              ecx, 7
                                                                                        je    .Lx203_53
                        cmp              edx, 7
                                                                                        je    .Lx203_53
                        cmp              ecx, 6
                                                                                        jne   .Lx203_50
                        cmp              edx, 6
                                                                                        jne   .Lx203_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx203_54
.Lx203_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx203_54:
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n68_var_ref_α
n66_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
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
.Lx208_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx208_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_41
                        cmp              esi, 1
                                                                                        jne   .Lx208_55
                        mov              r8, rax
                                                                                        jmp   .Lx208_40
.Lx208_55:
                        cmp              esi, 2
                                                                                        jne   .Lx208_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx208_41
                        mov              r8, rax
                                                                                        jmp   .Lx208_40
.Lx208_56:
                        cmp              eax, 13
                                                                                        jne   .Lx208_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_41
                        cmp              rax, r8
                                                                                        je    .Lx208_41
                        mov              r8, rax
                                                                                        jmp   .Lx208_40
.Lx208_41:
                        lea              r9, [rbp + 416]
.Lx208_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx208_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_43
                        cmp              esi, 1
                                                                                        jne   .Lx208_57
                        mov              r9, rax
                                                                                        jmp   .Lx208_42
.Lx208_57:
                        cmp              esi, 2
                                                                                        jne   .Lx208_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx208_43
                        mov              r9, rax
                                                                                        jmp   .Lx208_42
.Lx208_58:
                        cmp              eax, 13
                                                                                        jne   .Lx208_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx208_43
                        cmp              rax, r9
                                                                                        je    .Lx208_43
                        mov              r9, rax
                                                                                        jmp   .Lx208_42
.Lx208_43:
                        cmp              r8, r9
                                                                                        je    .Lx208_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx208_44
                        cmp              eax, 99
                                                                                        je    .Lx208_44
                        cmp              eax, 13
                                                                                        jne   .Lx208_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx208_44
                                                                                        jmp   .Lx208_45
.Lx208_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx208_53
                        cmp              eax, 99
                                                                                        je    .Lx208_53
                        cmp              eax, 13
                                                                                        jne   .Lx208_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx208_53
                                                                                        jmp   .Lx208_46
.Lx208_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx208_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx208_53
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
                                                                                        jmp   .Lx208_51
.Lx208_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx208_47
                        cmp              eax, 99
                                                                                        je    .Lx208_47
                        cmp              eax, 13
                                                                                        jne   .Lx208_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx208_47
                                                                                        jmp   .Lx208_48
.Lx208_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx208_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx208_53
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
                                                                                        jmp   .Lx208_51
.Lx208_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx208_49
                        cmp              edx, 14
                                                                                        je    .Lx208_53
                                                                                        jmp   .Lx208_52
.Lx208_49:
                        cmp              edx, 14
                                                                                        je    .Lx208_52
                        cmp              ecx, 7
                                                                                        je    .Lx208_53
                        cmp              edx, 7
                                                                                        je    .Lx208_53
                        cmp              ecx, 6
                                                                                        jne   .Lx208_50
                        cmp              edx, 6
                                                                                        jne   .Lx208_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx208_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx208_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx208_51
                                                                                        jmp   .Lx208_52
.Lx208_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx208_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx208_53
.Lx208_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx208_54
.Lx208_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx208_54
.Lx208_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx208_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n71_var_ref_α
n69_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n72_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2640]
                        lea              r8, [rbp + 2640]
.Lx213_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx213_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        cmp              esi, 1
                                                                                        jne   .Lx213_55
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_55:
                        cmp              esi, 2
                                                                                        jne   .Lx213_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_56:
                        cmp              eax, 13
                                                                                        jne   .Lx213_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_41
                        cmp              rax, r8
                                                                                        je    .Lx213_41
                        mov              r8, rax
                                                                                        jmp   .Lx213_40
.Lx213_41:
                        lea              r9, [rbp + 2656]
.Lx213_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx213_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        cmp              esi, 1
                                                                                        jne   .Lx213_57
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_57:
                        cmp              esi, 2
                                                                                        jne   .Lx213_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_58:
                        cmp              eax, 13
                                                                                        jne   .Lx213_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx213_43
                        cmp              rax, r9
                                                                                        je    .Lx213_43
                        mov              r9, rax
                                                                                        jmp   .Lx213_42
.Lx213_43:
                        cmp              r8, r9
                                                                                        je    .Lx213_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_44
                        cmp              eax, 99
                                                                                        je    .Lx213_44
                        cmp              eax, 13
                                                                                        jne   .Lx213_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx213_44
                                                                                        jmp   .Lx213_45
.Lx213_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_53
                        cmp              eax, 99
                                                                                        je    .Lx213_53
                        cmp              eax, 13
                                                                                        jne   .Lx213_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx213_53
                                                                                        jmp   .Lx213_46
.Lx213_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx213_53
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
                                                                                        jmp   .Lx213_51
.Lx213_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx213_47
                        cmp              eax, 99
                                                                                        je    .Lx213_47
                        cmp              eax, 13
                                                                                        jne   .Lx213_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx213_47
                                                                                        jmp   .Lx213_48
.Lx213_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx213_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx213_53
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
                                                                                        jmp   .Lx213_51
.Lx213_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx213_49
                        cmp              edx, 14
                                                                                        je    .Lx213_53
                                                                                        jmp   .Lx213_52
.Lx213_49:
                        cmp              edx, 14
                                                                                        je    .Lx213_52
                        cmp              ecx, 7
                                                                                        je    .Lx213_53
                        cmp              edx, 7
                                                                                        je    .Lx213_53
                        cmp              ecx, 6
                                                                                        jne   .Lx213_50
                        cmp              edx, 6
                                                                                        jne   .Lx213_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx213_51
                                                                                        jmp   .Lx213_52
.Lx213_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx213_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx213_53
.Lx213_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx213_54
.Lx213_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx213_54
.Lx213_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx213_54:
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n74_lit_integer_α
n72_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n76_lit_integer_α
.Lx216_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
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
.Lx217_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx217_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx217_41
                        cmp              esi, 1
                                                                                        jne   .Lx217_55
                        mov              r8, rax
                                                                                        jmp   .Lx217_40
.Lx217_55:
                        cmp              esi, 2
                                                                                        jne   .Lx217_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx217_41
                        mov              r8, rax
                                                                                        jmp   .Lx217_40
.Lx217_56:
                        cmp              eax, 13
                                                                                        jne   .Lx217_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx217_41
                        cmp              rax, r8
                                                                                        je    .Lx217_41
                        mov              r8, rax
                                                                                        jmp   .Lx217_40
.Lx217_41:
                        lea              r9, [rbp + 336]
.Lx217_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx217_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx217_43
                        cmp              esi, 1
                                                                                        jne   .Lx217_57
                        mov              r9, rax
                                                                                        jmp   .Lx217_42
.Lx217_57:
                        cmp              esi, 2
                                                                                        jne   .Lx217_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx217_43
                        mov              r9, rax
                                                                                        jmp   .Lx217_42
.Lx217_58:
                        cmp              eax, 13
                                                                                        jne   .Lx217_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx217_43
                        cmp              rax, r9
                                                                                        je    .Lx217_43
                        mov              r9, rax
                                                                                        jmp   .Lx217_42
.Lx217_43:
                        cmp              r8, r9
                                                                                        je    .Lx217_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx217_44
                        cmp              eax, 99
                                                                                        je    .Lx217_44
                        cmp              eax, 13
                                                                                        jne   .Lx217_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx217_44
                                                                                        jmp   .Lx217_45
.Lx217_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx217_53
                        cmp              eax, 99
                                                                                        je    .Lx217_53
                        cmp              eax, 13
                                                                                        jne   .Lx217_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx217_53
                                                                                        jmp   .Lx217_46
.Lx217_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx217_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx217_53
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
                                                                                        jmp   .Lx217_51
.Lx217_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx217_47
                        cmp              eax, 99
                                                                                        je    .Lx217_47
                        cmp              eax, 13
                                                                                        jne   .Lx217_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx217_47
                                                                                        jmp   .Lx217_48
.Lx217_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx217_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx217_53
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
                                                                                        jmp   .Lx217_51
.Lx217_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx217_49
                        cmp              edx, 14
                                                                                        je    .Lx217_53
                                                                                        jmp   .Lx217_52
.Lx217_49:
                        cmp              edx, 14
                                                                                        je    .Lx217_52
                        cmp              ecx, 7
                                                                                        je    .Lx217_53
                        cmp              edx, 7
                                                                                        je    .Lx217_53
                        cmp              ecx, 6
                                                                                        jne   .Lx217_50
                        cmp              edx, 6
                                                                                        jne   .Lx217_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx217_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx217_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx217_51
                                                                                        jmp   .Lx217_52
.Lx217_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx217_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx217_53
.Lx217_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx217_54
.Lx217_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx217_54
.Lx217_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx217_54:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n77_var_ref_α
n75_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n78_var_ref_α
.Lx218_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
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
                        lea              r9, [rbp + 256]
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
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n83_suspend_α
n81_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_suspend_α:
                        lea              rax, [rip + n83_suspend_β]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F8_γ
n83_suspend_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_20
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx235_21
.Lx235_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
                        call             rt_arg_stage@PLT
.Lx235_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_22
                        mov              rax, qword ptr [rbp + 2544]
                        mov              rdx, qword ptr [rbp + 2552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx235_23
.Lx235_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2544]
                        mov              rdx, qword ptr [rbp + 2552]
                        call             rt_arg_stage@PLT
.Lx235_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_24
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx235_25
.Lx235_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        call             rt_arg_stage@PLT
.Lx235_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_26
                        mov              rax, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx235_27
.Lx235_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2576]
                        mov              rdx, qword ptr [rbp + 2584]
                        call             rt_arg_stage@PLT
.Lx235_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_28
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx235_29
.Lx235_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        call             rt_arg_stage@PLT
.Lx235_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx235_30
                        mov              rax, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx235_31
.Lx235_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 2608]
                        mov              rdx, qword ptr [rbp + 2616]
                        call             rt_arg_stage@PLT
.Lx235_31:
                        mov              edi, 5
                        mov              esi, 6
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx235_1
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
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n86_var_α
n85_call_proc_staged_β:
                                                                                        jmp   n32_op11_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "arith/6"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n87_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn239:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn239]
                        lea              rsi, [rbp + 2368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n88_lit_string_α
n87_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n89_op11_α
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn242:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n90_var_α
n89_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n91_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn246:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn246]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n92_lit_string_α
n91_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 2240], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n93_op11_α
.Lx247_0:
                        .quad            .Lx247_0_s
.Lx247_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2232], rax
                        .section         .rodata
.Lrkfn249:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n94_var_α
n93_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n95_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn253:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n96_lit_string_α
n95_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n97_op11_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn256:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n98_var_α
n97_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn260:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n100_lit_string_α
n99_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n101_op11_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn263:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n102_var_ref_α
n101_op11_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n103_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        lea              rsi, [rbp + 2000]
                        call             proc_float_check$2F1_dcα
                                                                                        jmp   .Lx267_2
.Lx267_2:
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n104_var_α
n103_call_proc_staged_β:
                                                                                        jmp   n85_call_proc_staged_β
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "float_check/1"
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n105_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                        .section         .rodata
.Lrkfn271:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rbp + 1920]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    n103_call_proc_staged_β
                                                                                        jmp   n106_lit_string_α
n105_op11_β:
                                                                                        jmp   n103_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n107_op11_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                        .section         .rodata
.Lrkfn274:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rbp + 1872]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n103_call_proc_staged_β
                                                                                        jmp   n108_lit_integer_α
n107_op11_β:
                                                                                        jmp   n103_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 6
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n109_lit_integer_α
.Lx275_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:
                        mov              qword ptr [rbp + 1824], 6
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n110_var_ref_α
.Lx276_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_proc_staged_α:
                        lea              rsi, [rbp + 1808]
                        lea              rdx, [rbp + 1824]
                        lea              rcx, [rbp + 1840]
                        call             proc_max$2F3_dcα
                                                                                        jmp   .Lx280_2
.Lx280_2:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n103_call_proc_staged_β
                                                                                        jmp   n112_var_α
n111_call_proc_staged_β:
                                                                                        jmp   n103_call_proc_staged_β
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "max/3"
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lrkfn284:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 1696]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n111_call_proc_staged_β
                                                                                        jmp   n114_lit_string_α
n113_op11_β:
                                                                                        jmp   n111_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n115_op11_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1656], rax
                        .section         .rodata
.Lrkfn287:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n111_call_proc_staged_β
                                                                                        jmp   n116_lit_string_α
n115_op11_β:
                                                                                        jmp   n111_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n117_var_ref_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n118_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_proc_staged_α:
                        lea              rsi, [rbp + 1600]
                        lea              rdx, [rbp + 1616]
                        call             proc_unify_test$2F2_dcα
                                                                                        jmp   .Lx292_2
.Lx292_2:
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n111_call_proc_staged_β
                                                                                        jmp   n119_var_α
n118_call_proc_staged_β:
                                                                                        jmp   n111_call_proc_staged_β
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "unify_test/2"
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax
                        .section         .rodata
.Lrkfn296:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rbp + 1504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n118_call_proc_staged_β
                                                                                        jmp   n121_lit_string_α
n120_op11_β:
                                                                                        jmp   n118_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n122_op11_α
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn299:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n118_call_proc_staged_β
                                                                                        jmp   n123_var_ref_α
n122_op11_β:
                                                                                        jmp   n118_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n125_lit_string_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n126_lit_string_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 1312], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n127_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n128_lit_string_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n129_lit_string_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n130_lit_string_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n131_op11_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F8_ω
                                                                                        jmp   n132_op11_α
n131_op11_β:
                                                                                        jmp   proc_$disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F8_ω
                                                                                        jmp   n133_op11_α
n132_op11_β:
                                                                                        jmp   proc_$disj0$2F8_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n32_op11_α
                                                                                        jmp   n134_call_proc_staged_α
n133_op11_β:
                                                                                        jmp   n32_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_proc_staged_α:
                        mov              qword ptr [rbp + 1040], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx313_20
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx313_21
.Lx313_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx313_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx313_22
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx313_23
.Lx313_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        call             rt_arg_stage@PLT
.Lx313_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx313_1
                        lea              rcx, [rip + .Lx313_3]
                        lea              rdx, [rip + .Lx313_4]
                                                                                        jmp   rax
.Lx313_3:
                        mov              qword ptr [rbp + 1048], rsp
                        mov              rax, qword ptr [rbp + 1040]
                        test             rax, rax
                                                                                        jne   .Lx313_5
                        mov              qword ptr [rbp + 1040], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx313_2
.Lx313_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx313_2
.Lx313_4:
                        mov              rax, qword ptr [rbp + 1040]
                        test             rax, rax
                                                                                        jne   .Lx313_6
                        mov              qword ptr [rbp + 1040], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx313_2
.Lx313_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx313_2
.Lx313_1:
                        call             rt_faildescr@PLT
.Lx313_2:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n118_call_proc_staged_β
                                                                                        jmp   n135_var_α
n134_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1048]
                                                                                        jmp   qword ptr [rsp]
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n136_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n136_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn317:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn317]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n134_call_proc_staged_β
                                                                                        jmp   n137_lit_string_α
n136_op11_β:
                                                                                        jmp   n134_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n138_op11_α
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n138_op11_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn320:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn320]
                        lea              rsi, [rbp + 912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n134_call_proc_staged_β
                                                                                        jmp   n134_call_proc_staged_β
n138_op11_β:
                                                                                        jmp   n134_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F8_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F8_β:
                                                                                        jmp   qword ptr [rbp + 3264]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F8_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F8_res]
                        push             rax
                        mov              rax, [rbp + 3416]
                        mov              rbp, [rbp + 3432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F8_ω:
                        mov              rax, [rbp + 3424]
                        lea              rsp, [rbp + 3440]
                        mov              rbp, [rbp + 3432]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_float_check$2F1_α
proc_float_check$2F1_α:
                        .global          proc_float_check$2F1_α
                        .global          proc_float_check$2F1_β
                        .global          proc_float_check$2F1_γ
                        .global          proc_float_check$2F1_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_float_check$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n321_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx333_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx333_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx333_101
.Lx333_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx333_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_float_check$2F1_ω
                                                                                        jmp   n322_var_ref_α
n321_op11_β:
                                                                                        jmp   proc_float_check$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n324_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n324_op11_α:
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
.Lx338_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx338_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx338_41
                        cmp              esi, 1
                                                                                        jne   .Lx338_55
                        mov              r8, rax
                                                                                        jmp   .Lx338_40
.Lx338_55:
                        cmp              esi, 2
                                                                                        jne   .Lx338_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx338_41
                        mov              r8, rax
                                                                                        jmp   .Lx338_40
.Lx338_56:
                        cmp              eax, 13
                                                                                        jne   .Lx338_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx338_41
                        cmp              rax, r8
                                                                                        je    .Lx338_41
                        mov              r8, rax
                                                                                        jmp   .Lx338_40
.Lx338_41:
                        lea              r9, [rbp + 320]
.Lx338_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx338_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx338_43
                        cmp              esi, 1
                                                                                        jne   .Lx338_57
                        mov              r9, rax
                                                                                        jmp   .Lx338_42
.Lx338_57:
                        cmp              esi, 2
                                                                                        jne   .Lx338_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx338_43
                        mov              r9, rax
                                                                                        jmp   .Lx338_42
.Lx338_58:
                        cmp              eax, 13
                                                                                        jne   .Lx338_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx338_43
                        cmp              rax, r9
                                                                                        je    .Lx338_43
                        mov              r9, rax
                                                                                        jmp   .Lx338_42
.Lx338_43:
                        cmp              r8, r9
                                                                                        je    .Lx338_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx338_44
                        cmp              eax, 99
                                                                                        je    .Lx338_44
                        cmp              eax, 13
                                                                                        jne   .Lx338_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx338_44
                                                                                        jmp   .Lx338_45
.Lx338_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx338_53
                        cmp              eax, 99
                                                                                        je    .Lx338_53
                        cmp              eax, 13
                                                                                        jne   .Lx338_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx338_53
                                                                                        jmp   .Lx338_46
.Lx338_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx338_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx338_53
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
                                                                                        jmp   .Lx338_51
.Lx338_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx338_47
                        cmp              eax, 99
                                                                                        je    .Lx338_47
                        cmp              eax, 13
                                                                                        jne   .Lx338_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx338_47
                                                                                        jmp   .Lx338_48
.Lx338_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx338_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx338_53
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
                                                                                        jmp   .Lx338_51
.Lx338_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx338_49
                        cmp              edx, 14
                                                                                        je    .Lx338_53
                                                                                        jmp   .Lx338_52
.Lx338_49:
                        cmp              edx, 14
                                                                                        je    .Lx338_52
                        cmp              ecx, 7
                                                                                        je    .Lx338_53
                        cmp              edx, 7
                                                                                        je    .Lx338_53
                        cmp              ecx, 6
                                                                                        jne   .Lx338_50
                        cmp              edx, 6
                                                                                        jne   .Lx338_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx338_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx338_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx338_51
                                                                                        jmp   .Lx338_52
.Lx338_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx338_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx338_53
.Lx338_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx338_54
.Lx338_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx338_54
.Lx338_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx338_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n326_op11_α
                                                                                        jmp   n325_var_ref_α
n324_op11_β:
                                                                                        jmp   n326_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 368]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n327_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n326_op11_α:
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
                                                                                        je    proc_float_check$2F1_ω
                                                                                        jmp   proc_float_check$2F1_ω
n326_op11_β:
                                                                                        jmp   proc_float_check$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_real_α:
                        mov              qword ptr [rbp + 256], 7
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n328_lit_real_α
.Lx342_0:
                        .quad            4614253070214989087
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_real_α:
                        mov              qword ptr [rbp + 272], 7
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n329_op11_α
.Lx343_0:
                        .quad            4611686018427387904
#-----------------------------------------------------------------------------------------------------------------------
n329_op11_α:
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
                                                                                        je    n326_op11_α
                                                                                        jmp   n330_op11_α
n329_op11_β:
                                                                                        jmp   n326_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n330_op11_α:
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
                                                                                        je    n326_op11_α
                                                                                        jmp   n331_move_label_α
n330_op11_β:
                                                                                        jmp   n326_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n331_move_label_α:
                        lea              rax, [rip + n326_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_float_check$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n332_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n332_disjunction_β:
                                                                                        jmp   proc_float_check$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_float_check$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_float_check$2F1_β:
                                                                                        jmp   n332_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_float_check$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 392]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_float_check$2F1_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_float_check$2F1_dcα:
                        pop              r11
                        sub              rsp, 432
                        mov              qword ptr [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 384], r11
                        lea              rax, [rip + .Lx350_2]
                        mov              qword ptr [rbp + 392], rax
                        lea              rax, [rip + .Lx350_3]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 368
                        mov              edx, 384
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_float_check$2F1_α_body
.Lx350_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -416
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx350_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -416
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        lea              rax, [rip + n363_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx373_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx373_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx373_101
.Lx373_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx373_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_member$2F2_ω
                                                                                        jmp   n352_var_ref_α
n351_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n354_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
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
.Lx378_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx378_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx378_41
                        cmp              esi, 1
                                                                                        jne   .Lx378_55
                        mov              r8, rax
                                                                                        jmp   .Lx378_40
.Lx378_55:
                        cmp              esi, 2
                                                                                        jne   .Lx378_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx378_41
                        mov              r8, rax
                                                                                        jmp   .Lx378_40
.Lx378_56:
                        cmp              eax, 13
                                                                                        jne   .Lx378_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx378_41
                        cmp              rax, r8
                                                                                        je    .Lx378_41
                        mov              r8, rax
                                                                                        jmp   .Lx378_40
.Lx378_41:
                        lea              r9, [rbp + 608]
.Lx378_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx378_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx378_43
                        cmp              esi, 1
                                                                                        jne   .Lx378_57
                        mov              r9, rax
                                                                                        jmp   .Lx378_42
.Lx378_57:
                        cmp              esi, 2
                                                                                        jne   .Lx378_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx378_43
                        mov              r9, rax
                                                                                        jmp   .Lx378_42
.Lx378_58:
                        cmp              eax, 13
                                                                                        jne   .Lx378_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx378_43
                        cmp              rax, r9
                                                                                        je    .Lx378_43
                        mov              r9, rax
                                                                                        jmp   .Lx378_42
.Lx378_43:
                        cmp              r8, r9
                                                                                        je    .Lx378_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx378_44
                        cmp              eax, 99
                                                                                        je    .Lx378_44
                        cmp              eax, 13
                                                                                        jne   .Lx378_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx378_44
                                                                                        jmp   .Lx378_45
.Lx378_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx378_53
                        cmp              eax, 99
                                                                                        je    .Lx378_53
                        cmp              eax, 13
                                                                                        jne   .Lx378_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx378_53
                                                                                        jmp   .Lx378_46
.Lx378_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx378_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx378_53
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
                                                                                        jmp   .Lx378_51
.Lx378_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx378_47
                        cmp              eax, 99
                                                                                        je    .Lx378_47
                        cmp              eax, 13
                                                                                        jne   .Lx378_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx378_47
                                                                                        jmp   .Lx378_48
.Lx378_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx378_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx378_53
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
                                                                                        jmp   .Lx378_51
.Lx378_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx378_49
                        cmp              edx, 14
                                                                                        je    .Lx378_53
                                                                                        jmp   .Lx378_52
.Lx378_49:
                        cmp              edx, 14
                                                                                        je    .Lx378_52
                        cmp              ecx, 7
                                                                                        je    .Lx378_53
                        cmp              edx, 7
                                                                                        je    .Lx378_53
                        cmp              ecx, 6
                                                                                        jne   .Lx378_50
                        cmp              edx, 6
                                                                                        jne   .Lx378_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx378_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx378_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx378_51
                                                                                        jmp   .Lx378_52
.Lx378_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx378_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx378_53
.Lx378_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx378_54
.Lx378_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx378_54
.Lx378_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx378_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n356_op11_α
                                                                                        jmp   n355_var_ref_α
n354_op11_β:
                                                                                        jmp   n356_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n357_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_op11_α:
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
                                                                                        jmp   n358_var_ref_α
n356_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n357_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n360_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n362_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
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
.Lx390_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx390_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_61
                        cmp              esi, 1
                                                                                        jne   .Lx390_62
                        mov              r8, rax
                                                                                        jmp   .Lx390_60
.Lx390_62:
                        cmp              esi, 2
                                                                                        jne   .Lx390_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_61
                        mov              r8, rax
                                                                                        jmp   .Lx390_60
.Lx390_63:
                        cmp              eax, 13
                                                                                        jne   .Lx390_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_61
                        cmp              rax, r8
                                                                                        je    .Lx390_61
                        mov              r8, rax
                                                                                        jmp   .Lx390_60
.Lx390_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_80
                        cmp              eax, 99
                                                                                        je    .Lx390_80
                        cmp              eax, 13
                                                                                        jne   .Lx390_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx390_80
                                                                                        jmp   .Lx390_74
.Lx390_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx390_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx390_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx390_73
                        lea              r9, [rbp + 512]
.Lx390_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx390_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_65
                        cmp              esi, 1
                                                                                        jne   .Lx390_66
                        mov              r9, rax
                                                                                        jmp   .Lx390_64
.Lx390_66:
                        cmp              esi, 2
                                                                                        jne   .Lx390_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_65
                        mov              r9, rax
                                                                                        jmp   .Lx390_64
.Lx390_67:
                        cmp              eax, 13
                                                                                        jne   .Lx390_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_65
                        cmp              rax, r9
                                                                                        je    .Lx390_65
                        mov              r9, rax
                                                                                        jmp   .Lx390_64
.Lx390_65:
                        lea              rcx, [rbp + 528]
.Lx390_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx390_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx390_69
                        cmp              esi, 1
                                                                                        jne   .Lx390_70
                        mov              rcx, rax
                                                                                        jmp   .Lx390_68
.Lx390_70:
                        cmp              esi, 2
                                                                                        jne   .Lx390_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_69
                        mov              rcx, rax
                                                                                        jmp   .Lx390_68
.Lx390_71:
                        cmp              eax, 13
                                                                                        jne   .Lx390_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx390_69
                        cmp              rax, rcx
                                                                                        je    .Lx390_69
                        mov              rcx, rax
                                                                                        jmp   .Lx390_68
.Lx390_69:
                        cmp              r9, rcx
                                                                                        je    .Lx390_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_75
                        cmp              eax, 99
                                                                                        je    .Lx390_75
                        cmp              eax, 13
                                                                                        jne   .Lx390_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx390_75
                                                                                        jmp   .Lx390_72
.Lx390_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_76
                        cmp              eax, 99
                                                                                        je    .Lx390_76
                        cmp              eax, 13
                                                                                        jne   .Lx390_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx390_76
                                                                                        jmp   .Lx390_72
.Lx390_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx390_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx390_72
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
                                                                                        jmp   .Lx390_77
.Lx390_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx390_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx390_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx390_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx390_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx390_72
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
.Lx390_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx390_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_82
                        cmp              esi, 1
                                                                                        jne   .Lx390_83
                        mov              r9, rax
                                                                                        jmp   .Lx390_81
.Lx390_83:
                        cmp              esi, 2
                                                                                        jne   .Lx390_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_82
                        mov              r9, rax
                                                                                        jmp   .Lx390_81
.Lx390_84:
                        cmp              eax, 13
                                                                                        jne   .Lx390_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx390_82
                        cmp              rax, r9
                                                                                        je    .Lx390_82
                        mov              r9, rax
                                                                                        jmp   .Lx390_81
.Lx390_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_85
                        cmp              eax, 99
                                                                                        je    .Lx390_85
                        cmp              eax, 13
                                                                                        jne   .Lx390_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx390_85
                                                                                        jmp   .Lx390_86
.Lx390_85:
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
                                                                                        jmp   .Lx390_87
.Lx390_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx390_87:
                        lea              rcx, [rbp + 528]
.Lx390_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx390_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx390_89
                        cmp              esi, 1
                                                                                        jne   .Lx390_90
                        mov              rcx, rax
                                                                                        jmp   .Lx390_88
.Lx390_90:
                        cmp              esi, 2
                                                                                        jne   .Lx390_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx390_89
                        mov              rcx, rax
                                                                                        jmp   .Lx390_88
.Lx390_91:
                        cmp              eax, 13
                                                                                        jne   .Lx390_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx390_89
                        cmp              rax, rcx
                                                                                        je    .Lx390_89
                        mov              rcx, rax
                                                                                        jmp   .Lx390_88
.Lx390_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx390_92
                        cmp              eax, 99
                                                                                        je    .Lx390_92
                        cmp              eax, 13
                                                                                        jne   .Lx390_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx390_92
                                                                                        jmp   .Lx390_93
.Lx390_92:
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
                                                                                        jmp   .Lx390_94
.Lx390_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx390_94:
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
                                                                                        jmp   .Lx390_77
.Lx390_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx390_77
.Lx390_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx390_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n356_op11_α
                                                                                        jmp   n363_suspend_α
n361_op11_β:
                                                                                        jmp   n356_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
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
                        lea              r9, [rbp + 368]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n364_var_ref_α
n362_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n363_suspend_α:
                        lea              rax, [rip + n363_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n363_suspend_β:
                                                                                        jmp   n356_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n366_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n365_op11_α:
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
n365_op11_β:
                                                                                        jmp   proc_member$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n368_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n368_op11_α:
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
                        lea              r9, [rbp + 272]
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
                        lea              rcx, [rbp + 288]
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
                        lea              r9, [rbp + 272]
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
                        lea              rcx, [rbp + 288]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n369_var_ref_α
n368_op11_β:
                                                                                        jmp   n365_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n369_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n370_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n371_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n371_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx407_21
.Lx407_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx407_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx407_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx407_23
.Lx407_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx407_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx407_1
                        lea              rcx, [rip + .Lx407_3]
                        lea              rdx, [rip + .Lx407_4]
                                                                                        jmp   rax
.Lx407_3:
                        mov              qword ptr [rbp + 168], rsp
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx407_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx407_2
.Lx407_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx407_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx407_2
.Lx407_1:
                        call             rt_faildescr@PLT
.Lx407_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n365_op11_α
                                                                                        jmp   n372_suspend_α
n371_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 168]
                                                                                        jmp   qword ptr [rsp]
.Lx407_0:
                        .quad            .Lx407_0_s
.Lx407_0_s:
                        .string          "member/2"
#-----------------------------------------------------------------------------------------------------------------------
n372_suspend_α:
                        lea              rax, [rip + n372_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_member$2F2_γ
n372_suspend_β:
                                                                                        jmp   n371_call_proc_staged_β
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
                        .globl           proc_max$2F3_α
proc_max$2F3_α:
                        .global          proc_max$2F3_α
                        .global          proc_max$2F3_β
                        .global          proc_max$2F3_γ
                        .global          proc_max$2F3_ω
                        sub              rsp, 832
                        mov              [rsp + 808], rcx
                        mov              [rsp + 816], rdx
                        mov              [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 752
                        mov              edx, 800
                        call             rt_jmp_frame_lexprep2@PLT
proc_max$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n410_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx438_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx438_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx438_101
.Lx438_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx438_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_max$2F3_ω
                                                                                        jmp   n411_var_ref_α
n410_op11_β:
                                                                                        jmp   proc_max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n412_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n412_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n413_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
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
.Lx443_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx443_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx443_41
                        cmp              esi, 1
                                                                                        jne   .Lx443_55
                        mov              r8, rax
                                                                                        jmp   .Lx443_40
.Lx443_55:
                        cmp              esi, 2
                                                                                        jne   .Lx443_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx443_41
                        mov              r8, rax
                                                                                        jmp   .Lx443_40
.Lx443_56:
                        cmp              eax, 13
                                                                                        jne   .Lx443_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx443_41
                        cmp              rax, r8
                                                                                        je    .Lx443_41
                        mov              r8, rax
                                                                                        jmp   .Lx443_40
.Lx443_41:
                        lea              r9, [rbp + 704]
.Lx443_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx443_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx443_43
                        cmp              esi, 1
                                                                                        jne   .Lx443_57
                        mov              r9, rax
                                                                                        jmp   .Lx443_42
.Lx443_57:
                        cmp              esi, 2
                                                                                        jne   .Lx443_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx443_43
                        mov              r9, rax
                                                                                        jmp   .Lx443_42
.Lx443_58:
                        cmp              eax, 13
                                                                                        jne   .Lx443_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx443_43
                        cmp              rax, r9
                                                                                        je    .Lx443_43
                        mov              r9, rax
                                                                                        jmp   .Lx443_42
.Lx443_43:
                        cmp              r8, r9
                                                                                        je    .Lx443_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx443_44
                        cmp              eax, 99
                                                                                        je    .Lx443_44
                        cmp              eax, 13
                                                                                        jne   .Lx443_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx443_44
                                                                                        jmp   .Lx443_45
.Lx443_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx443_53
                        cmp              eax, 99
                                                                                        je    .Lx443_53
                        cmp              eax, 13
                                                                                        jne   .Lx443_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx443_53
                                                                                        jmp   .Lx443_46
.Lx443_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx443_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx443_53
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
                                                                                        jmp   .Lx443_51
.Lx443_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx443_47
                        cmp              eax, 99
                                                                                        je    .Lx443_47
                        cmp              eax, 13
                                                                                        jne   .Lx443_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx443_47
                                                                                        jmp   .Lx443_48
.Lx443_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx443_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx443_53
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
                                                                                        jmp   .Lx443_51
.Lx443_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx443_49
                        cmp              edx, 14
                                                                                        je    .Lx443_53
                                                                                        jmp   .Lx443_52
.Lx443_49:
                        cmp              edx, 14
                                                                                        je    .Lx443_52
                        cmp              ecx, 7
                                                                                        je    .Lx443_53
                        cmp              edx, 7
                                                                                        je    .Lx443_53
                        cmp              ecx, 6
                                                                                        jne   .Lx443_50
                        cmp              edx, 6
                                                                                        jne   .Lx443_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx443_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx443_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx443_51
                                                                                        jmp   .Lx443_52
.Lx443_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx443_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx443_53
.Lx443_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx443_54
.Lx443_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx443_54
.Lx443_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx443_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n415_op11_α
                                                                                        jmp   n414_var_ref_α
n413_op11_β:
                                                                                        jmp   n415_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n416_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_op11_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_max$2F3_ω
                                                                                        jmp   n417_var_ref_α
n415_op11_β:
                                                                                        jmp   proc_max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n418_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n419_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
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
.Lx451_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx451_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        cmp              esi, 1
                                                                                        jne   .Lx451_55
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_55:
                        cmp              esi, 2
                                                                                        jne   .Lx451_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_56:
                        cmp              eax, 13
                                                                                        jne   .Lx451_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_41
                        cmp              rax, r8
                                                                                        je    .Lx451_41
                        mov              r8, rax
                                                                                        jmp   .Lx451_40
.Lx451_41:
                        lea              r9, [rbp + 624]
.Lx451_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx451_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        cmp              esi, 1
                                                                                        jne   .Lx451_57
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_57:
                        cmp              esi, 2
                                                                                        jne   .Lx451_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_58:
                        cmp              eax, 13
                                                                                        jne   .Lx451_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx451_43
                        cmp              rax, r9
                                                                                        je    .Lx451_43
                        mov              r9, rax
                                                                                        jmp   .Lx451_42
.Lx451_43:
                        cmp              r8, r9
                                                                                        je    .Lx451_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_44
                        cmp              eax, 99
                                                                                        je    .Lx451_44
                        cmp              eax, 13
                                                                                        jne   .Lx451_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx451_44
                                                                                        jmp   .Lx451_45
.Lx451_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_53
                        cmp              eax, 99
                                                                                        je    .Lx451_53
                        cmp              eax, 13
                                                                                        jne   .Lx451_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx451_53
                                                                                        jmp   .Lx451_46
.Lx451_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx451_53
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
                                                                                        jmp   .Lx451_51
.Lx451_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx451_47
                        cmp              eax, 99
                                                                                        je    .Lx451_47
                        cmp              eax, 13
                                                                                        jne   .Lx451_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx451_47
                                                                                        jmp   .Lx451_48
.Lx451_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx451_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx451_53
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
                                                                                        jmp   .Lx451_51
.Lx451_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx451_49
                        cmp              edx, 14
                                                                                        je    .Lx451_53
                                                                                        jmp   .Lx451_52
.Lx451_49:
                        cmp              edx, 14
                                                                                        je    .Lx451_52
                        cmp              ecx, 7
                                                                                        je    .Lx451_53
                        cmp              edx, 7
                                                                                        je    .Lx451_53
                        cmp              ecx, 6
                                                                                        jne   .Lx451_50
                        cmp              edx, 6
                                                                                        jne   .Lx451_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx451_51
                                                                                        jmp   .Lx451_52
.Lx451_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx451_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx451_53
.Lx451_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx451_54
.Lx451_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx451_54
.Lx451_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx451_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n415_op11_α
                                                                                        jmp   n420_var_ref_α
n418_op11_β:
                                                                                        jmp   n415_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n421_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n422_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
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
.Lx456_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_41
                        cmp              esi, 1
                                                                                        jne   .Lx456_55
                        mov              r8, rax
                                                                                        jmp   .Lx456_40
.Lx456_55:
                        cmp              esi, 2
                                                                                        jne   .Lx456_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_41
                        mov              r8, rax
                                                                                        jmp   .Lx456_40
.Lx456_56:
                        cmp              eax, 13
                                                                                        jne   .Lx456_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_41
                        cmp              rax, r8
                                                                                        je    .Lx456_41
                        mov              r8, rax
                                                                                        jmp   .Lx456_40
.Lx456_41:
                        lea              r9, [rbp + 352]
.Lx456_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx456_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_43
                        cmp              esi, 1
                                                                                        jne   .Lx456_57
                        mov              r9, rax
                                                                                        jmp   .Lx456_42
.Lx456_57:
                        cmp              esi, 2
                                                                                        jne   .Lx456_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx456_43
                        mov              r9, rax
                                                                                        jmp   .Lx456_42
.Lx456_58:
                        cmp              eax, 13
                                                                                        jne   .Lx456_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx456_43
                        cmp              rax, r9
                                                                                        je    .Lx456_43
                        mov              r9, rax
                                                                                        jmp   .Lx456_42
.Lx456_43:
                        cmp              r8, r9
                                                                                        je    .Lx456_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_44
                        cmp              eax, 99
                                                                                        je    .Lx456_44
                        cmp              eax, 13
                                                                                        jne   .Lx456_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx456_44
                                                                                        jmp   .Lx456_45
.Lx456_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_53
                        cmp              eax, 99
                                                                                        je    .Lx456_53
                        cmp              eax, 13
                                                                                        jne   .Lx456_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx456_53
                                                                                        jmp   .Lx456_46
.Lx456_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx456_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx456_53
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
                                                                                        jmp   .Lx456_51
.Lx456_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx456_47
                        cmp              eax, 99
                                                                                        je    .Lx456_47
                        cmp              eax, 13
                                                                                        jne   .Lx456_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx456_47
                                                                                        jmp   .Lx456_48
.Lx456_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx456_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx456_53
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
                                                                                        jmp   .Lx456_51
.Lx456_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx456_49
                        cmp              edx, 14
                                                                                        je    .Lx456_53
                                                                                        jmp   .Lx456_52
.Lx456_49:
                        cmp              edx, 14
                                                                                        je    .Lx456_52
                        cmp              ecx, 7
                                                                                        je    .Lx456_53
                        cmp              edx, 7
                                                                                        je    .Lx456_53
                        cmp              ecx, 6
                                                                                        jne   .Lx456_50
                        cmp              edx, 6
                                                                                        jne   .Lx456_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx456_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx456_51
                                                                                        jmp   .Lx456_52
.Lx456_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx456_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx456_53
.Lx456_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx456_54
.Lx456_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx456_54
.Lx456_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx456_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n424_op11_α
                                                                                        jmp   n423_var_ref_α
n421_op11_β:
                                                                                        jmp   n424_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n425_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n426_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
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
                                                                                        je    proc_max$2F3_ω
                                                                                        jmp   proc_max$2F3_ω
n424_op11_β:
                                                                                        jmp   proc_max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
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
.Lx462_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx462_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_41
                        cmp              esi, 1
                                                                                        jne   .Lx462_55
                        mov              r8, rax
                                                                                        jmp   .Lx462_40
.Lx462_55:
                        cmp              esi, 2
                                                                                        jne   .Lx462_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx462_41
                        mov              r8, rax
                                                                                        jmp   .Lx462_40
.Lx462_56:
                        cmp              eax, 13
                                                                                        jne   .Lx462_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_41
                        cmp              rax, r8
                                                                                        je    .Lx462_41
                        mov              r8, rax
                                                                                        jmp   .Lx462_40
.Lx462_41:
                        lea              r9, [rbp + 544]
.Lx462_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx462_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_43
                        cmp              esi, 1
                                                                                        jne   .Lx462_57
                        mov              r9, rax
                                                                                        jmp   .Lx462_42
.Lx462_57:
                        cmp              esi, 2
                                                                                        jne   .Lx462_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx462_43
                        mov              r9, rax
                                                                                        jmp   .Lx462_42
.Lx462_58:
                        cmp              eax, 13
                                                                                        jne   .Lx462_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx462_43
                        cmp              rax, r9
                                                                                        je    .Lx462_43
                        mov              r9, rax
                                                                                        jmp   .Lx462_42
.Lx462_43:
                        cmp              r8, r9
                                                                                        je    .Lx462_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx462_44
                        cmp              eax, 99
                                                                                        je    .Lx462_44
                        cmp              eax, 13
                                                                                        jne   .Lx462_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx462_44
                                                                                        jmp   .Lx462_45
.Lx462_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx462_53
                        cmp              eax, 99
                                                                                        je    .Lx462_53
                        cmp              eax, 13
                                                                                        jne   .Lx462_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx462_53
                                                                                        jmp   .Lx462_46
.Lx462_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx462_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx462_53
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
                                                                                        jmp   .Lx462_51
.Lx462_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx462_47
                        cmp              eax, 99
                                                                                        je    .Lx462_47
                        cmp              eax, 13
                                                                                        jne   .Lx462_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx462_47
                                                                                        jmp   .Lx462_48
.Lx462_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx462_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx462_53
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
                                                                                        jmp   .Lx462_51
.Lx462_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx462_49
                        cmp              edx, 14
                                                                                        je    .Lx462_53
                                                                                        jmp   .Lx462_52
.Lx462_49:
                        cmp              edx, 14
                                                                                        je    .Lx462_52
                        cmp              ecx, 7
                                                                                        je    .Lx462_53
                        cmp              edx, 7
                                                                                        je    .Lx462_53
                        cmp              ecx, 6
                                                                                        jne   .Lx462_50
                        cmp              edx, 6
                                                                                        jne   .Lx462_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx462_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx462_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx462_51
                                                                                        jmp   .Lx462_52
.Lx462_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx462_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx462_53
.Lx462_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx462_54
.Lx462_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx462_54
.Lx462_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx462_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n415_op11_α
                                                                                        jmp   n427_var_α
n425_op11_β:
                                                                                        jmp   n415_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n428_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n428_op11_α:
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
                        lea              r9, [rbp + 272]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n424_op11_α
                                                                                        jmp   n430_var_ref_α
n428_op11_β:
                                                                                        jmp   n424_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n431_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n432_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n431_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ge@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n415_op11_α
                                                                                        jmp   n433_op19_α
n431_op11_β:
                                                                                        jmp   n415_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n434_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n433_op19_α:
                                                                                        jmp   n435_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
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
.Lx476_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx476_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx476_41
                        cmp              esi, 1
                                                                                        jne   .Lx476_55
                        mov              r8, rax
                                                                                        jmp   .Lx476_40
.Lx476_55:
                        cmp              esi, 2
                                                                                        jne   .Lx476_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx476_41
                        mov              r8, rax
                                                                                        jmp   .Lx476_40
.Lx476_56:
                        cmp              eax, 13
                                                                                        jne   .Lx476_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx476_41
                        cmp              rax, r8
                                                                                        je    .Lx476_41
                        mov              r8, rax
                                                                                        jmp   .Lx476_40
.Lx476_41:
                        lea              r9, [rbp + 192]
.Lx476_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx476_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx476_43
                        cmp              esi, 1
                                                                                        jne   .Lx476_57
                        mov              r9, rax
                                                                                        jmp   .Lx476_42
.Lx476_57:
                        cmp              esi, 2
                                                                                        jne   .Lx476_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx476_43
                        mov              r9, rax
                                                                                        jmp   .Lx476_42
.Lx476_58:
                        cmp              eax, 13
                                                                                        jne   .Lx476_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx476_43
                        cmp              rax, r9
                                                                                        je    .Lx476_43
                        mov              r9, rax
                                                                                        jmp   .Lx476_42
.Lx476_43:
                        cmp              r8, r9
                                                                                        je    .Lx476_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx476_44
                        cmp              eax, 99
                                                                                        je    .Lx476_44
                        cmp              eax, 13
                                                                                        jne   .Lx476_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx476_44
                                                                                        jmp   .Lx476_45
.Lx476_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx476_53
                        cmp              eax, 99
                                                                                        je    .Lx476_53
                        cmp              eax, 13
                                                                                        jne   .Lx476_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx476_53
                                                                                        jmp   .Lx476_46
.Lx476_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx476_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx476_53
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
                                                                                        jmp   .Lx476_51
.Lx476_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx476_47
                        cmp              eax, 99
                                                                                        je    .Lx476_47
                        cmp              eax, 13
                                                                                        jne   .Lx476_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx476_47
                                                                                        jmp   .Lx476_48
.Lx476_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx476_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx476_53
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
                                                                                        jmp   .Lx476_51
.Lx476_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx476_49
                        cmp              edx, 14
                                                                                        je    .Lx476_53
                                                                                        jmp   .Lx476_52
.Lx476_49:
                        cmp              edx, 14
                                                                                        je    .Lx476_52
                        cmp              ecx, 7
                                                                                        je    .Lx476_53
                        cmp              edx, 7
                                                                                        je    .Lx476_53
                        cmp              ecx, 6
                                                                                        jne   .Lx476_50
                        cmp              edx, 6
                                                                                        jne   .Lx476_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx476_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx476_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx476_51
                                                                                        jmp   .Lx476_52
.Lx476_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx476_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx476_53
.Lx476_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx476_54
.Lx476_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx476_54
.Lx476_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx476_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n424_op11_α
                                                                                        jmp   n436_move_label_α
n434_op11_β:
                                                                                        jmp   n424_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n435_move_label_α:
                        lea              rax, [rip + n415_op11_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_max$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n436_move_label_α:
                        lea              rax, [rip + n424_op11_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_max$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n437_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 80]
n437_disjunction_β:
                                                                                        jmp   proc_max$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_max$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_max$2F3_β:
                                                                                        jmp   n437_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_max$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 808]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_max$2F3_ω:
                        mov              rax, [rbp + 816]
                        lea              rsp, [rbp + 832]
                        mov              rbp, [rbp + 824]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_max$2F3_dcα:
                        pop              r11
                        sub              rsp, 848
                        mov              qword ptr [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 800], r11
                        lea              rax, [rip + .Lx483_2]
                        mov              qword ptr [rbp + 808], rax
                        lea              rax, [rip + .Lx483_3]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 752
                        mov              edx, 800
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_max$2F3_α_body
.Lx483_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -832
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx483_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -832
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_arith$2F6_α
proc_arith$2F6_α:
                        .global          proc_arith$2F6_α
                        .global          proc_arith$2F6_β
                        .global          proc_arith$2F6_γ
                        .global          proc_arith$2F6_ω
                        sub              rsp, 1456
                        mov              [rsp + 1432], rcx
                        mov              [rsp + 1440], rdx
                        mov              [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1424
                        call             rt_jmp_frame_lexprep2@PLT
proc_arith$2F6_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx526_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx526_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx526_101
.Lx526_100:
                        lea              rdi, [rbp + 160]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx526_101:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    proc_arith$2F6_ω
                                                                                        jmp   n485_var_ref_α
n484_op11_β:
                                                                                        jmp   proc_arith$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n487_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n487_op11_α:
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
.Lx531_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx531_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx531_41
                        cmp              rax, r8
                                                                                        je    .Lx531_41
                        mov              r8, rax
                                                                                        jmp   .Lx531_40
.Lx531_41:
                        lea              r9, [rbp + 1280]
.Lx531_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx531_44
                        cmp              eax, 13
                                                                                        jne   .Lx531_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx531_44
                                                                                        jmp   .Lx531_45
.Lx531_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx531_53
                        cmp              eax, 99
                                                                                        je    .Lx531_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx531_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx531_49
                        cmp              edx, 14
                                                                                        je    .Lx531_53
                                                                                        jmp   .Lx531_52
.Lx531_49:
                        cmp              edx, 14
                                                                                        je    .Lx531_52
                        cmp              ecx, 7
                                                                                        je    .Lx531_53
                        cmp              edx, 7
                                                                                        je    .Lx531_53
                        cmp              ecx, 6
                                                                                        jne   .Lx531_50
                        cmp              edx, 6
                                                                                        jne   .Lx531_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx531_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx531_54
.Lx531_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx531_54:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n488_var_ref_α
n487_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n490_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    proc_arith$2F6_ω
                                                                                        jmp   proc_arith$2F6_ω
n489_op11_β:
                                                                                        jmp   proc_arith$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n491_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n491_op11_α:
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
.Lx537_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx537_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_41
                        cmp              esi, 1
                                                                                        jne   .Lx537_55
                        mov              r8, rax
                                                                                        jmp   .Lx537_40
.Lx537_55:
                        cmp              esi, 2
                                                                                        jne   .Lx537_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx537_41
                        mov              r8, rax
                                                                                        jmp   .Lx537_40
.Lx537_56:
                        cmp              eax, 13
                                                                                        jne   .Lx537_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_41
                        cmp              rax, r8
                                                                                        je    .Lx537_41
                        mov              r8, rax
                                                                                        jmp   .Lx537_40
.Lx537_41:
                        lea              r9, [rbp + 1200]
.Lx537_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx537_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_43
                        cmp              esi, 1
                                                                                        jne   .Lx537_57
                        mov              r9, rax
                                                                                        jmp   .Lx537_42
.Lx537_57:
                        cmp              esi, 2
                                                                                        jne   .Lx537_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx537_43
                        mov              r9, rax
                                                                                        jmp   .Lx537_42
.Lx537_58:
                        cmp              eax, 13
                                                                                        jne   .Lx537_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx537_43
                        cmp              rax, r9
                                                                                        je    .Lx537_43
                        mov              r9, rax
                                                                                        jmp   .Lx537_42
.Lx537_43:
                        cmp              r8, r9
                                                                                        je    .Lx537_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx537_44
                        cmp              eax, 99
                                                                                        je    .Lx537_44
                        cmp              eax, 13
                                                                                        jne   .Lx537_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx537_44
                                                                                        jmp   .Lx537_45
.Lx537_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx537_53
                        cmp              eax, 99
                                                                                        je    .Lx537_53
                        cmp              eax, 13
                                                                                        jne   .Lx537_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx537_53
                                                                                        jmp   .Lx537_46
.Lx537_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx537_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx537_53
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
                                                                                        jmp   .Lx537_51
.Lx537_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx537_47
                        cmp              eax, 99
                                                                                        je    .Lx537_47
                        cmp              eax, 13
                                                                                        jne   .Lx537_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx537_47
                                                                                        jmp   .Lx537_48
.Lx537_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx537_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx537_53
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
                                                                                        jmp   .Lx537_51
.Lx537_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx537_49
                        cmp              edx, 14
                                                                                        je    .Lx537_53
                                                                                        jmp   .Lx537_52
.Lx537_49:
                        cmp              edx, 14
                                                                                        je    .Lx537_52
                        cmp              ecx, 7
                                                                                        je    .Lx537_53
                        cmp              edx, 7
                                                                                        je    .Lx537_53
                        cmp              ecx, 6
                                                                                        jne   .Lx537_50
                        cmp              edx, 6
                                                                                        jne   .Lx537_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx537_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx537_51
                                                                                        jmp   .Lx537_52
.Lx537_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx537_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx537_53
.Lx537_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx537_54
.Lx537_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx537_54
.Lx537_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx537_54:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n492_var_ref_α
n491_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n492_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n493_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n494_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n494_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1104]
                        lea              r8, [rbp + 1104]
.Lx542_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx542_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx542_41
                        cmp              esi, 1
                                                                                        jne   .Lx542_55
                        mov              r8, rax
                                                                                        jmp   .Lx542_40
.Lx542_55:
                        cmp              esi, 2
                                                                                        jne   .Lx542_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx542_41
                        mov              r8, rax
                                                                                        jmp   .Lx542_40
.Lx542_56:
                        cmp              eax, 13
                                                                                        jne   .Lx542_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx542_41
                        cmp              rax, r8
                                                                                        je    .Lx542_41
                        mov              r8, rax
                                                                                        jmp   .Lx542_40
.Lx542_41:
                        lea              r9, [rbp + 1120]
.Lx542_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx542_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx542_43
                        cmp              esi, 1
                                                                                        jne   .Lx542_57
                        mov              r9, rax
                                                                                        jmp   .Lx542_42
.Lx542_57:
                        cmp              esi, 2
                                                                                        jne   .Lx542_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx542_43
                        mov              r9, rax
                                                                                        jmp   .Lx542_42
.Lx542_58:
                        cmp              eax, 13
                                                                                        jne   .Lx542_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx542_43
                        cmp              rax, r9
                                                                                        je    .Lx542_43
                        mov              r9, rax
                                                                                        jmp   .Lx542_42
.Lx542_43:
                        cmp              r8, r9
                                                                                        je    .Lx542_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx542_44
                        cmp              eax, 99
                                                                                        je    .Lx542_44
                        cmp              eax, 13
                                                                                        jne   .Lx542_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx542_44
                                                                                        jmp   .Lx542_45
.Lx542_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx542_53
                        cmp              eax, 99
                                                                                        je    .Lx542_53
                        cmp              eax, 13
                                                                                        jne   .Lx542_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx542_53
                                                                                        jmp   .Lx542_46
.Lx542_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx542_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx542_53
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
                                                                                        jmp   .Lx542_51
.Lx542_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx542_47
                        cmp              eax, 99
                                                                                        je    .Lx542_47
                        cmp              eax, 13
                                                                                        jne   .Lx542_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx542_47
                                                                                        jmp   .Lx542_48
.Lx542_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx542_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx542_53
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
                                                                                        jmp   .Lx542_51
.Lx542_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx542_49
                        cmp              edx, 14
                                                                                        je    .Lx542_53
                                                                                        jmp   .Lx542_52
.Lx542_49:
                        cmp              edx, 14
                                                                                        je    .Lx542_52
                        cmp              ecx, 7
                                                                                        je    .Lx542_53
                        cmp              edx, 7
                                                                                        je    .Lx542_53
                        cmp              ecx, 6
                                                                                        jne   .Lx542_50
                        cmp              edx, 6
                                                                                        jne   .Lx542_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx542_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx542_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx542_51
                                                                                        jmp   .Lx542_52
.Lx542_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx542_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx542_53
.Lx542_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx542_54
.Lx542_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx542_54
.Lx542_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx542_54:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n495_var_ref_α
n494_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n497_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lx547_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx547_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx547_41
                        cmp              esi, 1
                                                                                        jne   .Lx547_55
                        mov              r8, rax
                                                                                        jmp   .Lx547_40
.Lx547_55:
                        cmp              esi, 2
                                                                                        jne   .Lx547_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx547_41
                        mov              r8, rax
                                                                                        jmp   .Lx547_40
.Lx547_56:
                        cmp              eax, 13
                                                                                        jne   .Lx547_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx547_41
                        cmp              rax, r8
                                                                                        je    .Lx547_41
                        mov              r8, rax
                                                                                        jmp   .Lx547_40
.Lx547_41:
                        lea              r9, [rbp + 1040]
.Lx547_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx547_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx547_43
                        cmp              esi, 1
                                                                                        jne   .Lx547_57
                        mov              r9, rax
                                                                                        jmp   .Lx547_42
.Lx547_57:
                        cmp              esi, 2
                                                                                        jne   .Lx547_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx547_43
                        mov              r9, rax
                                                                                        jmp   .Lx547_42
.Lx547_58:
                        cmp              eax, 13
                                                                                        jne   .Lx547_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx547_43
                        cmp              rax, r9
                                                                                        je    .Lx547_43
                        mov              r9, rax
                                                                                        jmp   .Lx547_42
.Lx547_43:
                        cmp              r8, r9
                                                                                        je    .Lx547_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx547_44
                        cmp              eax, 99
                                                                                        je    .Lx547_44
                        cmp              eax, 13
                                                                                        jne   .Lx547_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx547_44
                                                                                        jmp   .Lx547_45
.Lx547_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx547_53
                        cmp              eax, 99
                                                                                        je    .Lx547_53
                        cmp              eax, 13
                                                                                        jne   .Lx547_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx547_53
                                                                                        jmp   .Lx547_46
.Lx547_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx547_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx547_53
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
                                                                                        jmp   .Lx547_51
.Lx547_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx547_47
                        cmp              eax, 99
                                                                                        je    .Lx547_47
                        cmp              eax, 13
                                                                                        jne   .Lx547_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx547_47
                                                                                        jmp   .Lx547_48
.Lx547_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx547_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx547_53
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
                                                                                        jmp   .Lx547_51
.Lx547_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx547_49
                        cmp              edx, 14
                                                                                        je    .Lx547_53
                                                                                        jmp   .Lx547_52
.Lx547_49:
                        cmp              edx, 14
                                                                                        je    .Lx547_52
                        cmp              ecx, 7
                                                                                        je    .Lx547_53
                        cmp              edx, 7
                                                                                        je    .Lx547_53
                        cmp              ecx, 6
                                                                                        jne   .Lx547_50
                        cmp              edx, 6
                                                                                        jne   .Lx547_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx547_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx547_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx547_51
                                                                                        jmp   .Lx547_52
.Lx547_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx547_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx547_53
.Lx547_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx547_54
.Lx547_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx547_54
.Lx547_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx547_54:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n498_var_ref_α
n497_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n500_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
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
                        lea              r9, [rbp + 960]
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
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n501_var_ref_α
n500_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n502_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n503_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_op11_α:
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
                        lea              r9, [rbp + 880]
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
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n504_var_ref_α
n503_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n505_var_α
#-----------------------------------------------------------------------------------------------------------------------
n505_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n506_var_α
#-----------------------------------------------------------------------------------------------------------------------
n506_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n507_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n507_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n508_op11_α
n507_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n508_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n509_var_ref_α
n508_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n510_var_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n511_var_α
#-----------------------------------------------------------------------------------------------------------------------
n511_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n512_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n512_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n513_op11_α
n512_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n513_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n514_var_ref_α
n513_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n515_var_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n517_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n517_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n518_op11_α
n517_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n518_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n519_var_ref_α
n518_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n520_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n522_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_ax_div@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n523_op11_α
n522_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n523_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n524_move_label_α
n523_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n524_move_label_α:
                        lea              rax, [rip + n489_op11_α]
                        mov              qword ptr [rbp + 128], rax
                                                                                        jmp   proc_arith$2F6_γ
#-----------------------------------------------------------------------------------------------------------------------
n525_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 128]
n525_disjunction_β:
                                                                                        jmp   proc_arith$2F6_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_arith$2F6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_arith$2F6_β:
                                                                                        jmp   n525_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_arith$2F6_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1432]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_arith$2F6_ω:
                        mov              rax, [rbp + 1440]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "unify_test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_unify_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_unify_test$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "$disj0/8"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_$disj0$2F8_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 8
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3408
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "float_check/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_float_check$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_float_check$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "member/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_member$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "max/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_max$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 800
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_max$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "arith/6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_arith$2F6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1424
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
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
                        sub              rsp, 536
                        mov              rdi, rsp
                        mov              ecx, 536
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 528], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n594_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx607_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx607_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx607_101
.Lx607_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx607_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n595_var_ref_α
n594_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n596_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n597_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n597_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n598_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n599_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n600_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n601_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n602_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n603_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n603_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx625_21
.Lx625_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx625_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx625_23
.Lx625_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx625_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_24
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx625_25
.Lx625_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx625_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_26
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx625_27
.Lx625_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx625_27:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_28
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 64], rax
                        mov              qword ptr [r10 + 72], rdx
                                                                                        jmp   .Lx625_29
.Lx625_28:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx625_29:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_30
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 80], rax
                        mov              qword ptr [r10 + 88], rdx
                                                                                        jmp   .Lx625_31
.Lx625_30:
                        mov              edi, 5
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx625_31:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_32
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 96], rax
                        mov              qword ptr [r10 + 104], rdx
                                                                                        jmp   .Lx625_33
.Lx625_32:
                        mov              edi, 6
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx625_33:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_34
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 112], rax
                        mov              qword ptr [r10 + 120], rdx
                                                                                        jmp   .Lx625_35
.Lx625_34:
                        mov              edi, 7
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx625_35:
                        mov              edi, 1
                        mov              esi, 8
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx625_1
                        lea              rcx, [rip + .Lx625_3]
                        lea              rdx, [rip + .Lx625_4]
                                                                                        jmp   rax
.Lx625_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx625_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx625_2
.Lx625_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx625_2
.Lx625_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx625_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx625_2
.Lx625_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx625_2
.Lx625_1:
                        call             rt_faildescr@PLT
.Lx625_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n605_op11_α
                                                                                        jmp   n604_move_label_α
n603_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx625_0:
                        .quad            .Lx625_0_s
.Lx625_0_s:
                        .string          "$disj0/8"
#-----------------------------------------------------------------------------------------------------------------------
n604_move_label_α:
                        lea              rax, [rip + n603_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n605_op11_α:
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
n605_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n606_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n606_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n606_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 528]
                        add              rsp, 536
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 528]
                        add              rsp, 536
                        ret
                        .section         .note.GNU-stack,"",@progbits
