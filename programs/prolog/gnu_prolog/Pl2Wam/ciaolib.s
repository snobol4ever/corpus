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
                        .globl           proc_prolog_version$2F1_α
proc_prolog_version$2F1_α:
                        .global          proc_prolog_version$2F1_α
                        .global          proc_prolog_version$2F1_β
                        .global          proc_prolog_version$2F1_γ
                        .global          proc_prolog_version$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_version$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx25_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx25_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx25_101
.Lx25_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx25_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   n19_var_ref_α
n18_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx28_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n21_op11_α
.Lx28_0:
                        .quad            .Lx28_0_s
.Lx28_0_s:
                        .string          "1.6"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx29_2]
                                                                                        jmp   .Lx29_3
.Lx29_2:
                        .quad            .Lx29_2_s
.Lx29_2_s:
                        .string          "1.6"
.Lx29_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n23_op11_α
                                                                                        jmp   n22_move_label_α
n21_op11_β:
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_move_label_α:
                        lea              rax, [rip + n23_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_version$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
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
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   proc_prolog_version$2F1_ω
n23_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n24_disjunction_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_β:
                                                                                        jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx35_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx35_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_version$2F1_α_body
.Lx35_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx35_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse$2F2_α
proc_reverse$2F2_α:
                        .global          proc_reverse$2F2_α
                        .global          proc_reverse$2F2_β
                        .global          proc_reverse$2F2_γ
                        .global          proc_reverse$2F2_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse$2F2_α_body:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx49_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx49_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx49_101
.Lx49_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx49_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n37_var_ref_α
n36_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n39_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
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
.Lx54_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx54_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx54_41
                        cmp              esi, 1
                                                                                        jne   .Lx54_55
                        mov              r8, rax
                                                                                        jmp   .Lx54_40
.Lx54_55:
                        cmp              esi, 2
                                                                                        jne   .Lx54_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx54_41
                        mov              r8, rax
                                                                                        jmp   .Lx54_40
.Lx54_56:
                        cmp              eax, 13
                                                                                        jne   .Lx54_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx54_41
                        cmp              rax, r8
                                                                                        je    .Lx54_41
                        mov              r8, rax
                                                                                        jmp   .Lx54_40
.Lx54_41:
                        lea              r9, [rbp + 368]
.Lx54_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx54_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx54_43
                        cmp              esi, 1
                                                                                        jne   .Lx54_57
                        mov              r9, rax
                                                                                        jmp   .Lx54_42
.Lx54_57:
                        cmp              esi, 2
                                                                                        jne   .Lx54_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx54_43
                        mov              r9, rax
                                                                                        jmp   .Lx54_42
.Lx54_58:
                        cmp              eax, 13
                                                                                        jne   .Lx54_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx54_43
                        cmp              rax, r9
                                                                                        je    .Lx54_43
                        mov              r9, rax
                                                                                        jmp   .Lx54_42
.Lx54_43:
                        cmp              r8, r9
                                                                                        je    .Lx54_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx54_44
                        cmp              eax, 99
                                                                                        je    .Lx54_44
                        cmp              eax, 13
                                                                                        jne   .Lx54_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx54_44
                                                                                        jmp   .Lx54_45
.Lx54_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx54_53
                        cmp              eax, 99
                                                                                        je    .Lx54_53
                        cmp              eax, 13
                                                                                        jne   .Lx54_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx54_53
                                                                                        jmp   .Lx54_46
.Lx54_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx54_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx54_53
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
                                                                                        jmp   .Lx54_51
.Lx54_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx54_47
                        cmp              eax, 99
                                                                                        je    .Lx54_47
                        cmp              eax, 13
                                                                                        jne   .Lx54_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx54_47
                                                                                        jmp   .Lx54_48
.Lx54_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx54_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx54_53
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
                                                                                        jmp   .Lx54_51
.Lx54_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx54_49
                        cmp              edx, 14
                                                                                        je    .Lx54_53
                                                                                        jmp   .Lx54_52
.Lx54_49:
                        cmp              edx, 14
                                                                                        je    .Lx54_52
                        cmp              ecx, 7
                                                                                        je    .Lx54_53
                        cmp              edx, 7
                                                                                        je    .Lx54_53
                        cmp              ecx, 6
                                                                                        jne   .Lx54_50
                        cmp              edx, 6
                                                                                        jne   .Lx54_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx54_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx54_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx54_51
                                                                                        jmp   .Lx54_52
.Lx54_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx54_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx54_53
.Lx54_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx54_54
.Lx54_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx54_54
.Lx54_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx54_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n40_var_ref_α
n39_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
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
n41_op11_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
.Lx60_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              esi, 1
                                                                                        jne   .Lx60_55
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_55:
                        cmp              esi, 2
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_56:
                        cmp              eax, 13
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              rax, r8
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_41:
                        lea              r9, [rbp + 288]
.Lx60_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              esi, 1
                                                                                        jne   .Lx60_57
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_57:
                        cmp              esi, 2
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_58:
                        cmp              eax, 13
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              rax, r9
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_43:
                        cmp              r8, r9
                                                                                        je    .Lx60_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_44
                        cmp              eax, 99
                                                                                        je    .Lx60_44
                        cmp              eax, 13
                                                                                        jne   .Lx60_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx60_44
                                                                                        jmp   .Lx60_45
.Lx60_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_53
                        cmp              eax, 99
                                                                                        je    .Lx60_53
                        cmp              eax, 13
                                                                                        jne   .Lx60_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_46
.Lx60_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_47
                        cmp              eax, 99
                                                                                        je    .Lx60_47
                        cmp              eax, 13
                                                                                        jne   .Lx60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_47
                                                                                        jmp   .Lx60_48
.Lx60_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx60_49
                        cmp              edx, 14
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_52
.Lx60_49:
                        cmp              edx, 14
                                                                                        je    .Lx60_52
                        cmp              ecx, 7
                                                                                        je    .Lx60_53
                        cmp              edx, 7
                                                                                        je    .Lx60_53
                        cmp              ecx, 6
                                                                                        jne   .Lx60_50
                        cmp              edx, 6
                                                                                        jne   .Lx60_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx60_51
                                                                                        jmp   .Lx60_52
.Lx60_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
.Lx60_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx60_54
.Lx60_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx60_54
.Lx60_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx60_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n44_var_ref_α
n43_op11_β:
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n45_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n46_var_ref_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx67_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx67_21
.Lx67_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx67_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx67_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx67_23
.Lx67_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx67_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx67_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx67_25
.Lx67_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx67_25:
                        mov              edi, 4
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx67_1
                        lea              rcx, [rip + .Lx67_3]
                        lea              rdx, [rip + .Lx67_4]
                                                                                        jmp   rax
.Lx67_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx67_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx67_2
.Lx67_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx67_2
.Lx67_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx67_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx67_2
.Lx67_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx67_2
.Lx67_1:
                        call             rt_faildescr@PLT
.Lx67_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n41_op11_α
                                                                                        jmp   n48_suspend_α
n47_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n48_suspend_α:
                        lea              rax, [rip + n48_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n48_suspend_β:
                                                                                        jmp   n47_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 472]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F2_α
proc_$disj1$2F2_α:
                        .global          proc_$disj1$2F2_α
                        .global          proc_$disj1$2F2_β
                        .global          proc_$disj1$2F2_γ
                        .global          proc_$disj1$2F2_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj1$2F2_α_body:
                        lea              rax, [rip + n87_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx93_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx93_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx93_101
.Lx93_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx93_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F2_ω
                                                                                        jmp   n71_var_ref_α
n70_op11_β:
                                                                                        jmp   proc_$disj1$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n73_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
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
.Lx98_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              esi, 1
                                                                                        jne   .Lx98_55
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_55:
                        cmp              esi, 2
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_56:
                        cmp              eax, 13
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              rax, r8
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_41:
                        lea              r9, [rbp + 624]
.Lx98_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              esi, 1
                                                                                        jne   .Lx98_57
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_57:
                        cmp              esi, 2
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_58:
                        cmp              eax, 13
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              rax, r9
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_43:
                        cmp              r8, r9
                                                                                        je    .Lx98_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_44
                        cmp              eax, 99
                                                                                        je    .Lx98_44
                        cmp              eax, 13
                                                                                        jne   .Lx98_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx98_44
                                                                                        jmp   .Lx98_45
.Lx98_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_53
                        cmp              eax, 99
                                                                                        je    .Lx98_53
                        cmp              eax, 13
                                                                                        jne   .Lx98_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_46
.Lx98_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_47
                        cmp              eax, 99
                                                                                        je    .Lx98_47
                        cmp              eax, 13
                                                                                        jne   .Lx98_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_47
                                                                                        jmp   .Lx98_48
.Lx98_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx98_49
                        cmp              edx, 14
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_52
.Lx98_49:
                        cmp              edx, 14
                                                                                        je    .Lx98_52
                        cmp              ecx, 7
                                                                                        je    .Lx98_53
                        cmp              edx, 7
                                                                                        je    .Lx98_53
                        cmp              ecx, 6
                                                                                        jne   .Lx98_50
                        cmp              edx, 6
                                                                                        jne   .Lx98_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx98_51
                                                                                        jmp   .Lx98_52
.Lx98_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
.Lx98_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx98_54
.Lx98_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx98_54
.Lx98_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx98_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
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
                                                                                        je    proc_$disj1$2F2_ω
                                                                                        jmp   n77_var_ref_α
n75_op11_β:
                                                                                        jmp   proc_$disj1$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
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
                        lea              r9, [rbp + 544]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n80_var_ref_α
n78_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n82_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
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
.Lx111_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx111_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx111_41
                        cmp              esi, 1
                                                                                        jne   .Lx111_55
                        mov              r8, rax
                                                                                        jmp   .Lx111_40
.Lx111_55:
                        cmp              esi, 2
                                                                                        jne   .Lx111_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx111_41
                        mov              r8, rax
                                                                                        jmp   .Lx111_40
.Lx111_56:
                        cmp              eax, 13
                                                                                        jne   .Lx111_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx111_41
                        cmp              rax, r8
                                                                                        je    .Lx111_41
                        mov              r8, rax
                                                                                        jmp   .Lx111_40
.Lx111_41:
                        lea              r9, [rbp + 320]
.Lx111_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx111_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx111_43
                        cmp              esi, 1
                                                                                        jne   .Lx111_57
                        mov              r9, rax
                                                                                        jmp   .Lx111_42
.Lx111_57:
                        cmp              esi, 2
                                                                                        jne   .Lx111_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx111_43
                        mov              r9, rax
                                                                                        jmp   .Lx111_42
.Lx111_58:
                        cmp              eax, 13
                                                                                        jne   .Lx111_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx111_43
                        cmp              rax, r9
                                                                                        je    .Lx111_43
                        mov              r9, rax
                                                                                        jmp   .Lx111_42
.Lx111_43:
                        cmp              r8, r9
                                                                                        je    .Lx111_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx111_44
                        cmp              eax, 99
                                                                                        je    .Lx111_44
                        cmp              eax, 13
                                                                                        jne   .Lx111_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx111_44
                                                                                        jmp   .Lx111_45
.Lx111_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx111_53
                        cmp              eax, 99
                                                                                        je    .Lx111_53
                        cmp              eax, 13
                                                                                        jne   .Lx111_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx111_53
                                                                                        jmp   .Lx111_46
.Lx111_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx111_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx111_53
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
                                                                                        jmp   .Lx111_51
.Lx111_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx111_47
                        cmp              eax, 99
                                                                                        je    .Lx111_47
                        cmp              eax, 13
                                                                                        jne   .Lx111_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx111_47
                                                                                        jmp   .Lx111_48
.Lx111_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx111_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx111_53
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
                                                                                        jmp   .Lx111_51
.Lx111_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx111_49
                        cmp              edx, 14
                                                                                        je    .Lx111_53
                                                                                        jmp   .Lx111_52
.Lx111_49:
                        cmp              edx, 14
                                                                                        je    .Lx111_52
                        cmp              ecx, 7
                                                                                        je    .Lx111_53
                        cmp              edx, 7
                                                                                        je    .Lx111_53
                        cmp              ecx, 6
                                                                                        jne   .Lx111_50
                        cmp              edx, 6
                                                                                        jne   .Lx111_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx111_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx111_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx111_51
                                                                                        jmp   .Lx111_52
.Lx111_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx111_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx111_53
.Lx111_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx111_54
.Lx111_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx111_54
.Lx111_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx111_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n83_var_ref_α
n81_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
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
                                                                                        je    proc_$disj1$2F2_ω
                                                                                        jmp   proc_$disj1$2F2_ω
n84_op11_β:
                                                                                        jmp   proc_$disj1$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        mov              qword ptr [rbp + 448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx118_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx118_21
.Lx118_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx118_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx118_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx118_23
.Lx118_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx118_23:
                        mov              edi, 20
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx118_1
                        lea              rcx, [rip + .Lx118_3]
                        lea              rdx, [rip + .Lx118_4]
                                                                                        jmp   rax
.Lx118_3:
                        mov              qword ptr [rbp + 456], rsp
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx118_5
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx118_2
.Lx118_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx118_2
.Lx118_4:
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx118_6
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx118_2
.Lx118_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx118_2
.Lx118_1:
                        call             rt_faildescr@PLT
.Lx118_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n87_suspend_α
n85_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   qword ptr [rsp]
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "gvar/2"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_suspend_α:
                        lea              rax, [rip + n87_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F2_γ
n87_suspend_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
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
                        lea              r9, [rbp + 240]
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
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n84_op11_α
                                                                                        jmp   n89_var_ref_α
n88_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n91_op11_α
.Lx126_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
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
                                                                                        je    n84_op11_α
                                                                                        jmp   n92_suspend_α
n91_op11_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F2_γ
n92_suspend_β:
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj1$2F2_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$reverse_$2F3_α
proc_$reverse_$2F3_α:
                        .global          proc_$reverse_$2F3_α
                        .global          proc_$reverse_$2F3_β
                        .global          proc_$reverse_$2F3_γ
                        .global          proc_$reverse_$2F3_ω
                        sub              rsp, 1280
                        mov              [rsp + 1256], rcx
                        mov              [rsp + 1264], rdx
                        mov              [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1248
                        call             rt_jmp_frame_lexprep2@PLT
proc_$reverse_$2F3_α_body:
                        lea              rax, [rip + n155_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx169_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx169_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx169_101
.Lx169_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx169_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   n131_var_ref_α
n130_op11_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n133_lit_string_α
.Lx172_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n134_op11_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
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
.Lx174_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_111
                        cmp              esi, 1
                                                                                        jne   .Lx174_112
                        mov              r8, rax
                                                                                        jmp   .Lx174_110
.Lx174_112:
                        cmp              esi, 2
                                                                                        jne   .Lx174_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_111
                        mov              r8, rax
                                                                                        jmp   .Lx174_110
.Lx174_113:
                        cmp              eax, 13
                                                                                        jne   .Lx174_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_111
                        cmp              rax, r8
                                                                                        je    .Lx174_111
                        mov              r8, rax
                                                                                        jmp   .Lx174_110
.Lx174_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_114
                        cmp              eax, 99
                                                                                        je    .Lx174_114
                        cmp              eax, 13
                                                                                        jne   .Lx174_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx174_114
                                                                                        jmp   .Lx174_118
.Lx174_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx174_115
                        cmp              eax, 6
                                                                                        je    .Lx174_114
                        cmp              eax, 1
                                                                                        jne   .Lx174_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx174_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx174_114
                                                                                        jmp   .Lx174_116
.Lx174_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx174_117
.Lx174_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx174_117
.Lx174_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx174_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n136_var_ref_α
                                                                                        jmp   n135_var_ref_α
n134_op11_β:
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n138_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n139_op11_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n140_lit_integer_α
.Lx180_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx181_2]
                                                                                        jmp   .Lx181_3
.Lx181_2:
                        .quad            .Lx181_2_s
.Lx181_2_s:
                        .string          "[]"
.Lx181_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n141_var_ref_α
n139_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n143_op11_α
.Lx182_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n144_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
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
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   n136_var_ref_α
n142_op11_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_op11_α:
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
.Lx186_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx186_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx186_111
                        cmp              esi, 1
                                                                                        jne   .Lx186_112
                        mov              r8, rax
                                                                                        jmp   .Lx186_110
.Lx186_112:
                        cmp              esi, 2
                                                                                        jne   .Lx186_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx186_111
                        mov              r8, rax
                                                                                        jmp   .Lx186_110
.Lx186_113:
                        cmp              eax, 13
                                                                                        jne   .Lx186_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx186_111
                        cmp              rax, r8
                                                                                        je    .Lx186_111
                        mov              r8, rax
                                                                                        jmp   .Lx186_110
.Lx186_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx186_114
                        cmp              eax, 99
                                                                                        je    .Lx186_114
                        cmp              eax, 13
                                                                                        jne   .Lx186_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx186_114
                                                                                        jmp   .Lx186_118
.Lx186_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx186_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx186_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx186_115
                                                                                        jmp   .Lx186_114
.Lx186_119:
                        cmp              eax, 6
                                                                                        jne   .Lx186_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx186_114
                                                                                        jmp   .Lx186_115
.Lx186_120:
                        cmp              eax, 1
                                                                                        jne   .Lx186_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx186_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx186_114
                                                                                        jmp   .Lx186_115
.Lx186_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx186_117
.Lx186_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx186_117
.Lx186_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx186_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n146_op11_α
                                                                                        jmp   n145_var_ref_α
n143_op11_β:
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n147_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_op11_α:
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
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   proc_$reverse_$2F3_ω
n146_op11_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n147_op11_α:
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
.Lx192_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx192_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              esi, 1
                                                                                        jne   .Lx192_55
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_55:
                        cmp              esi, 2
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_56:
                        cmp              eax, 13
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              rax, r8
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_41:
                        lea              r9, [rbp + 928]
.Lx192_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx192_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        cmp              esi, 1
                                                                                        jne   .Lx192_57
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_57:
                        cmp              esi, 2
                                                                                        jne   .Lx192_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_58:
                        cmp              eax, 13
                                                                                        jne   .Lx192_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        cmp              rax, r9
                                                                                        je    .Lx192_43
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_43:
                        cmp              r8, r9
                                                                                        je    .Lx192_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_44
                        cmp              eax, 99
                                                                                        je    .Lx192_44
                        cmp              eax, 13
                                                                                        jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx192_44
                                                                                        jmp   .Lx192_45
.Lx192_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_53
                        cmp              eax, 99
                                                                                        je    .Lx192_53
                        cmp              eax, 13
                                                                                        jne   .Lx192_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_46
.Lx192_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx192_53
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
                                                                                        jmp   .Lx192_51
.Lx192_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_47
                        cmp              eax, 99
                                                                                        je    .Lx192_47
                        cmp              eax, 13
                                                                                        jne   .Lx192_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx192_47
                                                                                        jmp   .Lx192_48
.Lx192_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx192_53
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
                                                                                        jmp   .Lx192_51
.Lx192_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx192_49
                        cmp              edx, 14
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_52
.Lx192_49:
                        cmp              edx, 14
                                                                                        je    .Lx192_52
                        cmp              ecx, 7
                                                                                        je    .Lx192_53
                        cmp              edx, 7
                                                                                        je    .Lx192_53
                        cmp              ecx, 6
                                                                                        jne   .Lx192_50
                        cmp              edx, 6
                                                                                        jne   .Lx192_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx192_51
                                                                                        jmp   .Lx192_52
.Lx192_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx192_53
.Lx192_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx192_54
.Lx192_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx192_54
.Lx192_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx192_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n149_var_ref_α
n147_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n151_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n152_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
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
.Lx201_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_61
                        cmp              esi, 1
                                                                                        jne   .Lx201_62
                        mov              r8, rax
                                                                                        jmp   .Lx201_60
.Lx201_62:
                        cmp              esi, 2
                                                                                        jne   .Lx201_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_61
                        mov              r8, rax
                                                                                        jmp   .Lx201_60
.Lx201_63:
                        cmp              eax, 13
                                                                                        jne   .Lx201_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_61
                        cmp              rax, r8
                                                                                        je    .Lx201_61
                        mov              r8, rax
                                                                                        jmp   .Lx201_60
.Lx201_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_80
                        cmp              eax, 99
                                                                                        je    .Lx201_80
                        cmp              eax, 13
                                                                                        jne   .Lx201_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx201_80
                                                                                        jmp   .Lx201_74
.Lx201_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx201_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx201_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx201_73
                        lea              r9, [rbp + 592]
.Lx201_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_65
                        cmp              esi, 1
                                                                                        jne   .Lx201_66
                        mov              r9, rax
                                                                                        jmp   .Lx201_64
.Lx201_66:
                        cmp              esi, 2
                                                                                        jne   .Lx201_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_65
                        mov              r9, rax
                                                                                        jmp   .Lx201_64
.Lx201_67:
                        cmp              eax, 13
                                                                                        jne   .Lx201_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_65
                        cmp              rax, r9
                                                                                        je    .Lx201_65
                        mov              r9, rax
                                                                                        jmp   .Lx201_64
.Lx201_65:
                        lea              rcx, [rbp + 608]
.Lx201_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx201_69
                        cmp              esi, 1
                                                                                        jne   .Lx201_70
                        mov              rcx, rax
                                                                                        jmp   .Lx201_68
.Lx201_70:
                        cmp              esi, 2
                                                                                        jne   .Lx201_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_69
                        mov              rcx, rax
                                                                                        jmp   .Lx201_68
.Lx201_71:
                        cmp              eax, 13
                                                                                        jne   .Lx201_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx201_69
                        cmp              rax, rcx
                                                                                        je    .Lx201_69
                        mov              rcx, rax
                                                                                        jmp   .Lx201_68
.Lx201_69:
                        cmp              r9, rcx
                                                                                        je    .Lx201_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_75
                        cmp              eax, 99
                                                                                        je    .Lx201_75
                        cmp              eax, 13
                                                                                        jne   .Lx201_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx201_75
                                                                                        jmp   .Lx201_72
.Lx201_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_76
                        cmp              eax, 99
                                                                                        je    .Lx201_76
                        cmp              eax, 13
                                                                                        jne   .Lx201_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx201_76
                                                                                        jmp   .Lx201_72
.Lx201_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx201_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx201_72
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
                                                                                        jmp   .Lx201_77
.Lx201_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx201_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx201_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx201_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx201_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx201_72
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
.Lx201_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_82
                        cmp              esi, 1
                                                                                        jne   .Lx201_83
                        mov              r9, rax
                                                                                        jmp   .Lx201_81
.Lx201_83:
                        cmp              esi, 2
                                                                                        jne   .Lx201_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_82
                        mov              r9, rax
                                                                                        jmp   .Lx201_81
.Lx201_84:
                        cmp              eax, 13
                                                                                        jne   .Lx201_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_82
                        cmp              rax, r9
                                                                                        je    .Lx201_82
                        mov              r9, rax
                                                                                        jmp   .Lx201_81
.Lx201_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_85
                        cmp              eax, 99
                                                                                        je    .Lx201_85
                        cmp              eax, 13
                                                                                        jne   .Lx201_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx201_85
                                                                                        jmp   .Lx201_86
.Lx201_85:
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
                                                                                        jmp   .Lx201_87
.Lx201_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx201_87:
                        lea              rcx, [rbp + 608]
.Lx201_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx201_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx201_89
                        cmp              esi, 1
                                                                                        jne   .Lx201_90
                        mov              rcx, rax
                                                                                        jmp   .Lx201_88
.Lx201_90:
                        cmp              esi, 2
                                                                                        jne   .Lx201_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_89
                        mov              rcx, rax
                                                                                        jmp   .Lx201_88
.Lx201_91:
                        cmp              eax, 13
                                                                                        jne   .Lx201_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx201_89
                        cmp              rax, rcx
                                                                                        je    .Lx201_89
                        mov              rcx, rax
                                                                                        jmp   .Lx201_88
.Lx201_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_92
                        cmp              eax, 99
                                                                                        je    .Lx201_92
                        cmp              eax, 13
                                                                                        jne   .Lx201_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx201_92
                                                                                        jmp   .Lx201_93
.Lx201_92:
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
                                                                                        jmp   .Lx201_94
.Lx201_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx201_94:
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
                                                                                        jmp   .Lx201_77
.Lx201_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx201_77
.Lx201_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx201_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n146_op11_α
                                                                                        jmp   n154_var_ref_α
n152_op11_β:
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
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
.Lx202_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        cmp              esi, 1
                                                                                        jne   .Lx202_55
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_55:
                        cmp              esi, 2
                                                                                        jne   .Lx202_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_56:
                        cmp              eax, 13
                                                                                        jne   .Lx202_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        cmp              rax, r8
                                                                                        je    .Lx202_41
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_41:
                        lea              r9, [rbp + 848]
.Lx202_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        cmp              esi, 1
                                                                                        jne   .Lx202_57
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_57:
                        cmp              esi, 2
                                                                                        jne   .Lx202_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_58:
                        cmp              eax, 13
                                                                                        jne   .Lx202_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        cmp              rax, r9
                                                                                        je    .Lx202_43
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_43:
                        cmp              r8, r9
                                                                                        je    .Lx202_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_44
                        cmp              eax, 99
                                                                                        je    .Lx202_44
                        cmp              eax, 13
                                                                                        jne   .Lx202_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx202_44
                                                                                        jmp   .Lx202_45
.Lx202_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_53
                        cmp              eax, 99
                                                                                        je    .Lx202_53
                        cmp              eax, 13
                                                                                        jne   .Lx202_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx202_53
                                                                                        jmp   .Lx202_46
.Lx202_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx202_53
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
                                                                                        jmp   .Lx202_51
.Lx202_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_47
                        cmp              eax, 99
                                                                                        je    .Lx202_47
                        cmp              eax, 13
                                                                                        jne   .Lx202_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx202_47
                                                                                        jmp   .Lx202_48
.Lx202_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx202_53
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
                                                                                        jmp   .Lx202_51
.Lx202_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx202_49
                        cmp              edx, 14
                                                                                        je    .Lx202_53
                                                                                        jmp   .Lx202_52
.Lx202_49:
                        cmp              edx, 14
                                                                                        je    .Lx202_52
                        cmp              ecx, 7
                                                                                        je    .Lx202_53
                        cmp              edx, 7
                                                                                        je    .Lx202_53
                        cmp              ecx, 6
                                                                                        jne   .Lx202_50
                        cmp              edx, 6
                                                                                        jne   .Lx202_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx202_51
                                                                                        jmp   .Lx202_52
.Lx202_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx202_53
.Lx202_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx202_54
.Lx202_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx202_54
.Lx202_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx202_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n142_op11_α
                                                                                        jmp   n155_suspend_α
n153_op11_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n156_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_suspend_α:
                        lea              rax, [rip + n155_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$reverse_$2F3_γ
n155_suspend_β:
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n157_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n157_op11_α:
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
.Lx209_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx209_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        cmp              esi, 1
                                                                                        jne   .Lx209_55
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_55:
                        cmp              esi, 2
                                                                                        jne   .Lx209_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_56:
                        cmp              eax, 13
                                                                                        jne   .Lx209_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_41
                        cmp              rax, r8
                                                                                        je    .Lx209_41
                        mov              r8, rax
                                                                                        jmp   .Lx209_40
.Lx209_41:
                        lea              r9, [rbp + 496]
.Lx209_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx209_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        cmp              esi, 1
                                                                                        jne   .Lx209_57
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_57:
                        cmp              esi, 2
                                                                                        jne   .Lx209_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_58:
                        cmp              eax, 13
                                                                                        jne   .Lx209_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx209_43
                        cmp              rax, r9
                                                                                        je    .Lx209_43
                        mov              r9, rax
                                                                                        jmp   .Lx209_42
.Lx209_43:
                        cmp              r8, r9
                                                                                        je    .Lx209_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_44
                        cmp              eax, 99
                                                                                        je    .Lx209_44
                        cmp              eax, 13
                                                                                        jne   .Lx209_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx209_44
                                                                                        jmp   .Lx209_45
.Lx209_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_53
                        cmp              eax, 99
                                                                                        je    .Lx209_53
                        cmp              eax, 13
                                                                                        jne   .Lx209_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx209_53
                                                                                        jmp   .Lx209_46
.Lx209_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx209_53
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
                                                                                        jmp   .Lx209_51
.Lx209_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx209_47
                        cmp              eax, 99
                                                                                        je    .Lx209_47
                        cmp              eax, 13
                                                                                        jne   .Lx209_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx209_47
                                                                                        jmp   .Lx209_48
.Lx209_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx209_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx209_53
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
                                                                                        jmp   .Lx209_51
.Lx209_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx209_49
                        cmp              edx, 14
                                                                                        je    .Lx209_53
                                                                                        jmp   .Lx209_52
.Lx209_49:
                        cmp              edx, 14
                                                                                        je    .Lx209_52
                        cmp              ecx, 7
                                                                                        je    .Lx209_53
                        cmp              edx, 7
                                                                                        je    .Lx209_53
                        cmp              ecx, 6
                                                                                        jne   .Lx209_50
                        cmp              edx, 6
                                                                                        jne   .Lx209_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx209_51
                                                                                        jmp   .Lx209_52
.Lx209_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx209_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx209_53
.Lx209_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx209_54
.Lx209_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx209_54
.Lx209_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx209_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n146_op11_α
                                                                                        jmp   n158_var_ref_α
n157_op11_β:
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n159_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n160_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_op11_α:
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
.Lx214_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx214_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx214_41
                        cmp              esi, 1
                                                                                        jne   .Lx214_55
                        mov              r8, rax
                                                                                        jmp   .Lx214_40
.Lx214_55:
                        cmp              esi, 2
                                                                                        jne   .Lx214_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx214_41
                        mov              r8, rax
                                                                                        jmp   .Lx214_40
.Lx214_56:
                        cmp              eax, 13
                                                                                        jne   .Lx214_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx214_41
                        cmp              rax, r8
                                                                                        je    .Lx214_41
                        mov              r8, rax
                                                                                        jmp   .Lx214_40
.Lx214_41:
                        lea              r9, [rbp + 416]
.Lx214_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx214_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx214_43
                        cmp              esi, 1
                                                                                        jne   .Lx214_57
                        mov              r9, rax
                                                                                        jmp   .Lx214_42
.Lx214_57:
                        cmp              esi, 2
                                                                                        jne   .Lx214_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx214_43
                        mov              r9, rax
                                                                                        jmp   .Lx214_42
.Lx214_58:
                        cmp              eax, 13
                                                                                        jne   .Lx214_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx214_43
                        cmp              rax, r9
                                                                                        je    .Lx214_43
                        mov              r9, rax
                                                                                        jmp   .Lx214_42
.Lx214_43:
                        cmp              r8, r9
                                                                                        je    .Lx214_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx214_44
                        cmp              eax, 99
                                                                                        je    .Lx214_44
                        cmp              eax, 13
                                                                                        jne   .Lx214_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx214_44
                                                                                        jmp   .Lx214_45
.Lx214_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx214_53
                        cmp              eax, 99
                                                                                        je    .Lx214_53
                        cmp              eax, 13
                                                                                        jne   .Lx214_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx214_53
                                                                                        jmp   .Lx214_46
.Lx214_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx214_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx214_53
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
                                                                                        jmp   .Lx214_51
.Lx214_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx214_47
                        cmp              eax, 99
                                                                                        je    .Lx214_47
                        cmp              eax, 13
                                                                                        jne   .Lx214_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx214_47
                                                                                        jmp   .Lx214_48
.Lx214_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx214_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx214_53
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
                                                                                        jmp   .Lx214_51
.Lx214_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx214_49
                        cmp              edx, 14
                                                                                        je    .Lx214_53
                                                                                        jmp   .Lx214_52
.Lx214_49:
                        cmp              edx, 14
                                                                                        je    .Lx214_52
                        cmp              ecx, 7
                                                                                        je    .Lx214_53
                        cmp              edx, 7
                                                                                        je    .Lx214_53
                        cmp              ecx, 6
                                                                                        jne   .Lx214_50
                        cmp              edx, 6
                                                                                        jne   .Lx214_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx214_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx214_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx214_51
                                                                                        jmp   .Lx214_52
.Lx214_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx214_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx214_53
.Lx214_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx214_54
.Lx214_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx214_54
.Lx214_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx214_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n146_op11_α
                                                                                        jmp   n161_var_ref_α
n160_op11_β:
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n163_var_ref_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n164_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n165_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
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
                                                                                        je    n146_op11_α
                                                                                        jmp   n166_var_ref_α
n165_op11_β:
                                                                                        jmp   n146_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n167_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n167_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx226_21
.Lx226_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx226_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx226_23
.Lx226_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx226_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx226_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx226_25
.Lx226_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx226_25:
                        mov              edi, 4
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx226_1
                        lea              rcx, [rip + .Lx226_3]
                        lea              rdx, [rip + .Lx226_4]
                                                                                        jmp   rax
.Lx226_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx226_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx226_2
.Lx226_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx226_2
.Lx226_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx226_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx226_2
.Lx226_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx226_2
.Lx226_1:
                        call             rt_faildescr@PLT
.Lx226_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n146_op11_α
                                                                                        jmp   n168_suspend_α
n167_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n168_suspend_α:
                        lea              rax, [rip + n168_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$reverse_$2F3_γ
n168_suspend_β:
                                                                                        jmp   n167_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$reverse_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1256]
                        mov              rbp, [rbp + 1272]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_ω:
                        mov              rax, [rbp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, [rbp + 1272]
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
                        lea              rax, [rip + n235_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n229_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx236_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx236_101
.Lx236_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx236_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   n230_var_ref_α
n229_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n231_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx240_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx240_21
.Lx240_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx240_21:
                        mov              edi, 10
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx240_1
                        lea              rcx, [rip + .Lx240_3]
                        lea              rdx, [rip + .Lx240_4]
                                                                                        jmp   rax
.Lx240_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx240_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx240_2
.Lx240_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx240_2
.Lx240_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx240_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx240_2
.Lx240_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx240_2
.Lx240_1:
                        call             rt_faildescr@PLT
.Lx240_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n233_op11_α
                                                                                        jmp   n232_var_ref_α
n231_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n234_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
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
n233_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx245_21:
                        mov              edi, 19
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx245_1
                        lea              rcx, [rip + .Lx245_3]
                        lea              rdx, [rip + .Lx245_4]
                                                                                        jmp   rax
.Lx245_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx245_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx245_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_1:
                        call             rt_faildescr@PLT
.Lx245_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n231_call_proc_staged_β
                                                                                        jmp   n235_suspend_α
n234_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
n235_suspend_α:
                        lea              rax, [rip + n235_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other$2F0_γ
n235_suspend_β:
                                                                                        jmp   n234_call_proc_staged_β
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
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx285_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx285_101
.Lx285_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx285_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_append$2F3_ω
                                                                                        jmp   n249_var_ref_α
n248_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n251_lit_string_α
.Lx288_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n252_op11_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
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
.Lx290_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx290_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx290_111
                        cmp              esi, 1
                                                                                        jne   .Lx290_112
                        mov              r8, rax
                                                                                        jmp   .Lx290_110
.Lx290_112:
                        cmp              esi, 2
                                                                                        jne   .Lx290_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx290_111
                        mov              r8, rax
                                                                                        jmp   .Lx290_110
.Lx290_113:
                        cmp              eax, 13
                                                                                        jne   .Lx290_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx290_111
                        cmp              rax, r8
                                                                                        je    .Lx290_111
                        mov              r8, rax
                                                                                        jmp   .Lx290_110
.Lx290_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx290_114
                        cmp              eax, 99
                                                                                        je    .Lx290_114
                        cmp              eax, 13
                                                                                        jne   .Lx290_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx290_114
                                                                                        jmp   .Lx290_118
.Lx290_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx290_115
                        cmp              eax, 6
                                                                                        je    .Lx290_114
                        cmp              eax, 1
                                                                                        jne   .Lx290_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx290_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx290_114
                                                                                        jmp   .Lx290_116
.Lx290_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx290_117
.Lx290_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx290_117
.Lx290_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx290_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n254_var_ref_α
                                                                                        jmp   n253_var_ref_α
n252_op11_β:
                                                                                        jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n255_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n256_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n257_op11_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n258_lit_integer_α
.Lx296_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n257_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              rsi, qword ptr [rip + .Lx297_2]
                                                                                        jmp   .Lx297_3
.Lx297_2:
                        .quad            .Lx297_2_s
.Lx297_2_s:
                        .string          "[]"
.Lx297_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n259_var_ref_α
n257_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n261_op11_α
.Lx298_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n262_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n260_op11_α:
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
                                                                                        jmp   n254_var_ref_α
n260_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n261_op11_α:
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
.Lx302_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx302_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx302_111
                        cmp              esi, 1
                                                                                        jne   .Lx302_112
                        mov              r8, rax
                                                                                        jmp   .Lx302_110
.Lx302_112:
                        cmp              esi, 2
                                                                                        jne   .Lx302_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx302_111
                        mov              r8, rax
                                                                                        jmp   .Lx302_110
.Lx302_113:
                        cmp              eax, 13
                                                                                        jne   .Lx302_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx302_111
                        cmp              rax, r8
                                                                                        je    .Lx302_111
                        mov              r8, rax
                                                                                        jmp   .Lx302_110
.Lx302_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx302_114
                        cmp              eax, 99
                                                                                        je    .Lx302_114
                        cmp              eax, 13
                                                                                        jne   .Lx302_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx302_114
                                                                                        jmp   .Lx302_118
.Lx302_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx302_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx302_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx302_115
                                                                                        jmp   .Lx302_114
.Lx302_119:
                        cmp              eax, 6
                                                                                        jne   .Lx302_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx302_114
                                                                                        jmp   .Lx302_115
.Lx302_120:
                        cmp              eax, 1
                                                                                        jne   .Lx302_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx302_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx302_114
                                                                                        jmp   .Lx302_115
.Lx302_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx302_117
.Lx302_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx302_117
.Lx302_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx302_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n264_op11_α
                                                                                        jmp   n263_var_ref_α
n261_op11_β:
                                                                                        jmp   n264_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n262_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n265_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n266_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n264_op11_α:
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
n264_op11_β:
                                                                                        jmp   proc_append$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n265_op11_α:
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
.Lx308_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx308_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx308_41
                        cmp              esi, 1
                                                                                        jne   .Lx308_55
                        mov              r8, rax
                                                                                        jmp   .Lx308_40
.Lx308_55:
                        cmp              esi, 2
                                                                                        jne   .Lx308_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx308_41
                        mov              r8, rax
                                                                                        jmp   .Lx308_40
.Lx308_56:
                        cmp              eax, 13
                                                                                        jne   .Lx308_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx308_41
                        cmp              rax, r8
                                                                                        je    .Lx308_41
                        mov              r8, rax
                                                                                        jmp   .Lx308_40
.Lx308_41:
                        lea              r9, [rbp + 848]
.Lx308_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx308_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx308_43
                        cmp              esi, 1
                                                                                        jne   .Lx308_57
                        mov              r9, rax
                                                                                        jmp   .Lx308_42
.Lx308_57:
                        cmp              esi, 2
                                                                                        jne   .Lx308_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx308_43
                        mov              r9, rax
                                                                                        jmp   .Lx308_42
.Lx308_58:
                        cmp              eax, 13
                                                                                        jne   .Lx308_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx308_43
                        cmp              rax, r9
                                                                                        je    .Lx308_43
                        mov              r9, rax
                                                                                        jmp   .Lx308_42
.Lx308_43:
                        cmp              r8, r9
                                                                                        je    .Lx308_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx308_44
                        cmp              eax, 99
                                                                                        je    .Lx308_44
                        cmp              eax, 13
                                                                                        jne   .Lx308_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx308_44
                                                                                        jmp   .Lx308_45
.Lx308_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx308_53
                        cmp              eax, 99
                                                                                        je    .Lx308_53
                        cmp              eax, 13
                                                                                        jne   .Lx308_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx308_53
                                                                                        jmp   .Lx308_46
.Lx308_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx308_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx308_53
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
                                                                                        jmp   .Lx308_51
.Lx308_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx308_47
                        cmp              eax, 99
                                                                                        je    .Lx308_47
                        cmp              eax, 13
                                                                                        jne   .Lx308_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx308_47
                                                                                        jmp   .Lx308_48
.Lx308_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx308_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx308_53
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
                                                                                        jmp   .Lx308_51
.Lx308_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx308_49
                        cmp              edx, 14
                                                                                        je    .Lx308_53
                                                                                        jmp   .Lx308_52
.Lx308_49:
                        cmp              edx, 14
                                                                                        je    .Lx308_52
                        cmp              ecx, 7
                                                                                        je    .Lx308_53
                        cmp              edx, 7
                                                                                        je    .Lx308_53
                        cmp              ecx, 6
                                                                                        jne   .Lx308_50
                        cmp              edx, 6
                                                                                        jne   .Lx308_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx308_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx308_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx308_51
                                                                                        jmp   .Lx308_52
.Lx308_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx308_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx308_53
.Lx308_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx308_54
.Lx308_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx308_54
.Lx308_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx308_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n267_var_ref_α
n265_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n268_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n267_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n269_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n270_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n271_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n270_op11_α:
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
.Lx317_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_61
                        cmp              esi, 1
                                                                                        jne   .Lx317_62
                        mov              r8, rax
                                                                                        jmp   .Lx317_60
.Lx317_62:
                        cmp              esi, 2
                                                                                        jne   .Lx317_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_61
                        mov              r8, rax
                                                                                        jmp   .Lx317_60
.Lx317_63:
                        cmp              eax, 13
                                                                                        jne   .Lx317_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_61
                        cmp              rax, r8
                                                                                        je    .Lx317_61
                        mov              r8, rax
                                                                                        jmp   .Lx317_60
.Lx317_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_80
                        cmp              eax, 99
                                                                                        je    .Lx317_80
                        cmp              eax, 13
                                                                                        jne   .Lx317_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx317_80
                                                                                        jmp   .Lx317_74
.Lx317_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx317_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx317_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx317_73
                        lea              r9, [rbp + 512]
.Lx317_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_65
                        cmp              esi, 1
                                                                                        jne   .Lx317_66
                        mov              r9, rax
                                                                                        jmp   .Lx317_64
.Lx317_66:
                        cmp              esi, 2
                                                                                        jne   .Lx317_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_65
                        mov              r9, rax
                                                                                        jmp   .Lx317_64
.Lx317_67:
                        cmp              eax, 13
                                                                                        jne   .Lx317_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_65
                        cmp              rax, r9
                                                                                        je    .Lx317_65
                        mov              r9, rax
                                                                                        jmp   .Lx317_64
.Lx317_65:
                        lea              rcx, [rbp + 528]
.Lx317_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx317_69
                        cmp              esi, 1
                                                                                        jne   .Lx317_70
                        mov              rcx, rax
                                                                                        jmp   .Lx317_68
.Lx317_70:
                        cmp              esi, 2
                                                                                        jne   .Lx317_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_69
                        mov              rcx, rax
                                                                                        jmp   .Lx317_68
.Lx317_71:
                        cmp              eax, 13
                                                                                        jne   .Lx317_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx317_69
                        cmp              rax, rcx
                                                                                        je    .Lx317_69
                        mov              rcx, rax
                                                                                        jmp   .Lx317_68
.Lx317_69:
                        cmp              r9, rcx
                                                                                        je    .Lx317_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_75
                        cmp              eax, 99
                                                                                        je    .Lx317_75
                        cmp              eax, 13
                                                                                        jne   .Lx317_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx317_75
                                                                                        jmp   .Lx317_72
.Lx317_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_76
                        cmp              eax, 99
                                                                                        je    .Lx317_76
                        cmp              eax, 13
                                                                                        jne   .Lx317_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx317_76
                                                                                        jmp   .Lx317_72
.Lx317_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx317_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx317_72
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
                                                                                        jmp   .Lx317_77
.Lx317_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx317_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx317_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx317_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx317_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx317_72
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
.Lx317_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_82
                        cmp              esi, 1
                                                                                        jne   .Lx317_83
                        mov              r9, rax
                                                                                        jmp   .Lx317_81
.Lx317_83:
                        cmp              esi, 2
                                                                                        jne   .Lx317_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_82
                        mov              r9, rax
                                                                                        jmp   .Lx317_81
.Lx317_84:
                        cmp              eax, 13
                                                                                        jne   .Lx317_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx317_82
                        cmp              rax, r9
                                                                                        je    .Lx317_82
                        mov              r9, rax
                                                                                        jmp   .Lx317_81
.Lx317_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_85
                        cmp              eax, 99
                                                                                        je    .Lx317_85
                        cmp              eax, 13
                                                                                        jne   .Lx317_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx317_85
                                                                                        jmp   .Lx317_86
.Lx317_85:
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
                                                                                        jmp   .Lx317_87
.Lx317_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx317_87:
                        lea              rcx, [rbp + 528]
.Lx317_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx317_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx317_89
                        cmp              esi, 1
                                                                                        jne   .Lx317_90
                        mov              rcx, rax
                                                                                        jmp   .Lx317_88
.Lx317_90:
                        cmp              esi, 2
                                                                                        jne   .Lx317_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx317_89
                        mov              rcx, rax
                                                                                        jmp   .Lx317_88
.Lx317_91:
                        cmp              eax, 13
                                                                                        jne   .Lx317_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx317_89
                        cmp              rax, rcx
                                                                                        je    .Lx317_89
                        mov              rcx, rax
                                                                                        jmp   .Lx317_88
.Lx317_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx317_92
                        cmp              eax, 99
                                                                                        je    .Lx317_92
                        cmp              eax, 13
                                                                                        jne   .Lx317_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx317_92
                                                                                        jmp   .Lx317_93
.Lx317_92:
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
                                                                                        jmp   .Lx317_94
.Lx317_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx317_94:
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
                                                                                        jmp   .Lx317_77
.Lx317_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx317_77
.Lx317_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx317_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n264_op11_α
                                                                                        jmp   n272_var_ref_α
n270_op11_β:
                                                                                        jmp   n264_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n271_op11_α:
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
.Lx318_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx318_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_41
                        cmp              esi, 1
                                                                                        jne   .Lx318_55
                        mov              r8, rax
                                                                                        jmp   .Lx318_40
.Lx318_55:
                        cmp              esi, 2
                                                                                        jne   .Lx318_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx318_41
                        mov              r8, rax
                                                                                        jmp   .Lx318_40
.Lx318_56:
                        cmp              eax, 13
                                                                                        jne   .Lx318_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_41
                        cmp              rax, r8
                                                                                        je    .Lx318_41
                        mov              r8, rax
                                                                                        jmp   .Lx318_40
.Lx318_41:
                        lea              r9, [rbp + 768]
.Lx318_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx318_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_43
                        cmp              esi, 1
                                                                                        jne   .Lx318_57
                        mov              r9, rax
                                                                                        jmp   .Lx318_42
.Lx318_57:
                        cmp              esi, 2
                                                                                        jne   .Lx318_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx318_43
                        mov              r9, rax
                                                                                        jmp   .Lx318_42
.Lx318_58:
                        cmp              eax, 13
                                                                                        jne   .Lx318_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx318_43
                        cmp              rax, r9
                                                                                        je    .Lx318_43
                        mov              r9, rax
                                                                                        jmp   .Lx318_42
.Lx318_43:
                        cmp              r8, r9
                                                                                        je    .Lx318_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx318_44
                        cmp              eax, 99
                                                                                        je    .Lx318_44
                        cmp              eax, 13
                                                                                        jne   .Lx318_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx318_44
                                                                                        jmp   .Lx318_45
.Lx318_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx318_53
                        cmp              eax, 99
                                                                                        je    .Lx318_53
                        cmp              eax, 13
                                                                                        jne   .Lx318_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx318_53
                                                                                        jmp   .Lx318_46
.Lx318_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx318_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx318_53
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
                                                                                        jmp   .Lx318_51
.Lx318_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx318_47
                        cmp              eax, 99
                                                                                        je    .Lx318_47
                        cmp              eax, 13
                                                                                        jne   .Lx318_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx318_47
                                                                                        jmp   .Lx318_48
.Lx318_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx318_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx318_53
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
                                                                                        jmp   .Lx318_51
.Lx318_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx318_49
                        cmp              edx, 14
                                                                                        je    .Lx318_53
                                                                                        jmp   .Lx318_52
.Lx318_49:
                        cmp              edx, 14
                                                                                        je    .Lx318_52
                        cmp              ecx, 7
                                                                                        je    .Lx318_53
                        cmp              edx, 7
                                                                                        je    .Lx318_53
                        cmp              ecx, 6
                                                                                        jne   .Lx318_50
                        cmp              edx, 6
                                                                                        jne   .Lx318_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx318_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx318_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx318_51
                                                                                        jmp   .Lx318_52
.Lx318_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx318_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx318_53
.Lx318_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx318_54
.Lx318_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx318_54
.Lx318_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx318_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n260_op11_α
                                                                                        jmp   n273_suspend_α
n271_op11_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n274_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n273_suspend_α:
                        lea              rax, [rip + n273_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n273_suspend_β:
                                                                                        jmp   n260_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n275_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n275_op11_α:
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
.Lx325_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx325_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        cmp              esi, 1
                                                                                        jne   .Lx325_55
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_55:
                        cmp              esi, 2
                                                                                        jne   .Lx325_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_56:
                        cmp              eax, 13
                                                                                        jne   .Lx325_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        cmp              rax, r8
                                                                                        je    .Lx325_41
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_41:
                        lea              r9, [rbp + 416]
.Lx325_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx325_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        cmp              esi, 1
                                                                                        jne   .Lx325_57
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_57:
                        cmp              esi, 2
                                                                                        jne   .Lx325_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_58:
                        cmp              eax, 13
                                                                                        jne   .Lx325_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        cmp              rax, r9
                                                                                        je    .Lx325_43
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_43:
                        cmp              r8, r9
                                                                                        je    .Lx325_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_44
                        cmp              eax, 99
                                                                                        je    .Lx325_44
                        cmp              eax, 13
                                                                                        jne   .Lx325_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx325_44
                                                                                        jmp   .Lx325_45
.Lx325_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_53
                        cmp              eax, 99
                                                                                        je    .Lx325_53
                        cmp              eax, 13
                                                                                        jne   .Lx325_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx325_53
                                                                                        jmp   .Lx325_46
.Lx325_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx325_53
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
                                                                                        jmp   .Lx325_51
.Lx325_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_47
                        cmp              eax, 99
                                                                                        je    .Lx325_47
                        cmp              eax, 13
                                                                                        jne   .Lx325_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx325_47
                                                                                        jmp   .Lx325_48
.Lx325_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx325_53
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
                                                                                        jmp   .Lx325_51
.Lx325_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx325_49
                        cmp              edx, 14
                                                                                        je    .Lx325_53
                                                                                        jmp   .Lx325_52
.Lx325_49:
                        cmp              edx, 14
                                                                                        je    .Lx325_52
                        cmp              ecx, 7
                                                                                        je    .Lx325_53
                        cmp              edx, 7
                                                                                        je    .Lx325_53
                        cmp              ecx, 6
                                                                                        jne   .Lx325_50
                        cmp              edx, 6
                                                                                        jne   .Lx325_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx325_51
                                                                                        jmp   .Lx325_52
.Lx325_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx325_53
.Lx325_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx325_54
.Lx325_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx325_54
.Lx325_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx325_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n264_op11_α
                                                                                        jmp   n276_var_ref_α
n275_op11_β:
                                                                                        jmp   n264_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n278_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n279_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n279_op11_α:
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
.Lx332_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_61
                        cmp              esi, 1
                                                                                        jne   .Lx332_62
                        mov              r8, rax
                                                                                        jmp   .Lx332_60
.Lx332_62:
                        cmp              esi, 2
                                                                                        jne   .Lx332_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_61
                        mov              r8, rax
                                                                                        jmp   .Lx332_60
.Lx332_63:
                        cmp              eax, 13
                                                                                        jne   .Lx332_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_61
                        cmp              rax, r8
                                                                                        je    .Lx332_61
                        mov              r8, rax
                                                                                        jmp   .Lx332_60
.Lx332_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_80
                        cmp              eax, 99
                                                                                        je    .Lx332_80
                        cmp              eax, 13
                                                                                        jne   .Lx332_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx332_80
                                                                                        jmp   .Lx332_74
.Lx332_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx332_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx332_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx332_73
                        lea              r9, [rbp + 320]
.Lx332_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_65
                        cmp              esi, 1
                                                                                        jne   .Lx332_66
                        mov              r9, rax
                                                                                        jmp   .Lx332_64
.Lx332_66:
                        cmp              esi, 2
                                                                                        jne   .Lx332_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_65
                        mov              r9, rax
                                                                                        jmp   .Lx332_64
.Lx332_67:
                        cmp              eax, 13
                                                                                        jne   .Lx332_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_65
                        cmp              rax, r9
                                                                                        je    .Lx332_65
                        mov              r9, rax
                                                                                        jmp   .Lx332_64
.Lx332_65:
                        lea              rcx, [rbp + 336]
.Lx332_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_69
                        cmp              esi, 1
                                                                                        jne   .Lx332_70
                        mov              rcx, rax
                                                                                        jmp   .Lx332_68
.Lx332_70:
                        cmp              esi, 2
                                                                                        jne   .Lx332_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_69
                        mov              rcx, rax
                                                                                        jmp   .Lx332_68
.Lx332_71:
                        cmp              eax, 13
                                                                                        jne   .Lx332_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_69
                        cmp              rax, rcx
                                                                                        je    .Lx332_69
                        mov              rcx, rax
                                                                                        jmp   .Lx332_68
.Lx332_69:
                        cmp              r9, rcx
                                                                                        je    .Lx332_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_75
                        cmp              eax, 99
                                                                                        je    .Lx332_75
                        cmp              eax, 13
                                                                                        jne   .Lx332_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx332_75
                                                                                        jmp   .Lx332_72
.Lx332_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_76
                        cmp              eax, 99
                                                                                        je    .Lx332_76
                        cmp              eax, 13
                                                                                        jne   .Lx332_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx332_76
                                                                                        jmp   .Lx332_72
.Lx332_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx332_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx332_72
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
                                                                                        jmp   .Lx332_77
.Lx332_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx332_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx332_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx332_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx332_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx332_72
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
.Lx332_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_82
                        cmp              esi, 1
                                                                                        jne   .Lx332_83
                        mov              r9, rax
                                                                                        jmp   .Lx332_81
.Lx332_83:
                        cmp              esi, 2
                                                                                        jne   .Lx332_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_82
                        mov              r9, rax
                                                                                        jmp   .Lx332_81
.Lx332_84:
                        cmp              eax, 13
                                                                                        jne   .Lx332_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_82
                        cmp              rax, r9
                                                                                        je    .Lx332_82
                        mov              r9, rax
                                                                                        jmp   .Lx332_81
.Lx332_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_85
                        cmp              eax, 99
                                                                                        je    .Lx332_85
                        cmp              eax, 13
                                                                                        jne   .Lx332_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx332_85
                                                                                        jmp   .Lx332_86
.Lx332_85:
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
                                                                                        jmp   .Lx332_87
.Lx332_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx332_87:
                        lea              rcx, [rbp + 336]
.Lx332_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_89
                        cmp              esi, 1
                                                                                        jne   .Lx332_90
                        mov              rcx, rax
                                                                                        jmp   .Lx332_88
.Lx332_90:
                        cmp              esi, 2
                                                                                        jne   .Lx332_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_89
                        mov              rcx, rax
                                                                                        jmp   .Lx332_88
.Lx332_91:
                        cmp              eax, 13
                                                                                        jne   .Lx332_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_89
                        cmp              rax, rcx
                                                                                        je    .Lx332_89
                        mov              rcx, rax
                                                                                        jmp   .Lx332_88
.Lx332_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_92
                        cmp              eax, 99
                                                                                        je    .Lx332_92
                        cmp              eax, 13
                                                                                        jne   .Lx332_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx332_92
                                                                                        jmp   .Lx332_93
.Lx332_92:
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
                                                                                        jmp   .Lx332_94
.Lx332_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx332_94:
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
                                                                                        jmp   .Lx332_77
.Lx332_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx332_77
.Lx332_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx332_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n264_op11_α
                                                                                        jmp   n280_var_ref_α
n279_op11_β:
                                                                                        jmp   n264_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n281_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n282_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n283_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n283_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx340_23
.Lx340_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx340_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx340_25
.Lx340_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx340_25:
                        mov              edi, 6
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx340_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx340_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n264_op11_α
                                                                                        jmp   n284_suspend_α
n283_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "append/3"
#-----------------------------------------------------------------------------------------------------------------------
n284_suspend_α:
                        lea              rax, [rip + n284_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_append$2F3_γ
n284_suspend_β:
                                                                                        jmp   n283_call_proc_staged_β
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
                        lea              rax, [rip + n363_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx365_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx365_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx365_101
.Lx365_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx365_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n344_var_ref_α
n343_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n345_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n346_op11_α:
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
                        lea              r9, [rbp + 608]
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
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n348_op11_α
                                                                                        jmp   n347_var_ref_α
n346_op11_β:
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n349_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n350_var_ref_α
n348_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n351_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n352_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
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
                        lea              r9, [rbp + 528]
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n348_op11_α
                                                                                        jmp   n353_lit_string_α
n351_op11_β:
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n354_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n355_var_ref_α
.Lx381_0:
                        .quad            .Lx381_0_s
.Lx381_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
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
.Lx382_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              esi, 1
                                                                                        jne   .Lx382_55
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_55:
                        cmp              esi, 2
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_56:
                        cmp              eax, 13
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              rax, r8
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_41:
                        lea              r9, [rbp + 240]
.Lx382_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx382_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        cmp              esi, 1
                                                                                        jne   .Lx382_57
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_57:
                        cmp              esi, 2
                                                                                        jne   .Lx382_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_58:
                        cmp              eax, 13
                                                                                        jne   .Lx382_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        cmp              rax, r9
                                                                                        je    .Lx382_43
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_43:
                        cmp              r8, r9
                                                                                        je    .Lx382_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_44
                        cmp              eax, 99
                                                                                        je    .Lx382_44
                        cmp              eax, 13
                                                                                        jne   .Lx382_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx382_44
                                                                                        jmp   .Lx382_45
.Lx382_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_53
                        cmp              eax, 99
                                                                                        je    .Lx382_53
                        cmp              eax, 13
                                                                                        jne   .Lx382_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_46
.Lx382_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx382_53
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
                                                                                        jmp   .Lx382_51
.Lx382_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_47
                        cmp              eax, 99
                                                                                        je    .Lx382_47
                        cmp              eax, 13
                                                                                        jne   .Lx382_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_47
                                                                                        jmp   .Lx382_48
.Lx382_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx382_53
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
                                                                                        jmp   .Lx382_51
.Lx382_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx382_49
                        cmp              edx, 14
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_52
.Lx382_49:
                        cmp              edx, 14
                                                                                        je    .Lx382_52
                        cmp              ecx, 7
                                                                                        je    .Lx382_53
                        cmp              edx, 7
                                                                                        je    .Lx382_53
                        cmp              ecx, 6
                                                                                        jne   .Lx382_50
                        cmp              edx, 6
                                                                                        jne   .Lx382_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx382_51
                                                                                        jmp   .Lx382_52
.Lx382_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx382_53
.Lx382_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx382_54
.Lx382_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx382_54
.Lx382_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx382_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n357_op11_α
                                                                                        jmp   n356_var_ref_α
n354_op11_β:
                                                                                        jmp   n357_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n358_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
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
n357_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n348_op11_α
                                                                                        jmp   n362_op11_α
n360_op11_β:
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
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
.Lx393_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              rax, r8
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_41:
                        lea              r9, [rbp + 160]
.Lx393_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx393_44
                        cmp              eax, 13
                                                                                        jne   .Lx393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx393_44
                                                                                        jmp   .Lx393_45
.Lx393_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_53
                        cmp              eax, 99
                                                                                        je    .Lx393_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx393_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx393_49
                        cmp              edx, 14
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_52
.Lx393_49:
                        cmp              edx, 14
                                                                                        je    .Lx393_52
                        cmp              ecx, 7
                                                                                        je    .Lx393_53
                        cmp              edx, 7
                                                                                        je    .Lx393_53
                        cmp              ecx, 6
                                                                                        jne   .Lx393_50
                        cmp              edx, 6
                                                                                        jne   .Lx393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx393_54
.Lx393_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx393_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n357_op11_α
                                                                                        jmp   n363_suspend_α
n361_op11_β:
                                                                                        jmp   n357_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn395:              .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n348_op11_α
                                                                                        jmp   n364_suspend_α
n362_op11_β:
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n363_suspend_α:
                        lea              rax, [rip + n363_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n363_suspend_β:
                                                                                        jmp   n357_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n364_suspend_α:
                        lea              rax, [rip + n364_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n364_suspend_β:
                                                                                        jmp   n348_op11_α
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
                        .globl           proc_expand_term$2F2_α
proc_expand_term$2F2_α:
                        .global          proc_expand_term$2F2_α
                        .global          proc_expand_term$2F2_β
                        .global          proc_expand_term$2F2_γ
                        .global          proc_expand_term$2F2_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_expand_term$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n400_op11_α:
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
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx410_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_expand_term$2F2_ω
                                                                                        jmp   n401_var_ref_α
n400_op11_β:
                                                                                        jmp   proc_expand_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n402_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n403_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n403_op11_α:
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
.Lx415_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              esi, 1
                                                                                        jne   .Lx415_55
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_55:
                        cmp              esi, 2
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_56:
                        cmp              eax, 13
                                                                                        jne   .Lx415_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_41
                        cmp              rax, r8
                                                                                        je    .Lx415_41
                        mov              r8, rax
                                                                                        jmp   .Lx415_40
.Lx415_41:
                        lea              r9, [rbp + 256]
.Lx415_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx415_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        cmp              esi, 1
                                                                                        jne   .Lx415_57
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_57:
                        cmp              esi, 2
                                                                                        jne   .Lx415_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_58:
                        cmp              eax, 13
                                                                                        jne   .Lx415_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx415_43
                        cmp              rax, r9
                                                                                        je    .Lx415_43
                        mov              r9, rax
                                                                                        jmp   .Lx415_42
.Lx415_43:
                        cmp              r8, r9
                                                                                        je    .Lx415_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_44
                        cmp              eax, 99
                                                                                        je    .Lx415_44
                        cmp              eax, 13
                                                                                        jne   .Lx415_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx415_44
                                                                                        jmp   .Lx415_45
.Lx415_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_53
                        cmp              eax, 99
                                                                                        je    .Lx415_53
                        cmp              eax, 13
                                                                                        jne   .Lx415_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_46
.Lx415_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx415_53
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
                                                                                        jmp   .Lx415_51
.Lx415_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx415_47
                        cmp              eax, 99
                                                                                        je    .Lx415_47
                        cmp              eax, 13
                                                                                        jne   .Lx415_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx415_47
                                                                                        jmp   .Lx415_48
.Lx415_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx415_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx415_53
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
                                                                                        jmp   .Lx415_51
.Lx415_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx415_49
                        cmp              edx, 14
                                                                                        je    .Lx415_53
                                                                                        jmp   .Lx415_52
.Lx415_49:
                        cmp              edx, 14
                                                                                        je    .Lx415_52
                        cmp              ecx, 7
                                                                                        je    .Lx415_53
                        cmp              edx, 7
                                                                                        je    .Lx415_53
                        cmp              ecx, 6
                                                                                        jne   .Lx415_50
                        cmp              edx, 6
                                                                                        jne   .Lx415_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx415_51
                                                                                        jmp   .Lx415_52
.Lx415_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx415_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx415_53
.Lx415_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx415_54
.Lx415_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx415_54
.Lx415_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx415_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n405_op11_α
                                                                                        jmp   n404_var_ref_α
n403_op11_β:
                                                                                        jmp   n405_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n406_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_op11_α:
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
                                                                                        je    proc_expand_term$2F2_ω
                                                                                        jmp   proc_expand_term$2F2_ω
n405_op11_β:
                                                                                        jmp   proc_expand_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n407_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
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
.Lx421_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx421_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        cmp              esi, 1
                                                                                        jne   .Lx421_55
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_55:
                        cmp              esi, 2
                                                                                        jne   .Lx421_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_56:
                        cmp              eax, 13
                                                                                        jne   .Lx421_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_41
                        cmp              rax, r8
                                                                                        je    .Lx421_41
                        mov              r8, rax
                                                                                        jmp   .Lx421_40
.Lx421_41:
                        lea              r9, [rbp + 176]
.Lx421_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx421_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        cmp              esi, 1
                                                                                        jne   .Lx421_57
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_57:
                        cmp              esi, 2
                                                                                        jne   .Lx421_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_58:
                        cmp              eax, 13
                                                                                        jne   .Lx421_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx421_43
                        cmp              rax, r9
                                                                                        je    .Lx421_43
                        mov              r9, rax
                                                                                        jmp   .Lx421_42
.Lx421_43:
                        cmp              r8, r9
                                                                                        je    .Lx421_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_44
                        cmp              eax, 99
                                                                                        je    .Lx421_44
                        cmp              eax, 13
                                                                                        jne   .Lx421_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx421_44
                                                                                        jmp   .Lx421_45
.Lx421_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_53
                        cmp              eax, 99
                                                                                        je    .Lx421_53
                        cmp              eax, 13
                                                                                        jne   .Lx421_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx421_53
                                                                                        jmp   .Lx421_46
.Lx421_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx421_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx421_53
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
                                                                                        jmp   .Lx421_51
.Lx421_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx421_47
                        cmp              eax, 99
                                                                                        je    .Lx421_47
                        cmp              eax, 13
                                                                                        jne   .Lx421_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx421_47
                                                                                        jmp   .Lx421_48
.Lx421_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx421_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx421_53
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
                                                                                        jmp   .Lx421_51
.Lx421_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx421_49
                        cmp              edx, 14
                                                                                        je    .Lx421_53
                                                                                        jmp   .Lx421_52
.Lx421_49:
                        cmp              edx, 14
                                                                                        je    .Lx421_52
                        cmp              ecx, 7
                                                                                        je    .Lx421_53
                        cmp              edx, 7
                                                                                        je    .Lx421_53
                        cmp              ecx, 6
                                                                                        jne   .Lx421_50
                        cmp              edx, 6
                                                                                        jne   .Lx421_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx421_51
                                                                                        jmp   .Lx421_52
.Lx421_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx421_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx421_53
.Lx421_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx421_54
.Lx421_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx421_54
.Lx421_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx421_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n405_op11_α
                                                                                        jmp   n408_move_label_α
n407_op11_β:
                                                                                        jmp   n405_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n408_move_label_α:
                        lea              rax, [rip + n405_op11_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_expand_term$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n409_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 64]
n409_disjunction_β:
                                                                                        jmp   proc_expand_term$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_β:
                                                                                        jmp   n409_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 328]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_expand_term$2F2_dcα:
                        pop              r11
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 320], r11
                        lea              rax, [rip + .Lx426_2]
                        mov              qword ptr [rbp + 328], rax
                        lea              rax, [rip + .Lx426_3]
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
                                                                                        jmp   proc_expand_term$2F2_α_body
.Lx426_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx426_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -352
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
                        lea              rax, [rip + n430_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n429_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx435_60:
                        .section         .rodata
.Lbynamegenfn168:       .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn168]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_prolog_flag$2F2_ω
                                                                                        jmp   n430_suspend_α
n429_call_builtin_gen_β:
                                                                                        jmp   .Lx435_60
#-----------------------------------------------------------------------------------------------------------------------
n430_suspend_α:
                        lea              rax, [rip + n430_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_prolog_flag$2F2_γ
n430_suspend_β:
                                                                                        jmp   n429_call_builtin_gen_β
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
                        lea              rax, [rip + n446_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n438_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx447_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx447_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx447_101
.Lx447_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx447_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   n439_var_ref_α
n438_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n441_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n441_op11_α:
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
.Lx452_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_41
                        cmp              esi, 1
                                                                                        jne   .Lx452_55
                        mov              r8, rax
                                                                                        jmp   .Lx452_40
.Lx452_55:
                        cmp              esi, 2
                                                                                        jne   .Lx452_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_41
                        mov              r8, rax
                                                                                        jmp   .Lx452_40
.Lx452_56:
                        cmp              eax, 13
                                                                                        jne   .Lx452_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_41
                        cmp              rax, r8
                                                                                        je    .Lx452_41
                        mov              r8, rax
                                                                                        jmp   .Lx452_40
.Lx452_41:
                        lea              r9, [rbp + 240]
.Lx452_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx452_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_43
                        cmp              esi, 1
                                                                                        jne   .Lx452_57
                        mov              r9, rax
                                                                                        jmp   .Lx452_42
.Lx452_57:
                        cmp              esi, 2
                                                                                        jne   .Lx452_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx452_43
                        mov              r9, rax
                                                                                        jmp   .Lx452_42
.Lx452_58:
                        cmp              eax, 13
                                                                                        jne   .Lx452_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx452_43
                        cmp              rax, r9
                                                                                        je    .Lx452_43
                        mov              r9, rax
                                                                                        jmp   .Lx452_42
.Lx452_43:
                        cmp              r8, r9
                                                                                        je    .Lx452_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_44
                        cmp              eax, 99
                                                                                        je    .Lx452_44
                        cmp              eax, 13
                                                                                        jne   .Lx452_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx452_44
                                                                                        jmp   .Lx452_45
.Lx452_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_53
                        cmp              eax, 99
                                                                                        je    .Lx452_53
                        cmp              eax, 13
                                                                                        jne   .Lx452_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx452_53
                                                                                        jmp   .Lx452_46
.Lx452_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx452_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx452_53
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
                                                                                        jmp   .Lx452_51
.Lx452_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx452_47
                        cmp              eax, 99
                                                                                        je    .Lx452_47
                        cmp              eax, 13
                                                                                        jne   .Lx452_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx452_47
                                                                                        jmp   .Lx452_48
.Lx452_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx452_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx452_53
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
                                                                                        jmp   .Lx452_51
.Lx452_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx452_49
                        cmp              edx, 14
                                                                                        je    .Lx452_53
                                                                                        jmp   .Lx452_52
.Lx452_49:
                        cmp              edx, 14
                                                                                        je    .Lx452_52
                        cmp              ecx, 7
                                                                                        je    .Lx452_53
                        cmp              edx, 7
                                                                                        je    .Lx452_53
                        cmp              ecx, 6
                                                                                        jne   .Lx452_50
                        cmp              edx, 6
                                                                                        jne   .Lx452_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx452_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx452_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx452_51
                                                                                        jmp   .Lx452_52
.Lx452_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx452_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx452_53
.Lx452_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx452_54
.Lx452_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx452_54
.Lx452_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx452_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n443_op11_α
                                                                                        jmp   n442_lit_string_α
n441_op11_β:
                                                                                        jmp   n443_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n444_var_ref_α
.Lx453_0:
                        .quad            .Lx453_0_s
.Lx453_0_s:
                        .string          "argv"
#-----------------------------------------------------------------------------------------------------------------------
n443_op11_α:
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
n443_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n445_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx458_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx458_21
.Lx458_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx458_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx458_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx458_23
.Lx458_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx458_23:
                        mov              edi, 9
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx458_1
                        lea              rcx, [rip + .Lx458_3]
                        lea              rdx, [rip + .Lx458_4]
                                                                                        jmp   rax
.Lx458_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx458_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx458_2
.Lx458_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx458_2
.Lx458_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx458_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx458_2
.Lx458_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx458_2
.Lx458_1:
                        call             rt_faildescr@PLT
.Lx458_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n443_op11_α
                                                                                        jmp   n446_suspend_α
n445_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n446_suspend_α:
                        lea              rax, [rip + n446_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_argument_list$2F1_γ
n446_suspend_β:
                                                                                        jmp   n445_call_proc_staged_β
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
n461_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx468_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx468_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx468_101
.Lx468_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx468_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   n462_var_ref_α
n461_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n463_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n464_op11_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          "CIAO Prolog"
#-----------------------------------------------------------------------------------------------------------------------
n464_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx472_2]
                                                                                        jmp   .Lx472_3
.Lx472_2:
                        .quad            .Lx472_2_s
.Lx472_2_s:
                        .string          "CIAO Prolog"
.Lx472_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n466_op11_α
                                                                                        jmp   n465_move_label_α
n464_op11_β:
                                                                                        jmp   n466_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n465_move_label_α:
                        lea              rax, [rip + n466_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_name$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n466_op11_α:
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
n466_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n467_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n467_disjunction_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_β:
                                                                                        jmp   n467_disjunction_α
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
                        lea              rax, [rip + .Lx478_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx478_3]
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
.Lx478_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx478_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
                        .global          proc_pj_dir_2$2F0_α
                        .global          proc_pj_dir_2$2F0_β
                        .global          proc_pj_dir_2$2F0_γ
                        .global          proc_pj_dir_2$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n485_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n479_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx486_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx486_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx486_101
.Lx486_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx486_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n480_lit_string_α
n479_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n481_lit_string_α
.Lx487_0:
                        .quad            .Lx487_0_s
.Lx487_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n481_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n482_op11_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "lists"
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
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
                                                                                        je    n484_op11_α
                                                                                        jmp   n483_call_proc_staged_α
n482_op11_β:
                                                                                        jmp   n484_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n483_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx491_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx491_21
.Lx491_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx491_21:
                        mov              rdi, qword ptr [rip + .Lx491_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx491_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx491_3]
                        lea              rdx, [rip + .Lx491_4]
                                                                                        jmp   rax
.Lx491_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx491_2
.Lx491_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx491_2
.Lx491_1:
                        call             rt_faildescr@PLT
.Lx491_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n484_op11_α
                                                                                        jmp   n485_suspend_α
n483_call_proc_staged_β:
                                                                                        jmp   n484_op11_α
.Lx491_0:
                        .quad            .Lx491_0_s
.Lx491_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n484_op11_α:
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
n484_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n485_suspend_α:
                        lea              rax, [rip + n485_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n485_suspend_β:
                                                                                        jmp   n483_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_2$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n501_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx502_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx502_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx502_101
.Lx502_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx502_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n496_lit_string_α
n495_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n497_lit_string_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n498_op11_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
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
                                                                                        je    n500_op11_α
                                                                                        jmp   n499_call_proc_staged_α
n498_op11_β:
                                                                                        jmp   n500_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n499_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx507_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx507_21
.Lx507_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx507_21:
                        mov              rdi, qword ptr [rip + .Lx507_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx507_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx507_3]
                        lea              rdx, [rip + .Lx507_4]
                                                                                        jmp   rax
.Lx507_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx507_2
.Lx507_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx507_2
.Lx507_1:
                        call             rt_faildescr@PLT
.Lx507_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n500_op11_α
                                                                                        jmp   n501_suspend_α
n499_call_proc_staged_β:
                                                                                        jmp   n500_op11_α
.Lx507_0:
                        .quad            .Lx507_0_s
.Lx507_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
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
n500_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n501_suspend_α:
                        lea              rax, [rip + n501_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n501_suspend_β:
                                                                                        jmp   n499_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
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
n511_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx518_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx518_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx518_101
.Lx518_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx518_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   n512_var_ref_α
n511_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n513_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n514_op11_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "2000"
#-----------------------------------------------------------------------------------------------------------------------
n514_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx522_2]
                                                                                        jmp   .Lx522_3
.Lx522_2:
                        .quad            .Lx522_2_s
.Lx522_2_s:
                        .string          "2000"
.Lx522_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n516_op11_α
                                                                                        jmp   n515_move_label_α
n514_op11_β:
                                                                                        jmp   n516_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n515_move_label_α:
                        lea              rax, [rip + n516_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_date$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n516_op11_α:
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
n516_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n517_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n517_disjunction_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_β:
                                                                                        jmp   n517_disjunction_α
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
                        lea              rax, [rip + .Lx528_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx528_3]
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
.Lx528_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx528_3:
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
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_assign$2F2_α_body:
                        lea              rax, [rip + n546_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n529_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx547_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx547_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx547_101
.Lx547_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx547_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   n530_var_ref_α
n529_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n531_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_op11_α:
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
                        lea              r9, [rbp + 512]
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n534_op11_α
                                                                                        jmp   n533_var_ref_α
n532_op11_β:
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n533_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n535_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n534_op11_α:
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
n534_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n536_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n536_op11_α:
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
.Lx558_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx558_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        cmp              esi, 1
                                                                                        jne   .Lx558_55
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_55:
                        cmp              esi, 2
                                                                                        jne   .Lx558_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_56:
                        cmp              eax, 13
                                                                                        jne   .Lx558_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_41
                        cmp              rax, r8
                                                                                        je    .Lx558_41
                        mov              r8, rax
                                                                                        jmp   .Lx558_40
.Lx558_41:
                        lea              r9, [rbp + 432]
.Lx558_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx558_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        cmp              esi, 1
                                                                                        jne   .Lx558_57
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_57:
                        cmp              esi, 2
                                                                                        jne   .Lx558_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_58:
                        cmp              eax, 13
                                                                                        jne   .Lx558_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx558_43
                        cmp              rax, r9
                                                                                        je    .Lx558_43
                        mov              r9, rax
                                                                                        jmp   .Lx558_42
.Lx558_43:
                        cmp              r8, r9
                                                                                        je    .Lx558_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_44
                        cmp              eax, 99
                                                                                        je    .Lx558_44
                        cmp              eax, 13
                                                                                        jne   .Lx558_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx558_44
                                                                                        jmp   .Lx558_45
.Lx558_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_53
                        cmp              eax, 99
                                                                                        je    .Lx558_53
                        cmp              eax, 13
                                                                                        jne   .Lx558_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx558_53
                                                                                        jmp   .Lx558_46
.Lx558_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx558_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx558_53
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
                                                                                        jmp   .Lx558_51
.Lx558_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx558_47
                        cmp              eax, 99
                                                                                        je    .Lx558_47
                        cmp              eax, 13
                                                                                        jne   .Lx558_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx558_47
                                                                                        jmp   .Lx558_48
.Lx558_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx558_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx558_53
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
                                                                                        jmp   .Lx558_51
.Lx558_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx558_49
                        cmp              edx, 14
                                                                                        je    .Lx558_53
                                                                                        jmp   .Lx558_52
.Lx558_49:
                        cmp              edx, 14
                                                                                        je    .Lx558_52
                        cmp              ecx, 7
                                                                                        je    .Lx558_53
                        cmp              edx, 7
                                                                                        je    .Lx558_53
                        cmp              ecx, 6
                                                                                        jne   .Lx558_50
                        cmp              edx, 6
                                                                                        jne   .Lx558_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx558_51
                                                                                        jmp   .Lx558_52
.Lx558_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx558_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx558_53
.Lx558_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx558_54
.Lx558_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx558_54
.Lx558_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx558_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n534_op11_α
                                                                                        jmp   n537_var_ref_α
n536_op11_β:
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n538_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n539_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n539_call_proc_staged_α:
                        mov              qword ptr [rbp + 336], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx564_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx564_21
.Lx564_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx564_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx564_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx564_23
.Lx564_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx564_23:
                        mov              edi, 7
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx564_1
                        lea              rcx, [rip + .Lx564_3]
                        lea              rdx, [rip + .Lx564_4]
                                                                                        jmp   rax
.Lx564_3:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx564_5
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx564_2
.Lx564_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx564_2
.Lx564_4:
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx564_6
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx564_2
.Lx564_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx564_2
.Lx564_1:
                        call             rt_faildescr@PLT
.Lx564_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n534_op11_α
                                                                                        jmp   n540_op19_α
n539_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 344]
                                                                                        jmp   qword ptr [rsp]
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "$disj0/2"
#-----------------------------------------------------------------------------------------------------------------------
n540_op19_α:
                                                                                        jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n542_var_ref_α
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n542_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n543_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n544_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
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
                                                                                        je    n534_op11_α
                                                                                        jmp   n545_op11_α
n544_op11_β:
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n545_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn573:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn573]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n534_op11_α
                                                                                        jmp   n546_suspend_α
n545_op11_β:
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_suspend_α:
                        lea              rax, [rip + n546_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_assign$2F2_γ
n546_suspend_β:
                                                                                        jmp   n534_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_assign$2F2_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 528
                        mov              [rsp + 504], rcx
                        mov              [rsp + 512], rdx
                        mov              [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 496
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n589_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx590_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx590_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx590_101
.Lx590_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx590_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n577_lit_string_α
n576_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n577_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n578_lit_string_α
.Lx591_0:
                        .quad            .Lx591_0_s
.Lx591_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n579_op11_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "prolog_sys"
#-----------------------------------------------------------------------------------------------------------------------
n579_op11_α:
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
                                                                                        je    n581_op11_α
                                                                                        jmp   n580_lit_string_α
n579_op11_β:
                                                                                        jmp   n581_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n580_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx594_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n582_lit_string_α
.Lx594_0:
                        .quad            .Lx594_0_s
.Lx594_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n581_op11_α:
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
n581_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n583_lit_string_α
.Lx596_0:
                        .quad            .Lx596_0_s
.Lx596_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n583_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx597_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n584_lit_integer_α
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "statistics"
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx598_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n585_op11_α
.Lx598_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n585_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n586_lit_string_α
n585_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx600_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n587_op11_α
.Lx600_0:
                        .quad            .Lx600_0_s
.Lx600_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n587_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n581_op11_α
                                                                                        jmp   n588_call_proc_staged_α
n587_op11_β:
                                                                                        jmp   n581_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n588_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx603_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx603_21
.Lx603_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx603_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx603_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx603_23
.Lx603_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx603_23:
                        mov              rdi, qword ptr [rip + .Lx603_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx603_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx603_3]
                        lea              rdx, [rip + .Lx603_4]
                                                                                        jmp   rax
.Lx603_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx603_2
.Lx603_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx603_2
.Lx603_1:
                        call             rt_faildescr@PLT
.Lx603_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n581_op11_α
                                                                                        jmp   n589_suspend_α
n588_call_proc_staged_β:
                                                                                        jmp   n581_op11_α
.Lx603_0:
                        .quad            .Lx603_0_s
.Lx603_0_s:
                        .string          "use_module/2"
#-----------------------------------------------------------------------------------------------------------------------
n589_suspend_α:
                        lea              rax, [rip + n589_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n589_suspend_β:
                                                                                        jmp   n588_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 504]
                        mov              rbp, [rbp + 520]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 512]
                        lea              rsp, [rbp + 528]
                        mov              rbp, [rbp + 520]
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
                        lea              rax, [rip + n612_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n607_lit_string_α
n606_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n608_lit_string_α
.Lx614_0:
                        .quad            .Lx614_0_s
.Lx614_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx615_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n609_op11_α
.Lx615_0:
                        .quad            .Lx615_0_s
.Lx615_0_s:
                        .string          "sort"
#-----------------------------------------------------------------------------------------------------------------------
n609_op11_α:
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
                                                                                        je    n611_op11_α
                                                                                        jmp   n610_call_proc_staged_α
n609_op11_β:
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx618_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx618_21
.Lx618_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx618_21:
                        mov              rdi, qword ptr [rip + .Lx618_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx618_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx618_3]
                        lea              rdx, [rip + .Lx618_4]
                                                                                        jmp   rax
.Lx618_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx618_2
.Lx618_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx618_2
.Lx618_1:
                        call             rt_faildescr@PLT
.Lx618_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n611_op11_α
                                                                                        jmp   n612_suspend_α
n610_call_proc_staged_β:
                                                                                        jmp   n611_op11_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "use_module/1"
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
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   proc_pj_dir_1$2F0_ω
n611_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n612_suspend_α:
                        lea              rax, [rip + n612_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n612_suspend_β:
                                                                                        jmp   n610_call_proc_staged_β
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
                        lea              rax, [rip + n637_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx638_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx638_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx638_101
.Lx638_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx638_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   n623_var_ref_α
n622_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n623_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n624_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n625_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n625_op11_α:
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
                        lea              r9, [rbp + 432]
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n627_op11_α
                                                                                        jmp   n626_var_ref_α
n625_op11_β:
                                                                                        jmp   n627_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n628_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n627_op11_α:
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
n627_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n628_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n629_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n629_op11_α:
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
.Lx649_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx649_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_41
                        cmp              esi, 1
                                                                                        jne   .Lx649_55
                        mov              r8, rax
                                                                                        jmp   .Lx649_40
.Lx649_55:
                        cmp              esi, 2
                                                                                        jne   .Lx649_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx649_41
                        mov              r8, rax
                                                                                        jmp   .Lx649_40
.Lx649_56:
                        cmp              eax, 13
                                                                                        jne   .Lx649_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_41
                        cmp              rax, r8
                                                                                        je    .Lx649_41
                        mov              r8, rax
                                                                                        jmp   .Lx649_40
.Lx649_41:
                        lea              r9, [rbp + 352]
.Lx649_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx649_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_43
                        cmp              esi, 1
                                                                                        jne   .Lx649_57
                        mov              r9, rax
                                                                                        jmp   .Lx649_42
.Lx649_57:
                        cmp              esi, 2
                                                                                        jne   .Lx649_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx649_43
                        mov              r9, rax
                                                                                        jmp   .Lx649_42
.Lx649_58:
                        cmp              eax, 13
                                                                                        jne   .Lx649_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx649_43
                        cmp              rax, r9
                                                                                        je    .Lx649_43
                        mov              r9, rax
                                                                                        jmp   .Lx649_42
.Lx649_43:
                        cmp              r8, r9
                                                                                        je    .Lx649_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx649_44
                        cmp              eax, 99
                                                                                        je    .Lx649_44
                        cmp              eax, 13
                                                                                        jne   .Lx649_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx649_44
                                                                                        jmp   .Lx649_45
.Lx649_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx649_53
                        cmp              eax, 99
                                                                                        je    .Lx649_53
                        cmp              eax, 13
                                                                                        jne   .Lx649_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx649_53
                                                                                        jmp   .Lx649_46
.Lx649_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx649_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx649_53
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
                                                                                        jmp   .Lx649_51
.Lx649_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx649_47
                        cmp              eax, 99
                                                                                        je    .Lx649_47
                        cmp              eax, 13
                                                                                        jne   .Lx649_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx649_47
                                                                                        jmp   .Lx649_48
.Lx649_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx649_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx649_53
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
                                                                                        jmp   .Lx649_51
.Lx649_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx649_49
                        cmp              edx, 14
                                                                                        je    .Lx649_53
                                                                                        jmp   .Lx649_52
.Lx649_49:
                        cmp              edx, 14
                                                                                        je    .Lx649_52
                        cmp              ecx, 7
                                                                                        je    .Lx649_53
                        cmp              edx, 7
                                                                                        je    .Lx649_53
                        cmp              ecx, 6
                                                                                        jne   .Lx649_50
                        cmp              edx, 6
                                                                                        jne   .Lx649_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx649_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx649_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx649_51
                                                                                        jmp   .Lx649_52
.Lx649_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx649_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx649_53
.Lx649_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx649_54
.Lx649_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx649_54
.Lx649_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx649_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n627_op11_α
                                                                                        jmp   n630_var_ref_α
n629_op11_β:
                                                                                        jmp   n627_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n630_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n631_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n631_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n632_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n632_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx655_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx655_21
.Lx655_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx655_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx655_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx655_23
.Lx655_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx655_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx655_1
                        lea              rcx, [rip + .Lx655_3]
                        lea              rdx, [rip + .Lx655_4]
                                                                                        jmp   rax
.Lx655_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx655_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx655_2
.Lx655_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx655_2
.Lx655_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx655_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx655_2
.Lx655_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx655_2
.Lx655_1:
                        call             rt_faildescr@PLT
.Lx655_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n627_op11_α
                                                                                        jmp   n633_op19_α
n632_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          "$disj1/2"
#-----------------------------------------------------------------------------------------------------------------------
n633_op19_α:
                                                                                        jmp   n634_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n634_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n635_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n635_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n636_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n636_op11_α:
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
                        lea              r9, [rbp + 160]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n627_op11_α
                                                                                        jmp   n637_suspend_α
n636_op11_β:
                                                                                        jmp   n627_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n637_suspend_α:
                        lea              rax, [rip + n637_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_read$2F2_γ
n637_suspend_β:
                                                                                        jmp   n627_op11_α
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
                        lea              rax, [rip + n679_suspend_β]
                        mov              qword ptr [rbp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n664_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx683_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx683_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx683_101
.Lx683_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx683_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n665_var_ref_α
n664_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n665_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n666_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n666_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx686_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n667_lit_string_α
.Lx686_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n667_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n668_op11_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n668_op11_α:
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
.Lx688_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx688_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_111
                        cmp              esi, 1
                                                                                        jne   .Lx688_112
                        mov              r8, rax
                                                                                        jmp   .Lx688_110
.Lx688_112:
                        cmp              esi, 2
                                                                                        jne   .Lx688_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx688_111
                        mov              r8, rax
                                                                                        jmp   .Lx688_110
.Lx688_113:
                        cmp              eax, 13
                                                                                        jne   .Lx688_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_111
                        cmp              rax, r8
                                                                                        je    .Lx688_111
                        mov              r8, rax
                                                                                        jmp   .Lx688_110
.Lx688_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_114
                        cmp              eax, 99
                                                                                        je    .Lx688_114
                        cmp              eax, 13
                                                                                        jne   .Lx688_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx688_114
                                                                                        jmp   .Lx688_118
.Lx688_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx688_115
                        cmp              eax, 6
                                                                                        je    .Lx688_114
                        cmp              eax, 1
                                                                                        jne   .Lx688_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx688_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx688_114
                                                                                        jmp   .Lx688_116
.Lx688_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx688_117
.Lx688_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx688_117
.Lx688_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx688_117:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n670_var_ref_α
                                                                                        jmp   n669_var_ref_α
n668_op11_β:
                                                                                        jmp   n670_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n669_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n671_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n670_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n672_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n671_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n673_op11_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n672_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n674_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n673_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx696_2]
                                                                                        jmp   .Lx696_3
.Lx696_2:
                        .quad            .Lx696_2_s
.Lx696_2_s:
                        .string          "[]"
.Lx696_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n676_op11_α
                                                                                        jmp   n675_op19_α
n673_op11_β:
                                                                                        jmp   n676_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n674_op11_α:
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
.Lx697_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx697_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx697_41
                        cmp              esi, 1
                                                                                        jne   .Lx697_55
                        mov              r8, rax
                                                                                        jmp   .Lx697_40
.Lx697_55:
                        cmp              esi, 2
                                                                                        jne   .Lx697_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx697_41
                        mov              r8, rax
                                                                                        jmp   .Lx697_40
.Lx697_56:
                        cmp              eax, 13
                                                                                        jne   .Lx697_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx697_41
                        cmp              rax, r8
                                                                                        je    .Lx697_41
                        mov              r8, rax
                                                                                        jmp   .Lx697_40
.Lx697_41:
                        lea              r9, [rbp + 224]
.Lx697_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx697_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx697_43
                        cmp              esi, 1
                                                                                        jne   .Lx697_57
                        mov              r9, rax
                                                                                        jmp   .Lx697_42
.Lx697_57:
                        cmp              esi, 2
                                                                                        jne   .Lx697_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx697_43
                        mov              r9, rax
                                                                                        jmp   .Lx697_42
.Lx697_58:
                        cmp              eax, 13
                                                                                        jne   .Lx697_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx697_43
                        cmp              rax, r9
                                                                                        je    .Lx697_43
                        mov              r9, rax
                                                                                        jmp   .Lx697_42
.Lx697_43:
                        cmp              r8, r9
                                                                                        je    .Lx697_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx697_44
                        cmp              eax, 99
                                                                                        je    .Lx697_44
                        cmp              eax, 13
                                                                                        jne   .Lx697_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx697_44
                                                                                        jmp   .Lx697_45
.Lx697_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx697_53
                        cmp              eax, 99
                                                                                        je    .Lx697_53
                        cmp              eax, 13
                                                                                        jne   .Lx697_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx697_53
                                                                                        jmp   .Lx697_46
.Lx697_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx697_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx697_53
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
                                                                                        jmp   .Lx697_51
.Lx697_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx697_47
                        cmp              eax, 99
                                                                                        je    .Lx697_47
                        cmp              eax, 13
                                                                                        jne   .Lx697_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx697_47
                                                                                        jmp   .Lx697_48
.Lx697_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx697_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx697_53
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
                                                                                        jmp   .Lx697_51
.Lx697_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx697_49
                        cmp              edx, 14
                                                                                        je    .Lx697_53
                                                                                        jmp   .Lx697_52
.Lx697_49:
                        cmp              edx, 14
                                                                                        je    .Lx697_52
                        cmp              ecx, 7
                                                                                        je    .Lx697_53
                        cmp              edx, 7
                                                                                        je    .Lx697_53
                        cmp              ecx, 6
                                                                                        jne   .Lx697_50
                        cmp              edx, 6
                                                                                        jne   .Lx697_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx697_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx697_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx697_51
                                                                                        jmp   .Lx697_52
.Lx697_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx697_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx697_53
.Lx697_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx697_54
.Lx697_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx697_54
.Lx697_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx697_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n678_op11_α
                                                                                        jmp   n677_var_ref_α
n674_op11_β:
                                                                                        jmp   n678_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n675_op19_α:
                                                                                        jmp   n679_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n676_op11_α:
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
                                                                                        jmp   n670_var_ref_α
n676_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n677_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n680_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n678_op11_α:
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
n678_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n679_suspend_α:
                        lea              rax, [rip + n679_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n679_suspend_β:
                                                                                        jmp   n676_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n680_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx706_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx706_21
.Lx706_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx706_21:
                        mov              rdi, qword ptr [rip + .Lx706_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx706_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx706_3]
                        lea              rdx, [rip + .Lx706_4]
                                                                                        jmp   rax
.Lx706_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx706_2
.Lx706_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx706_2
.Lx706_1:
                        call             rt_faildescr@PLT
.Lx706_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n678_op11_α
                                                                                        jmp   n681_call_proc_staged_α
n680_call_proc_staged_β:
                                                                                        jmp   n678_op11_α
.Lx706_0:
                        .quad            .Lx706_0_s
.Lx706_0_s:
                        .string          "pl2wam/1"
#-----------------------------------------------------------------------------------------------------------------------
n681_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx708_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx708_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx708_3]
                        lea              rdx, [rip + .Lx708_4]
                                                                                        jmp   rax
.Lx708_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx708_2
.Lx708_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx708_2
.Lx708_1:
                        call             rt_faildescr@PLT
.Lx708_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n680_call_proc_staged_β
                                                                                        jmp   n682_suspend_α
n681_call_proc_staged_β:
                                                                                        jmp   n680_call_proc_staged_β
.Lx708_0:
                        .quad            .Lx708_0_s
.Lx708_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n682_suspend_α:
                        lea              rax, [rip + n682_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n682_suspend_β:
                                                                                        jmp   n681_call_proc_staged_β
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
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gvar$2F2_α
proc_gvar$2F2_α:
                        .global          proc_gvar$2F2_α
                        .global          proc_gvar$2F2_β
                        .global          proc_gvar$2F2_γ
                        .global          proc_gvar$2F2_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_gvar$2F2_α_body:
                        lea              rax, [rip + n715_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n711_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx716_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n712_var_ref_α
.Lx716_0:
                        .quad            .Lx716_0_s
.Lx716_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n712_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n713_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n713_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n714_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n714_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
.Lx721_60:
                        .section         .rodata
.Lbynamegenfn284:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn284]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_gvar$2F2_ω
                                                                                        jmp   n715_suspend_α
n714_call_builtin_gen_β:
                                                                                        jmp   .Lx721_60
#-----------------------------------------------------------------------------------------------------------------------
n715_suspend_α:
                        lea              rax, [rip + n715_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gvar$2F2_γ
n715_suspend_β:
                                                                                        jmp   n714_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gvar$2F2_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
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
.Lstartup_pname1:       .string          "prolog_version/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_prolog_version$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_prolog_version$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "reverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_reverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "$disj1/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$disj1$2F2_α]
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
.Lstartup_pname4:       .string          "$reverse_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$reverse_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "go_other/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_go_other$2F0_α]
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
.Lstartup_pname6:       .string          "append/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_append$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1168
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "$disj0/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_$disj0$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 704
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
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_expand_term$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "current_prolog_flag/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_current_prolog_flag$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "argument_list/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_argument_list$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "prolog_name/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_prolog_name$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_prolog_name$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
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
.Lstartup_pname13:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "prolog_date/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_prolog_date$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_prolog_date$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "g_assign/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_g_assign$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 624
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 496
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname18:      .string          "g_read/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname18]
                        lea              rsi, [rip + proc_g_read$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname18]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname19:      .string          "go_other1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname19]
                        lea              rsi, [rip + proc_go_other1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname19]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname20:      .string          "gvar/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname20]
                        lea              rsi, [rip + proc_gvar$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname20]
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
n724_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                                                                                        jmp   n725_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n725_call_proc_staged_α:
                        mov              qword ptr [rsp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx731_20
                        mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx731_21
.Lx731_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        call             rt_arg_stage@PLT
.Lx731_21:
                        mov              edi, 10
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx731_1
                        lea              rcx, [rip + .Lx731_3]
                        lea              rdx, [rip + .Lx731_4]
                                                                                        jmp   rax
.Lx731_3:
                        mov              qword ptr [rsp + 120], rsp
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax
                                                                                        jne   .Lx731_5
                        mov              qword ptr [rsp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx731_2
.Lx731_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx731_2
.Lx731_4:
                        mov              rax, qword ptr [rsp + 112]
                        test             rax, rax
                                                                                        jne   .Lx731_6
                        mov              qword ptr [rsp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx731_2
.Lx731_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx731_2
.Lx731_1:
                        call             rt_faildescr@PLT
.Lx731_2:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n726_var_ref_α
n725_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n726_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 160]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                                                                                        jmp   n727_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n727_call_proc_staged_α:
                        mov              qword ptr [rsp + 32], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx735_20
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx735_21
.Lx735_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        call             rt_arg_stage@PLT
.Lx735_21:
                        mov              edi, 19
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx735_1
                        lea              rcx, [rip + .Lx735_3]
                        lea              rdx, [rip + .Lx735_4]
                                                                                        jmp   rax
.Lx735_3:
                        mov              qword ptr [rsp + 40], rsp
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax
                                                                                        jne   .Lx735_5
                        mov              qword ptr [rsp + 32], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx735_2
.Lx735_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx735_2
.Lx735_4:
                        mov              rax, qword ptr [rsp + 32]
                        test             rax, rax
                                                                                        jne   .Lx735_6
                        mov              qword ptr [rsp + 32], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx735_2
.Lx735_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx735_2
.Lx735_1:
                        call             rt_faildescr@PLT
.Lx735_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n725_call_proc_staged_β
                                                                                        jmp   main_γ
n727_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 40]
                                                                                        jmp   qword ptr [rsp]
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
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
