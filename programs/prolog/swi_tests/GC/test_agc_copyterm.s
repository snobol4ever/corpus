                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F1_α
proc_test$2F1_α:
                        .global          proc_test$2F1_α
                        .global          proc_test$2F1_β
                        .global          proc_test$2F1_γ
                        .global          proc_test$2F1_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F1_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx8_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx8_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx8_101
.Lx8_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx8_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n3_op11_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "copy"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              rsi, qword ptr [rip + .Lx12_2]
                                                                                        jmp   .Lx12_3
.Lx12_2:
                        .quad            .Lx12_2_s
.Lx12_2_s:
                        .string          "copy"
.Lx12_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_lit_integer_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n6_call_proc_staged_α
.Lx13_0:
                        .quad            3
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
                                                                                        je    proc_test$2F1_ω
                                                                                        jmp   proc_test$2F1_ω
n5_op11_β:
                                                                                        jmp   proc_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx16_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx16_21
.Lx16_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx16_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx16_1
                        lea              rcx, [rip + .Lx16_3]
                        lea              rdx, [rip + .Lx16_4]
                                                                                        jmp   rax
.Lx16_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx16_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx16_2
.Lx16_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx16_2
.Lx16_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx16_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx16_2
.Lx16_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx16_2
.Lx16_1:
                        call             rt_faildescr@PLT
.Lx16_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n7_suspend_α
n6_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "go/1"
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F1_γ
n7_suspend_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F1_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_set_atoms$2F4_α
proc_set_atoms$2F4_α:
                        .global          proc_set_atoms$2F4_α
                        .global          proc_set_atoms$2F4_β
                        .global          proc_set_atoms$2F4_γ
                        .global          proc_set_atoms$2F4_ω
                        sub              rsp, 1968
                        mov              [rsp + 1944], rcx
                        mov              [rsp + 1952], rdx
                        mov              [rsp + 1960], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1808
                        mov              edx, 1936
                        call             rt_jmp_frame_lexprep2@PLT
proc_set_atoms$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx80_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx80_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx80_101
.Lx80_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx80_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_set_atoms$2F4_ω
                                                                                        jmp   n20_var_ref_α
n19_op11_β:
                                                                                        jmp   proc_set_atoms$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1920]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1744]
                        lea              r8, [rbp + 1744]
.Lx85_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_41
                        cmp              esi, 1
                                                                                        jne   .Lx85_55
                        mov              r8, rax
                                                                                        jmp   .Lx85_40
.Lx85_55:
                        cmp              esi, 2
                                                                                        jne   .Lx85_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_41
                        mov              r8, rax
                                                                                        jmp   .Lx85_40
.Lx85_56:
                        cmp              eax, 13
                                                                                        jne   .Lx85_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_41
                        cmp              rax, r8
                                                                                        je    .Lx85_41
                        mov              r8, rax
                                                                                        jmp   .Lx85_40
.Lx85_41:
                        lea              r9, [rbp + 1760]
.Lx85_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_43
                        cmp              esi, 1
                                                                                        jne   .Lx85_57
                        mov              r9, rax
                                                                                        jmp   .Lx85_42
.Lx85_57:
                        cmp              esi, 2
                                                                                        jne   .Lx85_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_43
                        mov              r9, rax
                                                                                        jmp   .Lx85_42
.Lx85_58:
                        cmp              eax, 13
                                                                                        jne   .Lx85_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_43
                        cmp              rax, r9
                                                                                        je    .Lx85_43
                        mov              r9, rax
                                                                                        jmp   .Lx85_42
.Lx85_43:
                        cmp              r8, r9
                                                                                        je    .Lx85_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_44
                        cmp              eax, 99
                                                                                        je    .Lx85_44
                        cmp              eax, 13
                                                                                        jne   .Lx85_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx85_44
                                                                                        jmp   .Lx85_45
.Lx85_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_53
                        cmp              eax, 99
                                                                                        je    .Lx85_53
                        cmp              eax, 13
                                                                                        jne   .Lx85_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx85_53
                                                                                        jmp   .Lx85_46
.Lx85_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx85_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx85_53
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
                                                                                        jmp   .Lx85_51
.Lx85_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_47
                        cmp              eax, 99
                                                                                        je    .Lx85_47
                        cmp              eax, 13
                                                                                        jne   .Lx85_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx85_47
                                                                                        jmp   .Lx85_48
.Lx85_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx85_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx85_53
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
                                                                                        jmp   .Lx85_51
.Lx85_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx85_49
                        cmp              edx, 14
                                                                                        je    .Lx85_53
                                                                                        jmp   .Lx85_52
.Lx85_49:
                        cmp              edx, 14
                                                                                        je    .Lx85_52
                        cmp              ecx, 7
                                                                                        je    .Lx85_53
                        cmp              edx, 7
                                                                                        je    .Lx85_53
                        cmp              ecx, 6
                                                                                        jne   .Lx85_50
                        cmp              edx, 6
                                                                                        jne   .Lx85_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx85_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx85_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx85_51
                                                                                        jmp   .Lx85_52
.Lx85_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx85_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx85_53
.Lx85_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx85_54
.Lx85_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx85_54
.Lx85_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx85_54:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_var_ref_α
n22_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_set_atoms$2F4_ω
                                                                                        jmp   n26_var_ref_α
n24_op11_β:
                                                                                        jmp   proc_set_atoms$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1664]
                        lea              r8, [rbp + 1664]
.Lx93_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx93_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_41
                        cmp              esi, 1
                                                                                        jne   .Lx93_55
                        mov              r8, rax
                                                                                        jmp   .Lx93_40
.Lx93_55:
                        cmp              esi, 2
                                                                                        jne   .Lx93_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx93_41
                        mov              r8, rax
                                                                                        jmp   .Lx93_40
.Lx93_56:
                        cmp              eax, 13
                                                                                        jne   .Lx93_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_41
                        cmp              rax, r8
                                                                                        je    .Lx93_41
                        mov              r8, rax
                                                                                        jmp   .Lx93_40
.Lx93_41:
                        lea              r9, [rbp + 1680]
.Lx93_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx93_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_43
                        cmp              esi, 1
                                                                                        jne   .Lx93_57
                        mov              r9, rax
                                                                                        jmp   .Lx93_42
.Lx93_57:
                        cmp              esi, 2
                                                                                        jne   .Lx93_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx93_43
                        mov              r9, rax
                                                                                        jmp   .Lx93_42
.Lx93_58:
                        cmp              eax, 13
                                                                                        jne   .Lx93_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx93_43
                        cmp              rax, r9
                                                                                        je    .Lx93_43
                        mov              r9, rax
                                                                                        jmp   .Lx93_42
.Lx93_43:
                        cmp              r8, r9
                                                                                        je    .Lx93_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_44
                        cmp              eax, 99
                                                                                        je    .Lx93_44
                        cmp              eax, 13
                                                                                        jne   .Lx93_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx93_44
                                                                                        jmp   .Lx93_45
.Lx93_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_53
                        cmp              eax, 99
                                                                                        je    .Lx93_53
                        cmp              eax, 13
                                                                                        jne   .Lx93_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx93_53
                                                                                        jmp   .Lx93_46
.Lx93_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx93_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx93_53
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
                                                                                        jmp   .Lx93_51
.Lx93_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx93_47
                        cmp              eax, 99
                                                                                        je    .Lx93_47
                        cmp              eax, 13
                                                                                        jne   .Lx93_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx93_47
                                                                                        jmp   .Lx93_48
.Lx93_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx93_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx93_53
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
                                                                                        jmp   .Lx93_51
.Lx93_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx93_49
                        cmp              edx, 14
                                                                                        je    .Lx93_53
                                                                                        jmp   .Lx93_52
.Lx93_49:
                        cmp              edx, 14
                                                                                        je    .Lx93_52
                        cmp              ecx, 7
                                                                                        je    .Lx93_53
                        cmp              edx, 7
                                                                                        je    .Lx93_53
                        cmp              ecx, 6
                                                                                        jne   .Lx93_50
                        cmp              edx, 6
                                                                                        jne   .Lx93_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx93_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx93_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx93_51
                                                                                        jmp   .Lx93_52
.Lx93_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx93_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx93_53
.Lx93_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx93_54
.Lx93_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx93_54
.Lx93_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx93_54:
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n29_var_ref_α
n27_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
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
                        lea              r9, [rbp + 448]
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
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n32_var_ref_α
n30_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
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
                                                                                        je    proc_set_atoms$2F4_ω
                                                                                        jmp   proc_set_atoms$2F4_ω
n33_op11_β:
                                                                                        jmp   proc_set_atoms$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1584]
                        lea              r8, [rbp + 1584]
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
                        lea              r9, [rbp + 1600]
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
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n36_var_ref_α
n34_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n38_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
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
.Lx109_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx109_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_41
                        cmp              esi, 1
                                                                                        jne   .Lx109_55
                        mov              r8, rax
                                                                                        jmp   .Lx109_40
.Lx109_55:
                        cmp              esi, 2
                                                                                        jne   .Lx109_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx109_41
                        mov              r8, rax
                                                                                        jmp   .Lx109_40
.Lx109_56:
                        cmp              eax, 13
                                                                                        jne   .Lx109_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_41
                        cmp              rax, r8
                                                                                        je    .Lx109_41
                        mov              r8, rax
                                                                                        jmp   .Lx109_40
.Lx109_41:
                        lea              r9, [rbp + 368]
.Lx109_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx109_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_43
                        cmp              esi, 1
                                                                                        jne   .Lx109_57
                        mov              r9, rax
                                                                                        jmp   .Lx109_42
.Lx109_57:
                        cmp              esi, 2
                                                                                        jne   .Lx109_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx109_43
                        mov              r9, rax
                                                                                        jmp   .Lx109_42
.Lx109_58:
                        cmp              eax, 13
                                                                                        jne   .Lx109_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx109_43
                        cmp              rax, r9
                                                                                        je    .Lx109_43
                        mov              r9, rax
                                                                                        jmp   .Lx109_42
.Lx109_43:
                        cmp              r8, r9
                                                                                        je    .Lx109_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx109_44
                        cmp              eax, 99
                                                                                        je    .Lx109_44
                        cmp              eax, 13
                                                                                        jne   .Lx109_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx109_44
                                                                                        jmp   .Lx109_45
.Lx109_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx109_53
                        cmp              eax, 99
                                                                                        je    .Lx109_53
                        cmp              eax, 13
                                                                                        jne   .Lx109_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx109_53
                                                                                        jmp   .Lx109_46
.Lx109_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx109_53
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
                                                                                        jmp   .Lx109_51
.Lx109_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx109_47
                        cmp              eax, 99
                                                                                        je    .Lx109_47
                        cmp              eax, 13
                                                                                        jne   .Lx109_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx109_47
                                                                                        jmp   .Lx109_48
.Lx109_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx109_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx109_53
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
                                                                                        jmp   .Lx109_51
.Lx109_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx109_49
                        cmp              edx, 14
                                                                                        je    .Lx109_53
                                                                                        jmp   .Lx109_52
.Lx109_49:
                        cmp              edx, 14
                                                                                        je    .Lx109_52
                        cmp              ecx, 7
                                                                                        je    .Lx109_53
                        cmp              edx, 7
                                                                                        je    .Lx109_53
                        cmp              ecx, 6
                                                                                        jne   .Lx109_50
                        cmp              edx, 6
                                                                                        jne   .Lx109_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx109_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx109_51
                                                                                        jmp   .Lx109_52
.Lx109_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx109_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx109_53
.Lx109_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx109_54
.Lx109_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx109_54
.Lx109_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx109_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n39_var_ref_α
n37_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1504]
                        lea              r8, [rbp + 1504]
.Lx114_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_41
                        cmp              esi, 1
                                                                                        jne   .Lx114_55
                        mov              r8, rax
                                                                                        jmp   .Lx114_40
.Lx114_55:
                        cmp              esi, 2
                                                                                        jne   .Lx114_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_41
                        mov              r8, rax
                                                                                        jmp   .Lx114_40
.Lx114_56:
                        cmp              eax, 13
                                                                                        jne   .Lx114_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_41
                        cmp              rax, r8
                                                                                        je    .Lx114_41
                        mov              r8, rax
                                                                                        jmp   .Lx114_40
.Lx114_41:
                        lea              r9, [rbp + 1520]
.Lx114_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx114_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_43
                        cmp              esi, 1
                                                                                        jne   .Lx114_57
                        mov              r9, rax
                                                                                        jmp   .Lx114_42
.Lx114_57:
                        cmp              esi, 2
                                                                                        jne   .Lx114_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx114_43
                        mov              r9, rax
                                                                                        jmp   .Lx114_42
.Lx114_58:
                        cmp              eax, 13
                                                                                        jne   .Lx114_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx114_43
                        cmp              rax, r9
                                                                                        je    .Lx114_43
                        mov              r9, rax
                                                                                        jmp   .Lx114_42
.Lx114_43:
                        cmp              r8, r9
                                                                                        je    .Lx114_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_44
                        cmp              eax, 99
                                                                                        je    .Lx114_44
                        cmp              eax, 13
                                                                                        jne   .Lx114_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx114_44
                                                                                        jmp   .Lx114_45
.Lx114_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_53
                        cmp              eax, 99
                                                                                        je    .Lx114_53
                        cmp              eax, 13
                                                                                        jne   .Lx114_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx114_53
                                                                                        jmp   .Lx114_46
.Lx114_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx114_53
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
                                                                                        jmp   .Lx114_51
.Lx114_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx114_47
                        cmp              eax, 99
                                                                                        je    .Lx114_47
                        cmp              eax, 13
                                                                                        jne   .Lx114_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx114_47
                                                                                        jmp   .Lx114_48
.Lx114_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx114_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx114_53
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
                                                                                        jmp   .Lx114_51
.Lx114_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx114_49
                        cmp              edx, 14
                                                                                        je    .Lx114_53
                                                                                        jmp   .Lx114_52
.Lx114_49:
                        cmp              edx, 14
                                                                                        je    .Lx114_52
                        cmp              ecx, 7
                                                                                        je    .Lx114_53
                        cmp              edx, 7
                                                                                        je    .Lx114_53
                        cmp              ecx, 6
                                                                                        jne   .Lx114_50
                        cmp              edx, 6
                                                                                        jne   .Lx114_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx114_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx114_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx114_51
                                                                                        jmp   .Lx114_52
.Lx114_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx114_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx114_53
.Lx114_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx114_54
.Lx114_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx114_54
.Lx114_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx114_54:
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n42_var_α
n40_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n44_var_α
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
                        lea              r9, [rbp + 288]
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n45_var_ref_α
n43_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n46_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_le@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n48_op19_α
n46_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op19_α:
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx128_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx128_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_41
                        cmp              esi, 1
                                                                                        jne   .Lx128_55
                        mov              r8, rax
                                                                                        jmp   .Lx128_40
.Lx128_55:
                        cmp              esi, 2
                                                                                        jne   .Lx128_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx128_41
                        mov              r8, rax
                                                                                        jmp   .Lx128_40
.Lx128_56:
                        cmp              eax, 13
                                                                                        jne   .Lx128_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_41
                        cmp              rax, r8
                                                                                        je    .Lx128_41
                        mov              r8, rax
                                                                                        jmp   .Lx128_40
.Lx128_41:
                        lea              r9, [rbp + 208]
.Lx128_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx128_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_43
                        cmp              esi, 1
                                                                                        jne   .Lx128_57
                        mov              r9, rax
                                                                                        jmp   .Lx128_42
.Lx128_57:
                        cmp              esi, 2
                                                                                        jne   .Lx128_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx128_43
                        mov              r9, rax
                                                                                        jmp   .Lx128_42
.Lx128_58:
                        cmp              eax, 13
                                                                                        jne   .Lx128_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx128_43
                        cmp              rax, r9
                                                                                        je    .Lx128_43
                        mov              r9, rax
                                                                                        jmp   .Lx128_42
.Lx128_43:
                        cmp              r8, r9
                                                                                        je    .Lx128_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx128_44
                        cmp              eax, 99
                                                                                        je    .Lx128_44
                        cmp              eax, 13
                                                                                        jne   .Lx128_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx128_44
                                                                                        jmp   .Lx128_45
.Lx128_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx128_53
                        cmp              eax, 99
                                                                                        je    .Lx128_53
                        cmp              eax, 13
                                                                                        jne   .Lx128_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx128_53
                                                                                        jmp   .Lx128_46
.Lx128_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx128_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx128_53
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
                                                                                        jmp   .Lx128_51
.Lx128_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx128_47
                        cmp              eax, 99
                                                                                        je    .Lx128_47
                        cmp              eax, 13
                                                                                        jne   .Lx128_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx128_47
                                                                                        jmp   .Lx128_48
.Lx128_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx128_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx128_53
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
                                                                                        jmp   .Lx128_51
.Lx128_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx128_49
                        cmp              edx, 14
                                                                                        je    .Lx128_53
                                                                                        jmp   .Lx128_52
.Lx128_49:
                        cmp              edx, 14
                                                                                        je    .Lx128_52
                        cmp              ecx, 7
                                                                                        je    .Lx128_53
                        cmp              edx, 7
                                                                                        je    .Lx128_53
                        cmp              ecx, 6
                                                                                        jne   .Lx128_50
                        cmp              edx, 6
                                                                                        jne   .Lx128_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx128_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx128_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx128_51
                                                                                        jmp   .Lx128_52
.Lx128_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx128_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx128_53
.Lx128_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx128_54
.Lx128_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx128_54
.Lx128_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx128_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n51_move_label_α
n49_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n52_lit_string_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n51_move_label_α:
                        lea              rax, [rip + n33_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_set_atoms$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n54_lit_string_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n53_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n53_disjunction_β:
                                                                                        jmp   proc_set_atoms$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n55_var_ref_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n56_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n57_var_ref_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1920]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n59_op11_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    proc_set_atoms$2F4_ω
                                                                                        jmp   n60_op11_α
n59_op11_β:
                                                                                        jmp   proc_set_atoms$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    proc_set_atoms$2F4_ω
                                                                                        jmp   n61_op11_α
n60_op11_β:
                                                                                        jmp   proc_set_atoms$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n62_lit_string_α
n61_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n63_var_ref_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn149:              .string          "$aop_atomic_list_concat"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 976]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n65_var_ref_α
n64_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1920]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1856]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn157:              .string          "$arg"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 864]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n69_var_ref_α
n68_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n70_var_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n72_op11_α
.Lx162_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
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
                                                                                        je    n33_op11_α
                                                                                        jmp   n73_op11_α
n72_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
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
                                                                                        je    n33_op11_α
                                                                                        jmp   n74_var_ref_α
n73_op11_β:
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1872]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1888]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1904]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n78_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_proc_staged_α:
                        lea              rsi, [rbp + 624]
                        lea              rdx, [rbp + 640]
                        lea              rcx, [rbp + 656]
                        lea              r8, [rbp + 672]
                        call             proc_set_atoms$2F4_dcα
                                                                                        jmp   .Lx174_2
.Lx174_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n33_op11_α
                                                                                        jmp   n79_move_label_α
n78_call_proc_staged_β:
                                                                                        jmp   n33_op11_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "set_atoms/4"
#-----------------------------------------------------------------------------------------------------------------------
n79_move_label_α:
                        lea              rax, [rip + n78_call_proc_staged_β]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_set_atoms$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_set_atoms$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_set_atoms$2F4_β:
                                                                                        jmp   n53_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_set_atoms$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1944]
                        lea              rsp, [rbp + 1968]
                        mov              rbp, [rbp + 1960]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_set_atoms$2F4_ω:
                        mov              rax, [rbp + 1952]
                        lea              rsp, [rbp + 1968]
                        mov              rbp, [rbp + 1960]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_set_atoms$2F4_dcα:
                        pop              r11
                        sub              rsp, 1984
                        mov              qword ptr [rsp + 1960], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1936], r11
                        lea              rax, [rip + .Lx177_2]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rax, [rip + .Lx177_3]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 1808
                        mov              edx, 1936
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_set_atoms$2F4_α_body
.Lx177_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1968
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx177_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1968
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_between$2F3_α
proc_between$2F3_α:
                        .global          proc_between$2F3_α
                        .global          proc_between$2F3_β
                        .global          proc_between$2F3_γ
                        .global          proc_between$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_between$2F3_α_body:
                        lea              rax, [rip + n182_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n180_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n181_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 120], rax
                        mov              qword ptr [rbp + 128], 0
.Lx189_60:
                        .section         .rodata
.Lbynamegenfn73:        .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn73]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n182_suspend_α
n181_call_builtin_gen_β:
                                                                                        jmp   .Lx189_60
#-----------------------------------------------------------------------------------------------------------------------
n182_suspend_α:
                        lea              rax, [rip + n182_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n182_suspend_β:
                                                                                        jmp   n181_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_between$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_between$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_term$2F4_α
proc_check_term$2F4_α:
                        .global          proc_check_term$2F4_α
                        .global          proc_check_term$2F4_β
                        .global          proc_check_term$2F4_γ
                        .global          proc_check_term$2F4_ω
                        sub              rsp, 1520
                        mov              [rsp + 1496], rcx
                        mov              [rsp + 1504], rdx
                        mov              [rsp + 1512], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1488
                        call             rt_jmp_frame_lexprep2@PLT
proc_check_term$2F4_α_body:
                        lea              rax, [rip + n232_suspend_β]
                        mov              qword ptr [rbp + 1360], rax
#-----------------------------------------------------------------------------------------------------------------------
n192_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx233_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx233_101
.Lx233_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx233_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_term$2F4_ω
                                                                                        jmp   n193_var_ref_α
n192_op11_β:
                                                                                        jmp   proc_check_term$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n195_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n195_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1296]
                        lea              r8, [rbp + 1296]
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
                        lea              r9, [rbp + 1312]
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n196_var_ref_α
n195_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n198_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n197_op11_α:
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
                                                                                        je    proc_check_term$2F4_ω
                                                                                        jmp   proc_check_term$2F4_ω
n197_op11_β:
                                                                                        jmp   proc_check_term$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n199_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n199_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1216]
                        lea              r8, [rbp + 1216]
.Lx244_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx244_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_41
                        cmp              esi, 1
                                                                                        jne   .Lx244_55
                        mov              r8, rax
                                                                                        jmp   .Lx244_40
.Lx244_55:
                        cmp              esi, 2
                                                                                        jne   .Lx244_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx244_41
                        mov              r8, rax
                                                                                        jmp   .Lx244_40
.Lx244_56:
                        cmp              eax, 13
                                                                                        jne   .Lx244_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_41
                        cmp              rax, r8
                                                                                        je    .Lx244_41
                        mov              r8, rax
                                                                                        jmp   .Lx244_40
.Lx244_41:
                        lea              r9, [rbp + 1232]
.Lx244_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx244_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_43
                        cmp              esi, 1
                                                                                        jne   .Lx244_57
                        mov              r9, rax
                                                                                        jmp   .Lx244_42
.Lx244_57:
                        cmp              esi, 2
                                                                                        jne   .Lx244_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx244_43
                        mov              r9, rax
                                                                                        jmp   .Lx244_42
.Lx244_58:
                        cmp              eax, 13
                                                                                        jne   .Lx244_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx244_43
                        cmp              rax, r9
                                                                                        je    .Lx244_43
                        mov              r9, rax
                                                                                        jmp   .Lx244_42
.Lx244_43:
                        cmp              r8, r9
                                                                                        je    .Lx244_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx244_44
                        cmp              eax, 99
                                                                                        je    .Lx244_44
                        cmp              eax, 13
                                                                                        jne   .Lx244_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx244_44
                                                                                        jmp   .Lx244_45
.Lx244_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx244_53
                        cmp              eax, 99
                                                                                        je    .Lx244_53
                        cmp              eax, 13
                                                                                        jne   .Lx244_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx244_53
                                                                                        jmp   .Lx244_46
.Lx244_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx244_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx244_53
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
                                                                                        jmp   .Lx244_51
.Lx244_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx244_47
                        cmp              eax, 99
                                                                                        je    .Lx244_47
                        cmp              eax, 13
                                                                                        jne   .Lx244_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx244_47
                                                                                        jmp   .Lx244_48
.Lx244_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx244_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx244_53
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
                                                                                        jmp   .Lx244_51
.Lx244_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx244_49
                        cmp              edx, 14
                                                                                        je    .Lx244_53
                                                                                        jmp   .Lx244_52
.Lx244_49:
                        cmp              edx, 14
                                                                                        je    .Lx244_52
                        cmp              ecx, 7
                                                                                        je    .Lx244_53
                        cmp              edx, 7
                                                                                        je    .Lx244_53
                        cmp              ecx, 6
                                                                                        jne   .Lx244_50
                        cmp              edx, 6
                                                                                        jne   .Lx244_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx244_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx244_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx244_51
                                                                                        jmp   .Lx244_52
.Lx244_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx244_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx244_53
.Lx244_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx244_54
.Lx244_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx244_54
.Lx244_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx244_54:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n200_var_ref_α
n199_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n201_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n202_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n202_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1136]
                        lea              r8, [rbp + 1136]
.Lx249_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        cmp              esi, 1
                                                                                        jne   .Lx249_55
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_55:
                        cmp              esi, 2
                                                                                        jne   .Lx249_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_56:
                        cmp              eax, 13
                                                                                        jne   .Lx249_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_41
                        cmp              rax, r8
                                                                                        je    .Lx249_41
                        mov              r8, rax
                                                                                        jmp   .Lx249_40
.Lx249_41:
                        lea              r9, [rbp + 1152]
.Lx249_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        cmp              esi, 1
                                                                                        jne   .Lx249_57
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_57:
                        cmp              esi, 2
                                                                                        jne   .Lx249_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_58:
                        cmp              eax, 13
                                                                                        jne   .Lx249_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_43
                        cmp              rax, r9
                                                                                        je    .Lx249_43
                        mov              r9, rax
                                                                                        jmp   .Lx249_42
.Lx249_43:
                        cmp              r8, r9
                                                                                        je    .Lx249_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_44
                        cmp              eax, 99
                                                                                        je    .Lx249_44
                        cmp              eax, 13
                                                                                        jne   .Lx249_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx249_44
                                                                                        jmp   .Lx249_45
.Lx249_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_53
                        cmp              eax, 99
                                                                                        je    .Lx249_53
                        cmp              eax, 13
                                                                                        jne   .Lx249_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_53
                                                                                        jmp   .Lx249_46
.Lx249_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx249_53
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
                                                                                        jmp   .Lx249_51
.Lx249_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_47
                        cmp              eax, 99
                                                                                        je    .Lx249_47
                        cmp              eax, 13
                                                                                        jne   .Lx249_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_47
                                                                                        jmp   .Lx249_48
.Lx249_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx249_53
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
                                                                                        jmp   .Lx249_51
.Lx249_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx249_49
                        cmp              edx, 14
                                                                                        je    .Lx249_53
                                                                                        jmp   .Lx249_52
.Lx249_49:
                        cmp              edx, 14
                                                                                        je    .Lx249_52
                        cmp              ecx, 7
                                                                                        je    .Lx249_53
                        cmp              edx, 7
                                                                                        je    .Lx249_53
                        cmp              ecx, 6
                                                                                        jne   .Lx249_50
                        cmp              edx, 6
                                                                                        jne   .Lx249_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx249_51
                                                                                        jmp   .Lx249_52
.Lx249_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx249_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx249_53
.Lx249_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx249_54
.Lx249_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx249_54
.Lx249_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx249_54:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n203_var_ref_α
n202_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n204_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n205_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n205_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lx254_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              esi, 1
                                                                                        jne   .Lx254_55
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_55:
                        cmp              esi, 2
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_56:
                        cmp              eax, 13
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              rax, r8
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_41:
                        lea              r9, [rbp + 1072]
.Lx254_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              esi, 1
                                                                                        jne   .Lx254_57
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_57:
                        cmp              esi, 2
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_58:
                        cmp              eax, 13
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              rax, r9
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_43:
                        cmp              r8, r9
                                                                                        je    .Lx254_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_44
                        cmp              eax, 99
                                                                                        je    .Lx254_44
                        cmp              eax, 13
                                                                                        jne   .Lx254_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx254_44
                                                                                        jmp   .Lx254_45
.Lx254_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_53
                        cmp              eax, 99
                                                                                        je    .Lx254_53
                        cmp              eax, 13
                                                                                        jne   .Lx254_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_46
.Lx254_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_47
                        cmp              eax, 99
                                                                                        je    .Lx254_47
                        cmp              eax, 13
                                                                                        jne   .Lx254_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_47
                                                                                        jmp   .Lx254_48
.Lx254_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx254_49
                        cmp              edx, 14
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_52
.Lx254_49:
                        cmp              edx, 14
                                                                                        je    .Lx254_52
                        cmp              ecx, 7
                                                                                        je    .Lx254_53
                        cmp              edx, 7
                                                                                        je    .Lx254_53
                        cmp              ecx, 6
                                                                                        jne   .Lx254_50
                        cmp              edx, 6
                                                                                        jne   .Lx254_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx254_51
                                                                                        jmp   .Lx254_52
.Lx254_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
.Lx254_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx254_54
.Lx254_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx254_54
.Lx254_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx254_54:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n206_var_ref_α
n205_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n208_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n209_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n209_call_proc_staged_α:
                        mov              qword ptr [rbp + 960], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_20
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx262_21
.Lx262_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        call             rt_arg_stage@PLT
.Lx262_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_22
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx262_23
.Lx262_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        call             rt_arg_stage@PLT
.Lx262_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx262_24
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx262_25
.Lx262_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        call             rt_arg_stage@PLT
.Lx262_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx262_1
                        lea              rcx, [rip + .Lx262_3]
                        lea              rdx, [rip + .Lx262_4]
                                                                                        jmp   rax
.Lx262_3:
                        mov              qword ptr [rbp + 968], rsp
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx262_5
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx262_2
.Lx262_4:
                        mov              rax, qword ptr [rbp + 960]
                        test             rax, rax
                                                                                        jne   .Lx262_6
                        mov              qword ptr [rbp + 960], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx262_2
.Lx262_1:
                        call             rt_faildescr@PLT
.Lx262_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n210_var_ref_α
n209_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 968]
                                                                                        jmp   qword ptr [rsp]
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n213_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n213_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn270:              .string          "$arg"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 800]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n209_call_proc_staged_β
                                                                                        jmp   n214_lit_string_α
n213_op11_β:
                                                                                        jmp   n209_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n215_lit_string_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n216_lit_string_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n217_var_ref_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n218_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n219_var_ref_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n221_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_term$2F4_ω
                                                                                        jmp   n222_op11_α
n221_op11_β:
                                                                                        jmp   proc_check_term$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_term$2F4_ω
                                                                                        jmp   n223_op11_α
n222_op11_β:
                                                                                        jmp   proc_check_term$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n223_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n224_lit_string_α
n223_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n225_var_ref_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n226_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n226_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx287_20
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx287_21
.Lx287_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx287_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx287_22
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx287_23
.Lx287_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx287_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx287_24
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx287_25
.Lx287_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx287_25:
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx287_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx287_3]
                        lea              rdx, [rip + .Lx287_4]
                                                                                        jmp   rax
.Lx287_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx287_2
.Lx287_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx287_2
.Lx287_1:
                        call             rt_faildescr@PLT
.Lx287_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n209_call_proc_staged_β
                                                                                        jmp   n227_lit_string_α
n226_call_proc_staged_β:
                                                                                        jmp   n209_call_proc_staged_β
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "atomics_to_string/3"
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n228_var_ref_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "atom_string"
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n229_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n230_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n230_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n197_op11_α
                                                                                        jmp   n231_call_proc_staged_α
n230_op11_β:
                                                                                        jmp   n197_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx295_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx295_21
.Lx295_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx295_21:
                        mov              rdi, qword ptr [rip + .Lx295_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n226_call_proc_staged_β
                                                                                        jmp   n232_suspend_α
n231_call_proc_staged_β:
                                                                                        jmp   n226_call_proc_staged_β
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n232_suspend_α:
                        lea              rax, [rip + n232_suspend_β]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_check_term$2F4_γ
n232_suspend_β:
                                                                                        jmp   n231_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_check_term$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_term$2F4_β:
                                                                                        jmp   qword ptr [rbp + 1360]
#-----------------------------------------------------------------------------------------------------------------------
proc_check_term$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_check_term$2F4_res]
                        push             rax
                        mov              rax, [rbp + 1496]
                        mov              rbp, [rbp + 1512]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_term$2F4_ω:
                        mov              rax, [rbp + 1504]
                        lea              rsp, [rbp + 1520]
                        mov              rbp, [rbp + 1512]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 608
                        mov              [rsp + 584], rcx
                        mov              [rsp + 592], rdx
                        mov              [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 576
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n298_op11_α:
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
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx316_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n299_var_ref_α
n298_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n300_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n301_op11_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n301_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              rsi, qword ptr [rip + .Lx320_2]
                                                                                        jmp   .Lx320_3
.Lx320_2:
                        .quad            .Lx320_2_s
.Lx320_2_s:
                        .string          "agc_copyterm"
.Lx320_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n302_var_ref_α
n301_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n302_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n304_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n303_op11_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n303_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n305_op11_α
.Lx324_0:
                        .quad            .Lx324_0_s
.Lx324_0_s:
                        .string          "copy"
#-----------------------------------------------------------------------------------------------------------------------
n305_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx325_2]
                                                                                        jmp   .Lx325_3
.Lx325_2:
                        .quad            .Lx325_2_s
.Lx325_2_s:
                        .string          "copy"
.Lx325_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n306_var_ref_α
n305_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n307_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx328_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n308_op11_α
.Lx328_0:
                        .quad            .Lx328_0_s
.Lx328_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n308_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx329_2]
                                                                                        jmp   .Lx329_3
.Lx329_2:
                        .quad            .Lx329_2_s
.Lx329_2_s:
                        .string          "[]"
.Lx329_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n309_var_ref_α
n308_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n311_lit_integer_α
.Lx332_0:
                        .quad            .Lx332_0_s
.Lx332_0_s:
                        .string          "go"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n312_op11_α
.Lx333_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n313_op11_α
n312_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx335_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx335_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_41
                        cmp              esi, 1
                                                                                        jne   .Lx335_55
                        mov              r8, rax
                                                                                        jmp   .Lx335_40
.Lx335_55:
                        cmp              esi, 2
                                                                                        jne   .Lx335_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx335_41
                        mov              r8, rax
                                                                                        jmp   .Lx335_40
.Lx335_56:
                        cmp              eax, 13
                                                                                        jne   .Lx335_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_41
                        cmp              rax, r8
                                                                                        je    .Lx335_41
                        mov              r8, rax
                                                                                        jmp   .Lx335_40
.Lx335_41:
                        lea              r9, [rbp + 208]
.Lx335_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx335_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_43
                        cmp              esi, 1
                                                                                        jne   .Lx335_57
                        mov              r9, rax
                                                                                        jmp   .Lx335_42
.Lx335_57:
                        cmp              esi, 2
                                                                                        jne   .Lx335_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx335_43
                        mov              r9, rax
                                                                                        jmp   .Lx335_42
.Lx335_58:
                        cmp              eax, 13
                                                                                        jne   .Lx335_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx335_43
                        cmp              rax, r9
                                                                                        je    .Lx335_43
                        mov              r9, rax
                                                                                        jmp   .Lx335_42
.Lx335_43:
                        cmp              r8, r9
                                                                                        je    .Lx335_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx335_44
                        cmp              eax, 99
                                                                                        je    .Lx335_44
                        cmp              eax, 13
                                                                                        jne   .Lx335_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx335_44
                                                                                        jmp   .Lx335_45
.Lx335_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx335_53
                        cmp              eax, 99
                                                                                        je    .Lx335_53
                        cmp              eax, 13
                                                                                        jne   .Lx335_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx335_53
                                                                                        jmp   .Lx335_46
.Lx335_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx335_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx335_53
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
                                                                                        jmp   .Lx335_51
.Lx335_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx335_47
                        cmp              eax, 99
                                                                                        je    .Lx335_47
                        cmp              eax, 13
                                                                                        jne   .Lx335_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx335_47
                                                                                        jmp   .Lx335_48
.Lx335_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx335_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx335_53
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
                                                                                        jmp   .Lx335_51
.Lx335_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx335_49
                        cmp              edx, 14
                                                                                        je    .Lx335_53
                                                                                        jmp   .Lx335_52
.Lx335_49:
                        cmp              edx, 14
                                                                                        je    .Lx335_52
                        cmp              ecx, 7
                                                                                        je    .Lx335_53
                        cmp              edx, 7
                                                                                        je    .Lx335_53
                        cmp              ecx, 6
                                                                                        jne   .Lx335_50
                        cmp              edx, 6
                                                                                        jne   .Lx335_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx335_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx335_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx335_51
                                                                                        jmp   .Lx335_52
.Lx335_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx335_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx335_53
.Lx335_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx335_54
.Lx335_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx335_54
.Lx335_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx335_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n303_op11_α
                                                                                        jmp   n314_move_label_α
n313_op11_β:
                                                                                        jmp   n303_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n314_move_label_α:
                        lea              rax, [rip + n303_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n315_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n315_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n315_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 584]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 592]
                        lea              rsp, [rbp + 608]
                        mov              rbp, [rbp + 600]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 624
                        mov              qword ptr [rsp + 600], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 576], r11
                        lea              rax, [rip + .Lx340_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx340_3]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 576
                        mov              edx, 576
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx340_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx340_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_result$2F3_α
proc_check_result$2F3_α:
                        .global          proc_check_result$2F3_α
                        .global          proc_check_result$2F3_β
                        .global          proc_check_result$2F3_γ
                        .global          proc_check_result$2F3_ω
                        sub              rsp, 944
                        mov              [rsp + 920], rcx
                        mov              [rsp + 928], rdx
                        mov              [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 816
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
proc_check_result$2F3_α_body:
                        lea              rax, [rip + n357_suspend_β]
                        mov              qword ptr [rbp + 816], rax
#-----------------------------------------------------------------------------------------------------------------------
n341_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx366_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx366_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx366_101
.Lx366_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx366_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_check_result$2F3_ω
                                                                                        jmp   n342_var_ref_α
n341_op11_β:
                                                                                        jmp   proc_check_result$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n343_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n344_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_op11_α:
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
.Lx371_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx371_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              esi, 1
                                                                                        jne   .Lx371_55
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_55:
                        cmp              esi, 2
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_56:
                        cmp              eax, 13
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              rax, r8
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_41:
                        lea              r9, [rbp + 768]
.Lx371_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx371_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        cmp              esi, 1
                                                                                        jne   .Lx371_57
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_57:
                        cmp              esi, 2
                                                                                        jne   .Lx371_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_58:
                        cmp              eax, 13
                                                                                        jne   .Lx371_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_43
                        cmp              rax, r9
                                                                                        je    .Lx371_43
                        mov              r9, rax
                                                                                        jmp   .Lx371_42
.Lx371_43:
                        cmp              r8, r9
                                                                                        je    .Lx371_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_44
                        cmp              eax, 99
                                                                                        je    .Lx371_44
                        cmp              eax, 13
                                                                                        jne   .Lx371_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx371_44
                                                                                        jmp   .Lx371_45
.Lx371_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_53
                        cmp              eax, 99
                                                                                        je    .Lx371_53
                        cmp              eax, 13
                                                                                        jne   .Lx371_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_46
.Lx371_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx371_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx371_53
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
                                                                                        jmp   .Lx371_51
.Lx371_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_47
                        cmp              eax, 99
                                                                                        je    .Lx371_47
                        cmp              eax, 13
                                                                                        jne   .Lx371_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx371_47
                                                                                        jmp   .Lx371_48
.Lx371_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx371_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx371_53
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
                                                                                        jmp   .Lx371_51
.Lx371_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx371_49
                        cmp              edx, 14
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_52
.Lx371_49:
                        cmp              edx, 14
                                                                                        je    .Lx371_52
                        cmp              ecx, 7
                                                                                        je    .Lx371_53
                        cmp              edx, 7
                                                                                        je    .Lx371_53
                        cmp              ecx, 6
                                                                                        jne   .Lx371_50
                        cmp              edx, 6
                                                                                        jne   .Lx371_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx371_51
                                                                                        jmp   .Lx371_52
.Lx371_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx371_53
.Lx371_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx371_54
.Lx371_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx371_54
.Lx371_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx371_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n345_var_ref_α
n344_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n345_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n347_var_ref_α
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
                                                                                        je    proc_check_result$2F3_ω
                                                                                        jmp   proc_check_result$2F3_ω
n346_op11_β:
                                                                                        jmp   proc_check_result$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n348_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n348_op11_α:
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
.Lx377_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx377_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              esi, 1
                                                                                        jne   .Lx377_55
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_55:
                        cmp              esi, 2
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_56:
                        cmp              eax, 13
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              rax, r8
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_41:
                        lea              r9, [rbp + 688]
.Lx377_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx377_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              esi, 1
                                                                                        jne   .Lx377_57
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_57:
                        cmp              esi, 2
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_58:
                        cmp              eax, 13
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              rax, r9
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_43:
                        cmp              r8, r9
                                                                                        je    .Lx377_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_44
                        cmp              eax, 99
                                                                                        je    .Lx377_44
                        cmp              eax, 13
                                                                                        jne   .Lx377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx377_44
                                                                                        jmp   .Lx377_45
.Lx377_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_53
                        cmp              eax, 99
                                                                                        je    .Lx377_53
                        cmp              eax, 13
                                                                                        jne   .Lx377_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_46
.Lx377_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
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
                                                                                        jmp   .Lx377_51
.Lx377_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_47
                        cmp              eax, 99
                                                                                        je    .Lx377_47
                        cmp              eax, 13
                                                                                        jne   .Lx377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_47
                                                                                        jmp   .Lx377_48
.Lx377_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
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
                                                                                        jmp   .Lx377_51
.Lx377_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx377_49
                        cmp              edx, 14
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_52
.Lx377_49:
                        cmp              edx, 14
                                                                                        je    .Lx377_52
                        cmp              ecx, 7
                                                                                        je    .Lx377_53
                        cmp              edx, 7
                                                                                        je    .Lx377_53
                        cmp              ecx, 6
                                                                                        jne   .Lx377_50
                        cmp              edx, 6
                                                                                        jne   .Lx377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx377_51
                                                                                        jmp   .Lx377_52
.Lx377_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
.Lx377_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx377_54
.Lx377_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx377_54
.Lx377_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx377_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n349_var_ref_α
n348_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n350_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n350_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n351_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n351_op11_α:
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
                        lea              r9, [rbp + 608]
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
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n352_var_ref_α
n351_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n353_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n353_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n354_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n355_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n355_call_proc_staged_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx390_21
.Lx390_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx390_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_22
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx390_23
.Lx390_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx390_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx390_24
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx390_25
.Lx390_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx390_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx390_1
                        lea              rcx, [rip + .Lx390_3]
                        lea              rdx, [rip + .Lx390_4]
                                                                                        jmp   rax
.Lx390_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx390_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx390_2
.Lx390_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx390_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx390_2
.Lx390_1:
                        call             rt_faildescr@PLT
.Lx390_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n357_suspend_α
                                                                                        jmp   n356_var_ref_α
n355_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx390_0:
                        .quad            .Lx390_0_s
.Lx390_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n358_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n357_suspend_α:
                        lea              rax, [rip + n357_suspend_β]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_check_result$2F3_γ
n357_suspend_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n360_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n360_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn400:              .string          "$arg"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn400]
                        lea              rsi, [rbp + 336]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n361_var_ref_α
n360_op11_β:
                                                                                        jmp   n346_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n362_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n363_lit_integer_α
.Lx403_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx404_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n364_var_ref_α
.Lx404_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n365_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_proc_staged_α:
                        mov              qword ptr [rbp + 224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx408_21
.Lx408_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx408_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx408_23
.Lx408_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx408_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_24
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx408_25
.Lx408_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx408_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx408_26
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx408_27
.Lx408_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx408_27:
                        mov              edi, 3
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx408_1
                        lea              rcx, [rip + .Lx408_3]
                        lea              rdx, [rip + .Lx408_4]
                                                                                        jmp   rax
.Lx408_3:
                        mov              qword ptr [rbp + 232], rsp
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx408_5
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx408_2
.Lx408_4:
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx408_6
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx408_2
.Lx408_1:
                        call             rt_faildescr@PLT
.Lx408_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n346_op11_α
                                                                                        jmp   n355_call_proc_staged_β
n365_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 232]
                                                                                        jmp   qword ptr [rsp]
.Lx408_0:
                        .quad            .Lx408_0_s
.Lx408_0_s:
                        .string          "check_term/4"
#-----------------------------------------------------------------------------------------------------------------------
proc_check_result$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_result$2F3_β:
                                                                                        jmp   qword ptr [rbp + 816]
#-----------------------------------------------------------------------------------------------------------------------
proc_check_result$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_check_result$2F3_res]
                        push             rax
                        mov              rax, [rbp + 920]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_check_result$2F3_ω:
                        mov              rax, [rbp + 928]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go$2F1_α
proc_go$2F1_α:
                        .global          proc_go$2F1_α
                        .global          proc_go$2F1_β
                        .global          proc_go$2F1_γ
                        .global          proc_go$2F1_ω
                        sub              rsp, 1040
                        mov              [rsp + 1016], rcx
                        mov              [rsp + 1024], rdx
                        mov              [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 1008
                        call             rt_jmp_frame_lexprep2@PLT
proc_go$2F1_α_body:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 912], rax
#-----------------------------------------------------------------------------------------------------------------------
n409_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx440_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx440_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx440_101
.Lx440_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx440_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_go$2F1_ω
                                                                                        jmp   n410_var_ref_α
n409_op11_β:
                                                                                        jmp   proc_go$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n412_lit_integer_α
.Lx443_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n413_op11_α
.Lx444_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        lea              r8, [rbp + 816]
.Lx445_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx445_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx445_111
                        cmp              esi, 1
                                                                                        jne   .Lx445_112
                        mov              r8, rax
                                                                                        jmp   .Lx445_110
.Lx445_112:
                        cmp              esi, 2
                                                                                        jne   .Lx445_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx445_111
                        mov              r8, rax
                                                                                        jmp   .Lx445_110
.Lx445_113:
                        cmp              eax, 13
                                                                                        jne   .Lx445_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx445_111
                        cmp              rax, r8
                                                                                        je    .Lx445_111
                        mov              r8, rax
                                                                                        jmp   .Lx445_110
.Lx445_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx445_114
                        cmp              eax, 99
                                                                                        je    .Lx445_114
                        cmp              eax, 13
                                                                                        jne   .Lx445_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx445_114
                                                                                        jmp   .Lx445_118
.Lx445_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx445_115
                        cmp              eax, 6
                                                                                        jne   .Lx445_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx445_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx445_115
                                                                                        jmp   .Lx445_114
.Lx445_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx445_117
.Lx445_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx445_117
.Lx445_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx445_117:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n415_var_ref_α
                                                                                        jmp   n414_var_ref_α
n413_op11_β:
                                                                                        jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n416_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n417_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n418_op11_α
.Lx450_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n419_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n421_op11_α
                                                                                        jmp   n420_op19_α
n418_op11_β:
                                                                                        jmp   n421_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n419_op11_α:
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
.Lx454_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx454_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        cmp              esi, 1
                                                                                        jne   .Lx454_55
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_55:
                        cmp              esi, 2
                                                                                        jne   .Lx454_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_56:
                        cmp              eax, 13
                                                                                        jne   .Lx454_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_41
                        cmp              rax, r8
                                                                                        je    .Lx454_41
                        mov              r8, rax
                                                                                        jmp   .Lx454_40
.Lx454_41:
                        lea              r9, [rbp + 624]
.Lx454_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx454_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        cmp              esi, 1
                                                                                        jne   .Lx454_57
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_57:
                        cmp              esi, 2
                                                                                        jne   .Lx454_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_58:
                        cmp              eax, 13
                                                                                        jne   .Lx454_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx454_43
                        cmp              rax, r9
                                                                                        je    .Lx454_43
                        mov              r9, rax
                                                                                        jmp   .Lx454_42
.Lx454_43:
                        cmp              r8, r9
                                                                                        je    .Lx454_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_44
                        cmp              eax, 99
                                                                                        je    .Lx454_44
                        cmp              eax, 13
                                                                                        jne   .Lx454_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx454_44
                                                                                        jmp   .Lx454_45
.Lx454_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_53
                        cmp              eax, 99
                                                                                        je    .Lx454_53
                        cmp              eax, 13
                                                                                        jne   .Lx454_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx454_53
                                                                                        jmp   .Lx454_46
.Lx454_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx454_53
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
                                                                                        jmp   .Lx454_51
.Lx454_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx454_47
                        cmp              eax, 99
                                                                                        je    .Lx454_47
                        cmp              eax, 13
                                                                                        jne   .Lx454_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx454_47
                                                                                        jmp   .Lx454_48
.Lx454_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx454_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx454_53
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
                                                                                        jmp   .Lx454_51
.Lx454_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx454_49
                        cmp              edx, 14
                                                                                        je    .Lx454_53
                                                                                        jmp   .Lx454_52
.Lx454_49:
                        cmp              edx, 14
                                                                                        je    .Lx454_52
                        cmp              ecx, 7
                                                                                        je    .Lx454_53
                        cmp              edx, 7
                                                                                        je    .Lx454_53
                        cmp              ecx, 6
                                                                                        jne   .Lx454_50
                        cmp              edx, 6
                                                                                        jne   .Lx454_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx454_51
                                                                                        jmp   .Lx454_52
.Lx454_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx454_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx454_53
.Lx454_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx454_54
.Lx454_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx454_54
.Lx454_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx454_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n422_var_ref_α
n419_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n420_op19_α:
                                                                                        jmp   n424_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n421_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_go$2F1_ω
                                                                                        jmp   n415_var_ref_α
n421_op11_β:
                                                                                        jmp   proc_go$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n425_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
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
                                                                                        je    proc_go$2F1_ω
                                                                                        jmp   proc_go$2F1_ω
n423_op11_β:
                                                                                        jmp   proc_go$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_suspend_α:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go$2F1_γ
n424_suspend_β:
                                                                                        jmp   n421_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n426_lit_integer_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n427_op11_α
.Lx463_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
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
                        .section         .rodata
.Lrkfn465:              .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn465]
                        lea              rsi, [rbp + 496]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n428_var_ref_α
n427_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n429_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n430_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n431_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_proc_staged_α:
                        mov              qword ptr [rbp + 400], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_20
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx473_21
.Lx473_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        call             rt_arg_stage@PLT
.Lx473_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_22
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx473_23
.Lx473_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        call             rt_arg_stage@PLT
.Lx473_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_24
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx473_25
.Lx473_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx473_25:
                        mov              edi, 7
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx473_1
                        lea              rcx, [rip + .Lx473_3]
                        lea              rdx, [rip + .Lx473_4]
                                                                                        jmp   rax
.Lx473_3:
                        mov              qword ptr [rbp + 408], rsp
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx473_5
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx473_2
.Lx473_4:
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax
                                                                                        jne   .Lx473_6
                        mov              qword ptr [rbp + 400], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx473_2
.Lx473_1:
                        call             rt_faildescr@PLT
.Lx473_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n432_var_ref_α
n431_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 408]
                                                                                        jmp   qword ptr [rsp]
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "$disj0/3"
#-----------------------------------------------------------------------------------------------------------------------
n432_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n433_var_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n434_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n434_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n435_op11_α
.Lx478_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n436_op11_α
n435_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n436_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n431_call_proc_staged_β
                                                                                        jmp   n437_var_ref_α
n436_op11_β:
                                                                                        jmp   n431_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n438_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n438_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx484_21
.Lx484_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx484_21:
                        mov              edi, 6
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx484_1
                        lea              rcx, [rip + .Lx484_3]
                        lea              rdx, [rip + .Lx484_4]
                                                                                        jmp   rax
.Lx484_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx484_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx484_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_1:
                        call             rt_faildescr@PLT
.Lx484_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n431_call_proc_staged_β
                                                                                        jmp   n439_suspend_α
n438_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "go/1"
#-----------------------------------------------------------------------------------------------------------------------
n439_suspend_α:
                        lea              rax, [rip + n439_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go$2F1_γ
n439_suspend_β:
                                                                                        jmp   n438_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go$2F1_β:
                                                                                        jmp   qword ptr [rbp + 912]
#-----------------------------------------------------------------------------------------------------------------------
proc_go$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go$2F1_res]
                        push             rax
                        mov              rax, [rbp + 1016]
                        mov              rbp, [rbp + 1032]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go$2F1_ω:
                        mov              rax, [rbp + 1024]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, [rbp + 1032]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F3_α
proc_$disj0$2F3_α:
                        .global          proc_$disj0$2F3_α
                        .global          proc_$disj0$2F3_β
                        .global          proc_$disj0$2F3_γ
                        .global          proc_$disj0$2F3_ω
                        sub              rsp, 1424
                        mov              [rsp + 1400], rcx
                        mov              [rsp + 1408], rdx
                        mov              [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F3_α_body:
                        lea              rax, [rip + n521_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
#-----------------------------------------------------------------------------------------------------------------------
n487_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx530_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx530_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx530_101
.Lx530_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx530_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   n488_var_ref_α
n487_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n488_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n489_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n490_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n490_op11_α:
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
.Lx535_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx535_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx535_41
                        cmp              esi, 1
                                                                                        jne   .Lx535_55
                        mov              r8, rax
                                                                                        jmp   .Lx535_40
.Lx535_55:
                        cmp              esi, 2
                                                                                        jne   .Lx535_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx535_41
                        mov              r8, rax
                                                                                        jmp   .Lx535_40
.Lx535_56:
                        cmp              eax, 13
                                                                                        jne   .Lx535_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx535_41
                        cmp              rax, r8
                                                                                        je    .Lx535_41
                        mov              r8, rax
                                                                                        jmp   .Lx535_40
.Lx535_41:
                        lea              r9, [rbp + 1280]
.Lx535_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx535_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx535_43
                        cmp              esi, 1
                                                                                        jne   .Lx535_57
                        mov              r9, rax
                                                                                        jmp   .Lx535_42
.Lx535_57:
                        cmp              esi, 2
                                                                                        jne   .Lx535_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx535_43
                        mov              r9, rax
                                                                                        jmp   .Lx535_42
.Lx535_58:
                        cmp              eax, 13
                                                                                        jne   .Lx535_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx535_43
                        cmp              rax, r9
                                                                                        je    .Lx535_43
                        mov              r9, rax
                                                                                        jmp   .Lx535_42
.Lx535_43:
                        cmp              r8, r9
                                                                                        je    .Lx535_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx535_44
                        cmp              eax, 99
                                                                                        je    .Lx535_44
                        cmp              eax, 13
                                                                                        jne   .Lx535_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx535_44
                                                                                        jmp   .Lx535_45
.Lx535_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx535_53
                        cmp              eax, 99
                                                                                        je    .Lx535_53
                        cmp              eax, 13
                                                                                        jne   .Lx535_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx535_53
                                                                                        jmp   .Lx535_46
.Lx535_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx535_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx535_53
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
                                                                                        jmp   .Lx535_51
.Lx535_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx535_47
                        cmp              eax, 99
                                                                                        je    .Lx535_47
                        cmp              eax, 13
                                                                                        jne   .Lx535_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx535_47
                                                                                        jmp   .Lx535_48
.Lx535_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx535_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx535_53
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
                                                                                        jmp   .Lx535_51
.Lx535_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx535_49
                        cmp              edx, 14
                                                                                        je    .Lx535_53
                                                                                        jmp   .Lx535_52
.Lx535_49:
                        cmp              edx, 14
                                                                                        je    .Lx535_52
                        cmp              ecx, 7
                                                                                        je    .Lx535_53
                        cmp              edx, 7
                                                                                        je    .Lx535_53
                        cmp              ecx, 6
                                                                                        jne   .Lx535_50
                        cmp              edx, 6
                                                                                        jne   .Lx535_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx535_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx535_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx535_51
                                                                                        jmp   .Lx535_52
.Lx535_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx535_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx535_53
.Lx535_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx535_54
.Lx535_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx535_54
.Lx535_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx535_54:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n492_op11_α
                                                                                        jmp   n491_var_ref_α
n490_op11_β:
                                                                                        jmp   n492_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n491_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n493_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n492_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   n494_var_ref_α
n492_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n495_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n495_op11_α:
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
.Lx543_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx543_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_41
                        cmp              esi, 1
                                                                                        jne   .Lx543_55
                        mov              r8, rax
                                                                                        jmp   .Lx543_40
.Lx543_55:
                        cmp              esi, 2
                                                                                        jne   .Lx543_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx543_41
                        mov              r8, rax
                                                                                        jmp   .Lx543_40
.Lx543_56:
                        cmp              eax, 13
                                                                                        jne   .Lx543_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_41
                        cmp              rax, r8
                                                                                        je    .Lx543_41
                        mov              r8, rax
                                                                                        jmp   .Lx543_40
.Lx543_41:
                        lea              r9, [rbp + 1200]
.Lx543_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx543_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_43
                        cmp              esi, 1
                                                                                        jne   .Lx543_57
                        mov              r9, rax
                                                                                        jmp   .Lx543_42
.Lx543_57:
                        cmp              esi, 2
                                                                                        jne   .Lx543_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx543_43
                        mov              r9, rax
                                                                                        jmp   .Lx543_42
.Lx543_58:
                        cmp              eax, 13
                                                                                        jne   .Lx543_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx543_43
                        cmp              rax, r9
                                                                                        je    .Lx543_43
                        mov              r9, rax
                                                                                        jmp   .Lx543_42
.Lx543_43:
                        cmp              r8, r9
                                                                                        je    .Lx543_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx543_44
                        cmp              eax, 99
                                                                                        je    .Lx543_44
                        cmp              eax, 13
                                                                                        jne   .Lx543_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx543_44
                                                                                        jmp   .Lx543_45
.Lx543_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx543_53
                        cmp              eax, 99
                                                                                        je    .Lx543_53
                        cmp              eax, 13
                                                                                        jne   .Lx543_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx543_53
                                                                                        jmp   .Lx543_46
.Lx543_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx543_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx543_53
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
                                                                                        jmp   .Lx543_51
.Lx543_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx543_47
                        cmp              eax, 99
                                                                                        je    .Lx543_47
                        cmp              eax, 13
                                                                                        jne   .Lx543_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx543_47
                                                                                        jmp   .Lx543_48
.Lx543_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx543_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx543_53
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
                                                                                        jmp   .Lx543_51
.Lx543_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx543_49
                        cmp              edx, 14
                                                                                        je    .Lx543_53
                                                                                        jmp   .Lx543_52
.Lx543_49:
                        cmp              edx, 14
                                                                                        je    .Lx543_52
                        cmp              ecx, 7
                                                                                        je    .Lx543_53
                        cmp              edx, 7
                                                                                        je    .Lx543_53
                        cmp              ecx, 6
                                                                                        jne   .Lx543_50
                        cmp              edx, 6
                                                                                        jne   .Lx543_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx543_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx543_51
                                                                                        jmp   .Lx543_52
.Lx543_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx543_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx543_53
.Lx543_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx543_54
.Lx543_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx543_54
.Lx543_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx543_54:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n492_op11_α
                                                                                        jmp   n497_var_ref_α
n495_op11_β:
                                                                                        jmp   n492_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n498_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
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
.Lx548_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              esi, 1
                                                                                        jne   .Lx548_55
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_55:
                        cmp              esi, 2
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_56:
                        cmp              eax, 13
                                                                                        jne   .Lx548_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_41
                        cmp              rax, r8
                                                                                        je    .Lx548_41
                        mov              r8, rax
                                                                                        jmp   .Lx548_40
.Lx548_41:
                        lea              r9, [rbp + 464]
.Lx548_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx548_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              esi, 1
                                                                                        jne   .Lx548_57
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_57:
                        cmp              esi, 2
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_58:
                        cmp              eax, 13
                                                                                        jne   .Lx548_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx548_43
                        cmp              rax, r9
                                                                                        je    .Lx548_43
                        mov              r9, rax
                                                                                        jmp   .Lx548_42
.Lx548_43:
                        cmp              r8, r9
                                                                                        je    .Lx548_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_44
                        cmp              eax, 99
                                                                                        je    .Lx548_44
                        cmp              eax, 13
                                                                                        jne   .Lx548_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx548_44
                                                                                        jmp   .Lx548_45
.Lx548_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_53
                        cmp              eax, 99
                                                                                        je    .Lx548_53
                        cmp              eax, 13
                                                                                        jne   .Lx548_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_46
.Lx548_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx548_47
                        cmp              eax, 99
                                                                                        je    .Lx548_47
                        cmp              eax, 13
                                                                                        jne   .Lx548_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx548_47
                                                                                        jmp   .Lx548_48
.Lx548_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx548_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx548_53
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
                                                                                        jmp   .Lx548_51
.Lx548_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx548_49
                        cmp              edx, 14
                                                                                        je    .Lx548_53
                                                                                        jmp   .Lx548_52
.Lx548_49:
                        cmp              edx, 14
                                                                                        je    .Lx548_52
                        cmp              ecx, 7
                                                                                        je    .Lx548_53
                        cmp              edx, 7
                                                                                        je    .Lx548_53
                        cmp              ecx, 6
                                                                                        jne   .Lx548_50
                        cmp              edx, 6
                                                                                        jne   .Lx548_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx548_51
                                                                                        jmp   .Lx548_52
.Lx548_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx548_53
.Lx548_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx548_54
.Lx548_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx548_54
.Lx548_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx548_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n501_op11_α
                                                                                        jmp   n500_var_ref_α
n498_op11_β:
                                                                                        jmp   n501_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n502_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n503_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n501_op11_α:
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
                                                                                        je    proc_$disj0$2F3_ω
                                                                                        jmp   proc_$disj0$2F3_ω
n501_op11_β:
                                                                                        jmp   proc_$disj0$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n502_op11_α:
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
.Lx554_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx554_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx554_41
                        cmp              esi, 1
                                                                                        jne   .Lx554_55
                        mov              r8, rax
                                                                                        jmp   .Lx554_40
.Lx554_55:
                        cmp              esi, 2
                                                                                        jne   .Lx554_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx554_41
                        mov              r8, rax
                                                                                        jmp   .Lx554_40
.Lx554_56:
                        cmp              eax, 13
                                                                                        jne   .Lx554_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx554_41
                        cmp              rax, r8
                                                                                        je    .Lx554_41
                        mov              r8, rax
                                                                                        jmp   .Lx554_40
.Lx554_41:
                        lea              r9, [rbp + 1120]
.Lx554_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx554_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx554_43
                        cmp              esi, 1
                                                                                        jne   .Lx554_57
                        mov              r9, rax
                                                                                        jmp   .Lx554_42
.Lx554_57:
                        cmp              esi, 2
                                                                                        jne   .Lx554_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx554_43
                        mov              r9, rax
                                                                                        jmp   .Lx554_42
.Lx554_58:
                        cmp              eax, 13
                                                                                        jne   .Lx554_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx554_43
                        cmp              rax, r9
                                                                                        je    .Lx554_43
                        mov              r9, rax
                                                                                        jmp   .Lx554_42
.Lx554_43:
                        cmp              r8, r9
                                                                                        je    .Lx554_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx554_44
                        cmp              eax, 99
                                                                                        je    .Lx554_44
                        cmp              eax, 13
                                                                                        jne   .Lx554_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx554_44
                                                                                        jmp   .Lx554_45
.Lx554_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx554_53
                        cmp              eax, 99
                                                                                        je    .Lx554_53
                        cmp              eax, 13
                                                                                        jne   .Lx554_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx554_53
                                                                                        jmp   .Lx554_46
.Lx554_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx554_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx554_53
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
                                                                                        jmp   .Lx554_51
.Lx554_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx554_47
                        cmp              eax, 99
                                                                                        je    .Lx554_47
                        cmp              eax, 13
                                                                                        jne   .Lx554_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx554_47
                                                                                        jmp   .Lx554_48
.Lx554_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx554_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx554_53
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
                                                                                        jmp   .Lx554_51
.Lx554_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx554_49
                        cmp              edx, 14
                                                                                        je    .Lx554_53
                                                                                        jmp   .Lx554_52
.Lx554_49:
                        cmp              edx, 14
                                                                                        je    .Lx554_52
                        cmp              ecx, 7
                                                                                        je    .Lx554_53
                        cmp              edx, 7
                                                                                        je    .Lx554_53
                        cmp              ecx, 6
                                                                                        jne   .Lx554_50
                        cmp              edx, 6
                                                                                        jne   .Lx554_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx554_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx554_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx554_51
                                                                                        jmp   .Lx554_52
.Lx554_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx554_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx554_53
.Lx554_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx554_54
.Lx554_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx554_54
.Lx554_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx554_54:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n492_op11_α
                                                                                        jmp   n504_lit_integer_α
n502_op11_β:
                                                                                        jmp   n492_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n505_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n506_lit_integer_α
.Lx557_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n505_op11_α:
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
                        lea              r9, [rbp + 384]
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n501_op11_α
                                                                                        jmp   n507_var_ref_α
n505_op11_β:
                                                                                        jmp   n501_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n508_var_ref_α
.Lx559_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n509_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n510_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n511_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_proc_staged_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx567_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx567_21
.Lx567_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx567_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx567_22
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx567_23
.Lx567_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx567_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx567_24
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx567_25
.Lx567_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx567_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx567_1
                        lea              rcx, [rip + .Lx567_3]
                        lea              rdx, [rip + .Lx567_4]
                                                                                        jmp   rax
.Lx567_3:
                        mov              qword ptr [rbp + 1016], rsp
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx567_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx567_2
.Lx567_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx567_2
.Lx567_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx567_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx567_2
.Lx567_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx567_2
.Lx567_1:
                        call             rt_faildescr@PLT
.Lx567_2:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n492_op11_α
                                                                                        jmp   n512_var_ref_α
n510_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1016]
                                                                                        jmp   qword ptr [rsp]
.Lx567_0:
                        .quad            .Lx567_0_s
.Lx567_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n511_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx568_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx568_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        cmp              esi, 1
                                                                                        jne   .Lx568_55
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_55:
                        cmp              esi, 2
                                                                                        jne   .Lx568_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_56:
                        cmp              eax, 13
                                                                                        jne   .Lx568_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_41
                        cmp              rax, r8
                                                                                        je    .Lx568_41
                        mov              r8, rax
                                                                                        jmp   .Lx568_40
.Lx568_41:
                        lea              r9, [rbp + 304]
.Lx568_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx568_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        cmp              esi, 1
                                                                                        jne   .Lx568_57
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_57:
                        cmp              esi, 2
                                                                                        jne   .Lx568_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_58:
                        cmp              eax, 13
                                                                                        jne   .Lx568_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_43
                        cmp              rax, r9
                                                                                        je    .Lx568_43
                        mov              r9, rax
                                                                                        jmp   .Lx568_42
.Lx568_43:
                        cmp              r8, r9
                                                                                        je    .Lx568_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_44
                        cmp              eax, 99
                                                                                        je    .Lx568_44
                        cmp              eax, 13
                                                                                        jne   .Lx568_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx568_44
                                                                                        jmp   .Lx568_45
.Lx568_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_53
                        cmp              eax, 99
                                                                                        je    .Lx568_53
                        cmp              eax, 13
                                                                                        jne   .Lx568_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_53
                                                                                        jmp   .Lx568_46
.Lx568_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx568_53
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
                                                                                        jmp   .Lx568_51
.Lx568_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_47
                        cmp              eax, 99
                                                                                        je    .Lx568_47
                        cmp              eax, 13
                                                                                        jne   .Lx568_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_47
                                                                                        jmp   .Lx568_48
.Lx568_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx568_53
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
                                                                                        jmp   .Lx568_51
.Lx568_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx568_49
                        cmp              edx, 14
                                                                                        je    .Lx568_53
                                                                                        jmp   .Lx568_52
.Lx568_49:
                        cmp              edx, 14
                                                                                        je    .Lx568_52
                        cmp              ecx, 7
                                                                                        je    .Lx568_53
                        cmp              edx, 7
                                                                                        je    .Lx568_53
                        cmp              ecx, 6
                                                                                        jne   .Lx568_50
                        cmp              edx, 6
                                                                                        jne   .Lx568_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx568_51
                                                                                        jmp   .Lx568_52
.Lx568_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx568_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx568_53
.Lx568_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx568_54
.Lx568_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx568_54
.Lx568_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx568_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n501_op11_α
                                                                                        jmp   n513_var_ref_α
n511_op11_β:
                                                                                        jmp   n501_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n514_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n515_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n516_lit_integer_α
.Lx573_0:
                        .quad            .Lx573_0_s
.Lx573_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n517_lit_integer_α
.Lx574_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n518_op11_α
.Lx575_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n519_call_proc_staged_α
.Lx576_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n518_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn578:              .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn578]
                        lea              rsi, [rbp + 848]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n510_call_proc_staged_β
                                                                                        jmp   n520_lit_integer_α
n518_op11_β:
                                                                                        jmp   n510_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n519_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx580_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx580_21
.Lx580_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx580_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx580_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx580_23
.Lx580_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx580_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx580_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx580_25
.Lx580_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx580_25:
                        mov              edi, 5
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx580_1
                        lea              rcx, [rip + .Lx580_3]
                        lea              rdx, [rip + .Lx580_4]
                                                                                        jmp   rax
.Lx580_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx580_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx580_2
.Lx580_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx580_2
.Lx580_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx580_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx580_2
.Lx580_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx580_2
.Lx580_1:
                        call             rt_faildescr@PLT
.Lx580_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n501_op11_α
                                                                                        jmp   n521_suspend_α
n519_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "check_result/3"
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n522_lit_integer_α
.Lx581_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n521_suspend_α:
                        lea              rax, [rip + n521_suspend_β]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F3_γ
n521_suspend_β:
                                                                                        jmp   n519_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n522_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx584_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n523_var_ref_α
.Lx584_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n524_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n525_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n525_call_proc_staged_α:
                        lea              rsi, [rbp + 768]
                        lea              rdx, [rbp + 784]
                        lea              rcx, [rbp + 800]
                        lea              r8, [rbp + 816]
                        call             proc_set_atoms$2F4_dcα
                                                                                        jmp   .Lx590_2
.Lx590_2:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n510_call_proc_staged_β
                                                                                        jmp   n526_var_ref_α
n525_call_proc_staged_β:
                                                                                        jmp   n510_call_proc_staged_β
.Lx590_0:
                        .quad            .Lx590_0_s
.Lx590_0_s:
                        .string          "set_atoms/4"
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n527_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n527_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n528_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n528_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n529_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n529_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx598_21
.Lx598_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx598_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx598_23
.Lx598_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx598_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx598_24
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx598_25
.Lx598_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx598_25:
                        mov              rdi, qword ptr [rip + .Lx598_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx598_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx598_3]
                        lea              rdx, [rip + .Lx598_4]
                                                                                        jmp   rax
.Lx598_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx598_2
.Lx598_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx598_2
.Lx598_1:
                        call             rt_faildescr@PLT
.Lx598_2:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n525_call_proc_staged_β
                                                                                        jmp   n529_call_proc_staged_β
n529_call_proc_staged_β:
                                                                                        jmp   n525_call_proc_staged_β
.Lx598_0:
                        .quad            .Lx598_0_s
.Lx598_0_s:
                        .string          "nb_setarg/3"
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1328]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1400]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F3_ω:
                        mov              rax, [rbp + 1408]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
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
                        lea              rax, [rip + n602_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n599_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx604_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx604_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx604_101
.Lx604_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx604_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n600_lit_string_α
n599_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx605_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n601_call_proc_staged_α
.Lx605_0:
                        .quad            .Lx605_0_s
.Lx605_0_s:
                        .string          "agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n601_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx607_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx607_21
.Lx607_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx607_21:
                        mov              rdi, qword ptr [rip + .Lx607_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx607_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx607_3]
                        lea              rdx, [rip + .Lx607_4]
                                                                                        jmp   rax
.Lx607_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx607_2
.Lx607_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx607_2
.Lx607_1:
                        call             rt_faildescr@PLT
.Lx607_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n603_op11_α
                                                                                        jmp   n602_suspend_α
n601_call_proc_staged_β:
                                                                                        jmp   n603_op11_α
.Lx607_0:
                        .quad            .Lx607_0_s
.Lx607_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n602_suspend_α:
                        lea              rax, [rip + n602_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n602_suspend_β:
                                                                                        jmp   n601_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n603_op11_α:
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
n603_op11_β:
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
                        lea              rax, [rip + n617_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n611_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx618_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx618_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx618_101
.Lx618_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx618_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n612_lit_string_α
n611_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n612_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx619_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n613_lit_string_α
.Lx619_0:
                        .quad            .Lx619_0_s
.Lx619_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx620_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n614_op11_α
.Lx620_0:
                        .quad            .Lx620_0_s
.Lx620_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n614_op11_α:
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
                                                                                        je    n616_op11_α
                                                                                        jmp   n615_call_proc_staged_α
n614_op11_β:
                                                                                        jmp   n616_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n615_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx623_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx623_21
.Lx623_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx623_21:
                        mov              rdi, qword ptr [rip + .Lx623_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx623_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx623_3]
                        lea              rdx, [rip + .Lx623_4]
                                                                                        jmp   rax
.Lx623_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx623_2
.Lx623_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx623_2
.Lx623_1:
                        call             rt_faildescr@PLT
.Lx623_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n616_op11_α
                                                                                        jmp   n617_suspend_α
n615_call_proc_staged_β:
                                                                                        jmp   n616_op11_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n616_op11_α:
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
n616_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n617_suspend_α:
                        lea              rax, [rip + n617_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n617_suspend_β:
                                                                                        jmp   n615_call_proc_staged_β
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
                        lea              rax, [rip + n638_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n627_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx639_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx639_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx639_101
.Lx639_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx639_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n628_lit_string_α
n627_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n628_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n629_lit_string_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "test_agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n629_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx641_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n630_lit_string_α
.Lx641_0:
                        .quad            .Lx641_0_s
.Lx641_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n630_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n631_lit_string_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n631_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n632_lit_integer_α
.Lx643_0:
                        .quad            .Lx643_0_s
.Lx643_0_s:
                        .string          "test_agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n632_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n633_op11_α
.Lx644_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n633_op11_α:
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
                                                                                        jmp   n634_lit_string_α
n633_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n634_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx646_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n635_op11_α
.Lx646_0:
                        .quad            .Lx646_0_s
.Lx646_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n635_op11_α:
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
                                                                                        je    n637_op11_α
                                                                                        jmp   n636_call_proc_staged_α
n635_op11_β:
                                                                                        jmp   n637_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n636_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx649_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx649_21
.Lx649_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx649_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx649_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx649_23
.Lx649_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx649_23:
                        mov              rdi, qword ptr [rip + .Lx649_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx649_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx649_3]
                        lea              rdx, [rip + .Lx649_4]
                                                                                        jmp   rax
.Lx649_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx649_2
.Lx649_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx649_2
.Lx649_1:
                        call             rt_faildescr@PLT
.Lx649_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n637_op11_α
                                                                                        jmp   n638_suspend_α
n636_call_proc_staged_β:
                                                                                        jmp   n637_op11_α
.Lx649_0:
                        .quad            .Lx649_0_s
.Lx649_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n637_op11_α:
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
n637_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n638_suspend_α:
                        lea              rax, [rip + n638_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n638_suspend_β:
                                                                                        jmp   n636_call_proc_staged_β
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
                        .globl           proc_test_agc_copyterm$2F0_α
proc_test_agc_copyterm$2F0_α:
                        .global          proc_test_agc_copyterm$2F0_α
                        .global          proc_test_agc_copyterm$2F0_β
                        .global          proc_test_agc_copyterm$2F0_γ
                        .global          proc_test_agc_copyterm$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_agc_copyterm$2F0_α_body:
                        lea              rax, [rip + n660_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n653_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx661_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx661_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx661_101
.Lx661_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx661_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_agc_copyterm$2F0_ω
                                                                                        jmp   n654_lit_string_α
n653_op11_β:
                                                                                        jmp   proc_test_agc_copyterm$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n654_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n655_lit_string_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n655_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n656_lit_string_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          "agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n656_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n657_op11_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n657_op11_α:
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
                                                                                        je    n659_op11_α
                                                                                        jmp   n658_call_proc_staged_α
n657_op11_β:
                                                                                        jmp   n659_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n658_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx667_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx667_21
.Lx667_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx667_21:
                        mov              rdi, qword ptr [rip + .Lx667_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx667_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx667_3]
                        lea              rdx, [rip + .Lx667_4]
                                                                                        jmp   rax
.Lx667_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx667_2
.Lx667_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx667_2
.Lx667_1:
                        call             rt_faildescr@PLT
.Lx667_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n659_op11_α
                                                                                        jmp   n660_suspend_α
n658_call_proc_staged_β:
                                                                                        jmp   n659_op11_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n659_op11_α:
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
                                                                                        je    proc_test_agc_copyterm$2F0_ω
                                                                                        jmp   proc_test_agc_copyterm$2F0_ω
n659_op11_β:
                                                                                        jmp   proc_test_agc_copyterm$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n660_suspend_α:
                        lea              rax, [rip + n660_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_agc_copyterm$2F0_γ
n660_suspend_β:
                                                                                        jmp   n658_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_agc_copyterm$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_agc_copyterm$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_agc_copyterm$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_agc_copyterm$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_agc_copyterm$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
                        .global          proc_pj_dir_3$2F0_α
                        .global          proc_pj_dir_3$2F0_β
                        .global          proc_pj_dir_3$2F0_γ
                        .global          proc_pj_dir_3$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n674_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n671_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx676_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx676_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx676_101
.Lx676_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx676_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n672_lit_string_α
n671_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n672_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n673_call_proc_staged_α
.Lx677_0:
                        .quad            .Lx677_0_s
.Lx677_0_s:
                        .string          "agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n673_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx679_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx679_21
.Lx679_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx679_21:
                        mov              rdi, qword ptr [rip + .Lx679_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx679_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx679_3]
                        lea              rdx, [rip + .Lx679_4]
                                                                                        jmp   rax
.Lx679_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx679_2
.Lx679_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx679_2
.Lx679_1:
                        call             rt_faildescr@PLT
.Lx679_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n675_op11_α
                                                                                        jmp   n674_suspend_α
n673_call_proc_staged_β:
                                                                                        jmp   n675_op11_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n674_suspend_α:
                        lea              rax, [rip + n674_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n674_suspend_β:
                                                                                        jmp   n673_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n675_op11_α:
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
n675_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
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
                        lea              rax, [rip + n689_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n683_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx690_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx690_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx690_101
.Lx690_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx690_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n684_lit_string_α
n683_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n684_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n685_lit_string_α
.Lx691_0:
                        .quad            .Lx691_0_s
.Lx691_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n686_op11_α
.Lx692_0:
                        .quad            .Lx692_0_s
.Lx692_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n686_op11_α:
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
                                                                                        je    n688_op11_α
                                                                                        jmp   n687_call_proc_staged_α
n686_op11_β:
                                                                                        jmp   n688_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n687_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx695_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx695_21
.Lx695_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx695_21:
                        mov              rdi, qword ptr [rip + .Lx695_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx695_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx695_3]
                        lea              rdx, [rip + .Lx695_4]
                                                                                        jmp   rax
.Lx695_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx695_2
.Lx695_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx695_2
.Lx695_1:
                        call             rt_faildescr@PLT
.Lx695_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n688_op11_α
                                                                                        jmp   n689_suspend_α
n687_call_proc_staged_β:
                                                                                        jmp   n688_op11_α
.Lx695_0:
                        .quad            .Lx695_0_s
.Lx695_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n688_op11_α:
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
n688_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n689_suspend_α:
                        lea              rax, [rip + n689_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n689_suspend_β:
                                                                                        jmp   n687_call_proc_staged_β
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
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "test/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_test$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "set_atoms/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_set_atoms$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1936
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_set_atoms$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "check_term/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_check_term$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1488
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "check_result/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_check_result$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "go/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_go$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1008
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "$disj0/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_$disj0$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
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
.Lstartup_pname10:      .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "test_agc_copyterm/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_test_agc_copyterm$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
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
n699_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n700_call_proc_staged_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          "agc_copyterm"
#-----------------------------------------------------------------------------------------------------------------------
n700_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx703_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx703_21
.Lx703_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx703_21:
                        mov              rdi, qword ptr [rip + .Lx703_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx703_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx703_3]
                        lea              rdx, [rip + .Lx703_4]
                                                                                        jmp   rax
.Lx703_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx703_2
.Lx703_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx703_2
.Lx703_1:
                        call             rt_faildescr@PLT
.Lx703_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n700_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx703_0:
                        .quad            .Lx703_0_s
.Lx703_0_s:
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
