                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
proc_test$2F2_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        sub              rsp, 288
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx158_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx158_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx158_101
.Lx158_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx158_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx158_240
                        add              rsp, 288
                                                                                        jmp   proc_test$2F2_ω
.Lx158_240:
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        add              rsp, 288
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 4960], 2                      # result
                        mov              dword ptr [rbp + 4964], 5
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n3_call_builtin_prolog_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4920], rax
                        lea              rdi, [rbp + 4912]
                        mov              rsi, qword ptr [rip + .Lx162_2]
                                                                                        jmp   .Lx162_3
.Lx162_2:
                        .quad            .Lx162_2_s
.Lx162_2_s:
                        .string          "cross"
.Lx162_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx162_240
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
.Lx162_240:
                                                                                        jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n5_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 4880], 2                      # result
                        mov              dword ptr [rbp + 4884], 2
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n6_var_ref_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 4784], 2                      # result
                        mov              dword ptr [rbp + 4788], 11
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n8_call_builtin_prolog_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4840], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4856], rax
                        lea              rdi, [rbp + 4816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx169_240
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
.Lx169_240:
                                                                                        jmp   n9_call_builtin_prolog_α
n8_call_builtin_prolog_β:
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4728], rax
                        mov              rax, qword ptr [rbp + 4800]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4808]
                        mov              qword ptr [rbp + 4744], rax
                        lea              rdi, [rbp + 4720]
                        lea              r8, [rbp + 4720]
.Lx170_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx170_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx170_41
                        cmp              esi, 1
                                                                                        jne   .Lx170_55
                        mov              r8, rax
                                                                                        jmp   .Lx170_40
.Lx170_55:
                        cmp              esi, 2
                                                                                        jne   .Lx170_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx170_41
                        mov              r8, rax
                                                                                        jmp   .Lx170_40
.Lx170_56:
                        cmp              eax, 72
                                                                                        jne   .Lx170_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx170_41
                        cmp              rax, r8
                                                                                        je    .Lx170_41
                        mov              r8, rax
                                                                                        jmp   .Lx170_40
.Lx170_41:
                        lea              r9, [rbp + 4736]
.Lx170_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx170_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx170_43
                        cmp              esi, 1
                                                                                        jne   .Lx170_57
                        mov              r9, rax
                                                                                        jmp   .Lx170_42
.Lx170_57:
                        cmp              esi, 2
                                                                                        jne   .Lx170_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx170_43
                        mov              r9, rax
                                                                                        jmp   .Lx170_42
.Lx170_58:
                        cmp              eax, 72
                                                                                        jne   .Lx170_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx170_43
                        cmp              rax, r9
                                                                                        je    .Lx170_43
                        mov              r9, rax
                                                                                        jmp   .Lx170_42
.Lx170_43:
                        cmp              r8, r9
                                                                                        je    .Lx170_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx170_44
                        cmp              eax, 104
                                                                                        je    .Lx170_44
                        cmp              eax, 72
                                                                                        jne   .Lx170_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx170_44
                                                                                        jmp   .Lx170_45
.Lx170_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx170_53
                        cmp              eax, 104
                                                                                        je    .Lx170_53
                        cmp              eax, 72
                                                                                        jne   .Lx170_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx170_53
                                                                                        jmp   .Lx170_46
.Lx170_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx170_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx170_53
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
                                                                                        jmp   .Lx170_51
.Lx170_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx170_47
                        cmp              eax, 104
                                                                                        je    .Lx170_47
                        cmp              eax, 72
                                                                                        jne   .Lx170_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx170_47
                                                                                        jmp   .Lx170_48
.Lx170_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx170_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx170_53
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
                                                                                        jmp   .Lx170_51
.Lx170_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx170_49
                        cmp              edx, 80
                                                                                        je    .Lx170_53
                                                                                        jmp   .Lx170_52
.Lx170_49:
                        cmp              edx, 80
                                                                                        je    .Lx170_52
                        cmp              ecx, 5
                                                                                        je    .Lx170_53
                        cmp              edx, 5
                                                                                        je    .Lx170_53
                        cmp              ecx, 3
                                                                                        jne   .Lx170_50
                        cmp              edx, 3
                                                                                        jne   .Lx170_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx170_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx170_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx170_51
                                                                                        jmp   .Lx170_52
.Lx170_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx170_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx170_53
.Lx170_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx170_54
.Lx170_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx170_54
.Lx170_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx170_54:
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx170_240
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
.Lx170_240:
                                                                                        jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                                                                                        jmp   n11_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_proc_staged_α:
                        mov              qword ptr [rbp + 4656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx174_20
                        mov              rax, qword ptr [rbp + 4688]
                        mov              rdx, qword ptr [rbp + 4696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx174_21
.Lx174_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 4688]                    # v
                        mov              rdx, qword ptr [rbp + 4696]                    # v
                        call             rt_arg_stage@PLT
.Lx174_21:
                        mov              edi, 2                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx174_1
                        lea              rcx, [rip + .Lx174_3]
                        lea              rdx, [rip + .Lx174_4]
                                                                                        jmp   rax
.Lx174_3:
                        mov              qword ptr [rbp + 4664], rsp
                        mov              rax, qword ptr [rbp + 4656]
                        test             rax, rax
                                                                                        jne   .Lx174_5
                        mov              qword ptr [rbp + 4656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx174_2
.Lx174_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx174_2
.Lx174_4:
                        mov              rax, qword ptr [rbp + 4656]
                        test             rax, rax
                                                                                        jne   .Lx174_6
                        mov              qword ptr [rbp + 4656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx174_2
.Lx174_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx174_2
.Lx174_1:
                        call             rt_faildescr@PLT
.Lx174_2:
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx174_240
                        add              rsp, 288
                                                                                        jmp   n13_call_builtin_prolog_α
.Lx174_240:
                                                                                        jmp   n12_suspend_α
n11_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4664]
                                                                                        jmp   qword ptr [rsp]
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "cross/1"
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 288
                                                                                        jmp   proc_test$2F2_γ
n12_suspend_β:
                                                                                        jmp   n11_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 4576], 2                      # result
                        mov              dword ptr [rbp + 4580], 6
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n16_call_builtin_prolog_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4528]
                        mov              rsi, qword ptr [rip + .Lx181_2]
                                                                                        jmp   .Lx181_3
.Lx181_2:
                        .quad            .Lx181_2_s
.Lx181_2_s:
                        .string          "clause"
.Lx181_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 4496], 2                      # result
                        mov              dword ptr [rbp + 4500], 2
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n19_var_ref_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 4400], 2                      # result
                        mov              dword ptr [rbp + 4404], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n21_lit_string_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 4288], 2                      # result
                        mov              dword ptr [rbp + 4292], 13
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n22_lit_string_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 4304], 2                      # result
                        mov              dword ptr [rbp + 4308], 4
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n23_call_builtin_prolog_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4376], rax
                        lea              rdi, [rbp + 4336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n24_call_builtin_prolog_α
n23_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4440], rax
                        mov              rax, qword ptr [rbp + 4272]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4472], rax
                        lea              rdi, [rbp + 4432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n25_call_builtin_prolog_α
n24_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4232], rax
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4248], rax
                        lea              rdi, [rbp + 4224]
                        lea              r8, [rbp + 4224]
.Lx192_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              rax, r8
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_41:
                        lea              r9, [rbp + 4240]
.Lx192_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx192_44
                        cmp              eax, 72
                                                                                        jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx192_44
                                                                                        jmp   .Lx192_45
.Lx192_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_53
                        cmp              eax, 104
                                                                                        je    .Lx192_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx192_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx192_49
                        cmp              edx, 80
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_52
.Lx192_49:
                        cmp              edx, 80
                                                                                        je    .Lx192_52
                        cmp              ecx, 5
                                                                                        je    .Lx192_53
                        cmp              edx, 5
                                                                                        je    .Lx192_53
                        cmp              ecx, 3
                                                                                        jne   .Lx192_50
                        cmp              edx, 3
                                                                                        jne   .Lx192_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx192_54
.Lx192_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx192_54:
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n26_lit_string_α
n25_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 4192], 2                      # result
                        mov              dword ptr [rbp + 4196], 8
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n27_call_builtin_prolog_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4184], rax
                        .section         .rodata
.Lrkfn195:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]                         # fn
                        lea              rsi, [rbp + 4176]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_20
                        mov              rax, qword ptr [rbp + 4112]
                        mov              rdx, qword ptr [rbp + 4120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx203_21
.Lx203_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 4112]                    # v
                        mov              rdx, qword ptr [rbp + 4120]                    # v
                        call             rt_arg_stage@PLT
.Lx203_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_22
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx203_23
.Lx203_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 4128]                    # v
                        mov              rdx, qword ptr [rbp + 4136]                    # v
                        call             rt_arg_stage@PLT
.Lx203_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_24
                        mov              rax, qword ptr [rbp + 4144]
                        mov              rdx, qword ptr [rbp + 4152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx203_25
.Lx203_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 4144]                    # v
                        mov              rdx, qword ptr [rbp + 4152]                    # v
                        call             rt_arg_stage@PLT
.Lx203_25:
                        mov              rdi, qword ptr [rip + .Lx203_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx203_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx203_3]
                        lea              rdx, [rip + .Lx203_4]
                                                                                        jmp   rax
.Lx203_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_1:
                        call             rt_faildescr@PLT
.Lx203_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 104
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n32_var_ref_α
n31_call_proc_staged_β:
                                                                                        jmp   n35_call_builtin_prolog_α
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                                                                                        jmp   n33_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx207_20
                        mov              rax, qword ptr [rbp + 4016]
                        mov              rdx, qword ptr [rbp + 4024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx207_21
.Lx207_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 4016]                    # v
                        mov              rdx, qword ptr [rbp + 4024]                    # v
                        call             rt_arg_stage@PLT
.Lx207_21:
                        mov              rdi, qword ptr [rip + .Lx207_0]                # name
                        mov              esi, 1                                         # nargs
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
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 104
                                                                                        je    n31_call_proc_staged_β
                                                                                        jmp   n34_suspend_α
n33_call_proc_staged_β:
                                                                                        jmp   n31_call_proc_staged_β
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n34_suspend_β:
                                                                                        jmp   n33_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3960], rax
                        lea              rdi, [rbp + 3952]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 3920], 2                      # result
                        mov              dword ptr [rbp + 3924], 6
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n38_call_builtin_prolog_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3872]
                        mov              rsi, qword ptr [rip + .Lx214_2]
                                                                                        jmp   .Lx214_3
.Lx214_2:
                        .quad            .Lx214_2_s
.Lx214_2_s:
                        .string          "clause"
.Lx214_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 104
                                                                                        je    n57_call_builtin_prolog_α
                                                                                        jmp   n39_var_ref_α
n38_call_builtin_prolog_β:
                                                                                        jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n40_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 3840], 2                      # result
                        mov              dword ptr [rbp + 3844], 2
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n41_var_ref_α
.Lx217_0:
                        .quad            .Lx217_0_s
.Lx217_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 3744], 2                      # result
                        mov              dword ptr [rbp + 3748], 4
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n43_call_builtin_prolog_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3800], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx
                        cmp              eax, 104
                                                                                        je    n57_call_builtin_prolog_α
                                                                                        jmp   n44_call_builtin_prolog_α
n43_call_builtin_prolog_β:
                                                                                        jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3688], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3704], rax
                        lea              rdi, [rbp + 3680]
                        lea              r8, [rbp + 3680]
.Lx222_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx222_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx222_41
                        cmp              rax, r8
                                                                                        je    .Lx222_41
                        mov              r8, rax
                                                                                        jmp   .Lx222_40
.Lx222_41:
                        lea              r9, [rbp + 3696]
.Lx222_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx222_44
                        cmp              eax, 72
                                                                                        jne   .Lx222_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx222_44
                                                                                        jmp   .Lx222_45
.Lx222_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx222_53
                        cmp              eax, 104
                                                                                        je    .Lx222_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx222_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx222_49
                        cmp              edx, 80
                                                                                        je    .Lx222_53
                                                                                        jmp   .Lx222_52
.Lx222_49:
                        cmp              edx, 80
                                                                                        je    .Lx222_52
                        cmp              ecx, 5
                                                                                        je    .Lx222_53
                        cmp              edx, 5
                                                                                        je    .Lx222_53
                        cmp              ecx, 3
                                                                                        jne   .Lx222_50
                        cmp              edx, 3
                                                                                        jne   .Lx222_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx222_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx222_54
.Lx222_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx222_54:
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 104
                                                                                        je    n57_call_builtin_prolog_α
                                                                                        jmp   n45_lit_string_α
n44_call_builtin_prolog_β:
                                                                                        jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 3648], 2                      # result
                        mov              dword ptr [rbp + 3652], 8
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n46_call_builtin_prolog_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3640], rax
                        .section         .rodata
.Lrkfn225:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]                         # fn
                        lea              rsi, [rbp + 3632]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 104
                                                                                        je    n57_call_builtin_prolog_α
                                                                                        jmp   n47_lit_string_α
n46_call_builtin_prolog_β:
                                                                                        jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 3440], 2                      # result
                        mov              dword ptr [rbp + 3444], 13
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n48_lit_string_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 3600], 2                      # result
                        mov              dword ptr [rbp + 3604], 6
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n49_var_ref_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n51_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n52_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3544], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3520]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              eax, 104
                                                                                        je    n57_call_builtin_prolog_α
                                                                                        jmp   n53_call_proc_staged_α
n52_call_builtin_prolog_β:
                                                                                        jmp   n57_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_proc_staged_α:
                        mov              qword ptr [rbp + 3408], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_20
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx236_21
.Lx236_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3440]                    # v
                        mov              rdx, qword ptr [rbp + 3448]                    # v
                        call             rt_arg_stage@PLT
.Lx236_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_22
                        mov              rax, qword ptr [rbp + 3504]
                        mov              rdx, qword ptr [rbp + 3512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx236_23
.Lx236_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 3504]                    # v
                        mov              rdx, qword ptr [rbp + 3512]                    # v
                        call             rt_arg_stage@PLT
.Lx236_23:
                        mov              edi, 3                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx236_1
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_3:
                        mov              qword ptr [rbp + 3416], rsp
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax
                                                                                        jne   .Lx236_5
                        mov              qword ptr [rbp + 3408], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_4:
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax
                                                                                        jne   .Lx236_6
                        mov              qword ptr [rbp + 3408], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_1:
                        call             rt_faildescr@PLT
.Lx236_2:
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 104
                                                                                        je    n57_call_builtin_prolog_α
                                                                                        jmp   n54_var_ref_α
n53_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3416]
                                                                                        jmp   qword ptr [rsp]
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          ":/2"
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n55_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx240_20
                        mov              rax, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx240_21
.Lx240_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 3344]                    # v
                        mov              rdx, qword ptr [rbp + 3352]                    # v
                        call             rt_arg_stage@PLT
.Lx240_21:
                        mov              rdi, qword ptr [rip + .Lx240_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx240_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx240_3]
                        lea              rdx, [rip + .Lx240_4]
                                                                                        jmp   rax
.Lx240_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx240_2
.Lx240_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx240_2
.Lx240_1:
                        call             rt_faildescr@PLT
.Lx240_2:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 104
                                                                                        je    n53_call_proc_staged_β
                                                                                        jmp   n56_suspend_α
n55_call_proc_staged_β:
                                                                                        jmp   n53_call_proc_staged_β
.Lx240_0:
                        .quad            .Lx240_0_s
.Lx240_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n56_suspend_α:
                        lea              rax, [rip + n56_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n56_suspend_β:
                                                                                        jmp   n55_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3280]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n58_var_ref_α
n57_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 3248], 2                      # result
                        mov              dword ptr [rbp + 3252], 6
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n60_call_builtin_prolog_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3200]
                        mov              rsi, qword ptr [rip + .Lx247_2]
                                                                                        jmp   .Lx247_3
.Lx247_2:
                        .quad            .Lx247_2_s
.Lx247_2_s:
                        .string          "clause"
.Lx247_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_builtin_prolog_α
                                                                                        jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 3168], 2                      # result
                        mov              dword ptr [rbp + 3172], 2
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n63_var_ref_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 3072], 2                      # result
                        mov              dword ptr [rbp + 3076], 4
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n65_call_builtin_prolog_α
.Lx253_0:
                        .quad            .Lx253_0_s
.Lx253_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3112], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3104]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_builtin_prolog_α
                                                                                        jmp   n66_call_builtin_prolog_α
n65_call_builtin_prolog_β:
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3032], rax
                        lea              rdi, [rbp + 3008]
                        lea              r8, [rbp + 3008]
.Lx255_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx255_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_41
                        cmp              esi, 1
                                                                                        jne   .Lx255_55
                        mov              r8, rax
                                                                                        jmp   .Lx255_40
.Lx255_55:
                        cmp              esi, 2
                                                                                        jne   .Lx255_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx255_41
                        mov              r8, rax
                                                                                        jmp   .Lx255_40
.Lx255_56:
                        cmp              eax, 72
                                                                                        jne   .Lx255_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_41
                        cmp              rax, r8
                                                                                        je    .Lx255_41
                        mov              r8, rax
                                                                                        jmp   .Lx255_40
.Lx255_41:
                        lea              r9, [rbp + 3024]
.Lx255_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx255_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_43
                        cmp              esi, 1
                                                                                        jne   .Lx255_57
                        mov              r9, rax
                                                                                        jmp   .Lx255_42
.Lx255_57:
                        cmp              esi, 2
                                                                                        jne   .Lx255_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx255_43
                        mov              r9, rax
                                                                                        jmp   .Lx255_42
.Lx255_58:
                        cmp              eax, 72
                                                                                        jne   .Lx255_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx255_43
                        cmp              rax, r9
                                                                                        je    .Lx255_43
                        mov              r9, rax
                                                                                        jmp   .Lx255_42
.Lx255_43:
                        cmp              r8, r9
                                                                                        je    .Lx255_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx255_44
                        cmp              eax, 104
                                                                                        je    .Lx255_44
                        cmp              eax, 72
                                                                                        jne   .Lx255_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx255_44
                                                                                        jmp   .Lx255_45
.Lx255_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx255_53
                        cmp              eax, 104
                                                                                        je    .Lx255_53
                        cmp              eax, 72
                                                                                        jne   .Lx255_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx255_53
                                                                                        jmp   .Lx255_46
.Lx255_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx255_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx255_53
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
                                                                                        jmp   .Lx255_51
.Lx255_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx255_47
                        cmp              eax, 104
                                                                                        je    .Lx255_47
                        cmp              eax, 72
                                                                                        jne   .Lx255_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx255_47
                                                                                        jmp   .Lx255_48
.Lx255_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx255_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx255_53
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
                                                                                        jmp   .Lx255_51
.Lx255_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx255_49
                        cmp              edx, 80
                                                                                        je    .Lx255_53
                                                                                        jmp   .Lx255_52
.Lx255_49:
                        cmp              edx, 80
                                                                                        je    .Lx255_52
                        cmp              ecx, 5
                                                                                        je    .Lx255_53
                        cmp              edx, 5
                                                                                        je    .Lx255_53
                        cmp              ecx, 3
                                                                                        jne   .Lx255_50
                        cmp              edx, 3
                                                                                        jne   .Lx255_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx255_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx255_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx255_51
                                                                                        jmp   .Lx255_52
.Lx255_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx255_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx255_53
.Lx255_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx255_54
.Lx255_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx255_54
.Lx255_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx255_54:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_builtin_prolog_α
                                                                                        jmp   n67_lit_string_α
n66_call_builtin_prolog_β:
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 2976], 2                      # result
                        mov              dword ptr [rbp + 2980], 8
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n68_call_builtin_prolog_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n68_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn258:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn258]                         # fn
                        lea              rsi, [rbp + 2960]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_builtin_prolog_α
                                                                                        jmp   n69_lit_string_α
n68_call_builtin_prolog_β:
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 2896], 2                      # result
                        mov              dword ptr [rbp + 2900], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n70_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 2784], 2                      # result
                        mov              dword ptr [rbp + 2788], 13
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n71_var_ref_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2872], rax
                        lea              rdi, [rbp + 2832]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_builtin_prolog_α
                                                                                        jmp   n73_var_ref_α
n72_call_builtin_prolog_β:
                                                                                        jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n75_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_20
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx269_21
.Lx269_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2816]                    # v
                        mov              rdx, qword ptr [rbp + 2824]                    # v
                        call             rt_arg_stage@PLT
.Lx269_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_22
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx269_23
.Lx269_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 2912]                    # v
                        mov              rdx, qword ptr [rbp + 2920]                    # v
                        call             rt_arg_stage@PLT
.Lx269_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_24
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx269_25
.Lx269_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 2928]                    # v
                        mov              rdx, qword ptr [rbp + 2936]                    # v
                        call             rt_arg_stage@PLT
.Lx269_25:
                        mov              rdi, qword ptr [rip + .Lx269_0]                # name
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx269_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4]
                                                                                        jmp   rax
.Lx269_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_1:
                        call             rt_faildescr@PLT
.Lx269_2:
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 104
                                                                                        je    n79_call_builtin_prolog_α
                                                                                        jmp   n76_var_ref_α
n75_call_proc_staged_β:
                                                                                        jmp   n79_call_builtin_prolog_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n77_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx273_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx273_21
.Lx273_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2688]                    # v
                        mov              rdx, qword ptr [rbp + 2696]                    # v
                        call             rt_arg_stage@PLT
.Lx273_21:
                        mov              rdi, qword ptr [rip + .Lx273_0]                # name
                        mov              esi, 1                                         # nargs
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
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 104
                                                                                        je    n75_call_proc_staged_β
                                                                                        jmp   n78_suspend_α
n77_call_proc_staged_β:
                                                                                        jmp   n75_call_proc_staged_β
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n78_suspend_α:
                        lea              rax, [rip + n78_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n78_suspend_β:
                                                                                        jmp   n77_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n80_var_ref_α
n79_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], 8
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n82_call_builtin_prolog_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "qcontrol"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              rsi, qword ptr [rip + .Lx280_2]
                                                                                        jmp   .Lx280_3
.Lx280_2:
                        .quad            .Lx280_2_s
.Lx280_2_s:
                        .string          "qcontrol"
.Lx280_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 104
                                                                                        je    n97_call_builtin_prolog_α
                                                                                        jmp   n83_var_ref_α
n82_call_builtin_prolog_β:
                                                                                        jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n84_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 2512], 2                      # result
                        mov              dword ptr [rbp + 2516], 3
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n85_lit_string_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 2432], 2                      # result
                        mov              dword ptr [rbp + 2436], 2
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n86_var_ref_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n87_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 2336], 2                      # result
                        mov              dword ptr [rbp + 2340], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n88_lit_integer_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n89_lit_string_α
.Lx288_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 2224], 2                      # result
                        mov              dword ptr [rbp + 2228], 2
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n90_call_builtin_prolog_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n91_call_builtin_prolog_α
n90_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n92_call_builtin_prolog_α
n91_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 104
                                                                                        je    n97_call_builtin_prolog_α
                                                                                        jmp   n93_call_builtin_prolog_α
n92_call_builtin_prolog_β:
                                                                                        jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2160]
                        lea              r8, [rbp + 2160]
.Lx293_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx293_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        cmp              esi, 1
                                                                                        jne   .Lx293_55
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_55:
                        cmp              esi, 2
                                                                                        jne   .Lx293_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_56:
                        cmp              eax, 72
                                                                                        jne   .Lx293_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_41
                        cmp              rax, r8
                                                                                        je    .Lx293_41
                        mov              r8, rax
                                                                                        jmp   .Lx293_40
.Lx293_41:
                        lea              r9, [rbp + 2176]
.Lx293_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx293_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        cmp              esi, 1
                                                                                        jne   .Lx293_57
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_57:
                        cmp              esi, 2
                                                                                        jne   .Lx293_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_58:
                        cmp              eax, 72
                                                                                        jne   .Lx293_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx293_43
                        cmp              rax, r9
                                                                                        je    .Lx293_43
                        mov              r9, rax
                                                                                        jmp   .Lx293_42
.Lx293_43:
                        cmp              r8, r9
                                                                                        je    .Lx293_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_44
                        cmp              eax, 104
                                                                                        je    .Lx293_44
                        cmp              eax, 72
                                                                                        jne   .Lx293_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx293_44
                                                                                        jmp   .Lx293_45
.Lx293_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_53
                        cmp              eax, 104
                                                                                        je    .Lx293_53
                        cmp              eax, 72
                                                                                        jne   .Lx293_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx293_53
                                                                                        jmp   .Lx293_46
.Lx293_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx293_53
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
                                                                                        jmp   .Lx293_51
.Lx293_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx293_47
                        cmp              eax, 104
                                                                                        je    .Lx293_47
                        cmp              eax, 72
                                                                                        jne   .Lx293_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx293_47
                                                                                        jmp   .Lx293_48
.Lx293_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx293_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx293_53
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
                                                                                        jmp   .Lx293_51
.Lx293_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx293_49
                        cmp              edx, 80
                                                                                        je    .Lx293_53
                                                                                        jmp   .Lx293_52
.Lx293_49:
                        cmp              edx, 80
                                                                                        je    .Lx293_52
                        cmp              ecx, 5
                                                                                        je    .Lx293_53
                        cmp              edx, 5
                                                                                        je    .Lx293_53
                        cmp              ecx, 3
                                                                                        jne   .Lx293_50
                        cmp              edx, 3
                                                                                        jne   .Lx293_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx293_51
                                                                                        jmp   .Lx293_52
.Lx293_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx293_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx293_53
.Lx293_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx293_54
.Lx293_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx293_54
.Lx293_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx293_54:
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 104
                                                                                        je    n97_call_builtin_prolog_α
                                                                                        jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                                        jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n95_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α:
                        mov              qword ptr [rbp + 2096], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx297_20
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx297_21
.Lx297_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 2128]                    # v
                        mov              rdx, qword ptr [rbp + 2136]                    # v
                        call             rt_arg_stage@PLT
.Lx297_21:
                        mov              edi, 8                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx297_1
                        lea              rcx, [rip + .Lx297_3]
                        lea              rdx, [rip + .Lx297_4]
                                                                                        jmp   rax
.Lx297_3:
                        mov              qword ptr [rbp + 2104], rsp
                        mov              rax, qword ptr [rbp + 2096]
                        test             rax, rax
                                                                                        jne   .Lx297_5
                        mov              qword ptr [rbp + 2096], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx297_2
.Lx297_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx297_2
.Lx297_4:
                        mov              rax, qword ptr [rbp + 2096]
                        test             rax, rax
                                                                                        jne   .Lx297_6
                        mov              qword ptr [rbp + 2096], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx297_2
.Lx297_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx297_2
.Lx297_1:
                        call             rt_faildescr@PLT
.Lx297_2:
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
                                                                                        je    n97_call_builtin_prolog_α
                                                                                        jmp   n96_suspend_α
n95_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2104]
                                                                                        jmp   qword ptr [rsp]
.Lx297_0:
                        .quad            .Lx297_0_s
.Lx297_0_s:
                        .string          "t/1"
#-----------------------------------------------------------------------------------------------------------------------
n96_suspend_α:
                        lea              rax, [rip + n96_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n96_suspend_β:
                                                                                        jmp   n95_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n98_var_ref_α
n97_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n99_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 2016], 2                      # result
                        mov              dword ptr [rbp + 2020], 5
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n100_call_builtin_prolog_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n100_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              rsi, qword ptr [rip + .Lx304_2]
                                                                                        jmp   .Lx304_3
.Lx304_2:
                        .quad            .Lx304_2_s
.Lx304_2_s:
                        .string          "mqual"
.Lx304_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n101_var_ref_α
n100_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 1936], 2                      # result
                        mov              dword ptr [rbp + 1940], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n103_lit_string_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 1840], 2                      # result
                        mov              dword ptr [rbp + 1844], 3
                        mov              rax, qword ptr [rip + .Lx308_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n104_lit_string_α
.Lx308_0:
                        .quad            .Lx308_0_s
.Lx308_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 1760], 2                      # result
                        mov              dword ptr [rbp + 1764], 14
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n105_call_builtin_prolog_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n106_lit_string_α
n105_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 1744], 2                      # result
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n107_lit_string_α
.Lx311_0:
                        .quad            .Lx311_0_s
.Lx311_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 1648], 2                      # result
                        mov              dword ptr [rbp + 1652], 5
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n108_lit_string_α
.Lx312_0:
                        .quad            .Lx312_0_s
.Lx312_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1568], 2                      # result
                        mov              dword ptr [rbp + 1572], 10
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n109_lit_string_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 1456], 2                      # result
                        mov              dword ptr [rbp + 1460], 12
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n110_var_ref_α
.Lx314_0:
                        .quad            .Lx314_0_s
.Lx314_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n113_lit_string_α
n112_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 1440], 2                      # result
                        mov              dword ptr [rbp + 1444], 2
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n114_call_builtin_prolog_α
.Lx319_0:
                        .quad            .Lx319_0_s
.Lx319_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n115_call_builtin_prolog_α
n114_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n116_call_builtin_prolog_α
n115_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1392]
                        lea              r8, [rbp + 1392]
.Lx322_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx322_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx322_41
                        cmp              esi, 1
                                                                                        jne   .Lx322_55
                        mov              r8, rax
                                                                                        jmp   .Lx322_40
.Lx322_55:
                        cmp              esi, 2
                                                                                        jne   .Lx322_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx322_41
                        mov              r8, rax
                                                                                        jmp   .Lx322_40
.Lx322_56:
                        cmp              eax, 72
                                                                                        jne   .Lx322_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx322_41
                        cmp              rax, r8
                                                                                        je    .Lx322_41
                        mov              r8, rax
                                                                                        jmp   .Lx322_40
.Lx322_41:
                        lea              r9, [rbp + 1408]
.Lx322_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx322_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx322_43
                        cmp              esi, 1
                                                                                        jne   .Lx322_57
                        mov              r9, rax
                                                                                        jmp   .Lx322_42
.Lx322_57:
                        cmp              esi, 2
                                                                                        jne   .Lx322_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx322_43
                        mov              r9, rax
                                                                                        jmp   .Lx322_42
.Lx322_58:
                        cmp              eax, 72
                                                                                        jne   .Lx322_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx322_43
                        cmp              rax, r9
                                                                                        je    .Lx322_43
                        mov              r9, rax
                                                                                        jmp   .Lx322_42
.Lx322_43:
                        cmp              r8, r9
                                                                                        je    .Lx322_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx322_44
                        cmp              eax, 104
                                                                                        je    .Lx322_44
                        cmp              eax, 72
                                                                                        jne   .Lx322_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx322_44
                                                                                        jmp   .Lx322_45
.Lx322_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx322_53
                        cmp              eax, 104
                                                                                        je    .Lx322_53
                        cmp              eax, 72
                                                                                        jne   .Lx322_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx322_53
                                                                                        jmp   .Lx322_46
.Lx322_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx322_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx322_53
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
                                                                                        jmp   .Lx322_51
.Lx322_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx322_47
                        cmp              eax, 104
                                                                                        je    .Lx322_47
                        cmp              eax, 72
                                                                                        jne   .Lx322_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx322_47
                                                                                        jmp   .Lx322_48
.Lx322_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx322_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx322_53
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
                                                                                        jmp   .Lx322_51
.Lx322_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx322_49
                        cmp              edx, 80
                                                                                        je    .Lx322_53
                                                                                        jmp   .Lx322_52
.Lx322_49:
                        cmp              edx, 80
                                                                                        je    .Lx322_52
                        cmp              ecx, 5
                                                                                        je    .Lx322_53
                        cmp              edx, 5
                                                                                        je    .Lx322_53
                        cmp              ecx, 3
                                                                                        jne   .Lx322_50
                        cmp              edx, 3
                                                                                        jne   .Lx322_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx322_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx322_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx322_51
                                                                                        jmp   .Lx322_52
.Lx322_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx322_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx322_53
.Lx322_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx322_54
.Lx322_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx322_54
.Lx322_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx322_54:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n117_var_ref_α
n116_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n118_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 1360], 2                      # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx325_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n119_lit_string_α
.Lx325_0:
                        .quad            .Lx325_0_s
.Lx325_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n120_var_ref_α
.Lx326_0:
                        .quad            .Lx326_0_s
.Lx326_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n122_call_builtin_prolog_α
n121_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1200]
                        lea              r8, [rbp + 1200]
.Lx330_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx330_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              esi, 1
                                                                                        jne   .Lx330_55
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_55:
                        cmp              esi, 2
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_56:
                        cmp              eax, 72
                                                                                        jne   .Lx330_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_41
                        cmp              rax, r8
                                                                                        je    .Lx330_41
                        mov              r8, rax
                                                                                        jmp   .Lx330_40
.Lx330_41:
                        lea              r9, [rbp + 1216]
.Lx330_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx330_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              esi, 1
                                                                                        jne   .Lx330_57
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_57:
                        cmp              esi, 2
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_58:
                        cmp              eax, 72
                                                                                        jne   .Lx330_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx330_43
                        cmp              rax, r9
                                                                                        je    .Lx330_43
                        mov              r9, rax
                                                                                        jmp   .Lx330_42
.Lx330_43:
                        cmp              r8, r9
                                                                                        je    .Lx330_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_44
                        cmp              eax, 104
                                                                                        je    .Lx330_44
                        cmp              eax, 72
                                                                                        jne   .Lx330_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx330_44
                                                                                        jmp   .Lx330_45
.Lx330_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_53
                        cmp              eax, 104
                                                                                        je    .Lx330_53
                        cmp              eax, 72
                                                                                        jne   .Lx330_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_46
.Lx330_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx330_47
                        cmp              eax, 104
                                                                                        je    .Lx330_47
                        cmp              eax, 72
                                                                                        jne   .Lx330_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx330_47
                                                                                        jmp   .Lx330_48
.Lx330_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx330_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx330_53
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
                                                                                        jmp   .Lx330_51
.Lx330_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx330_49
                        cmp              edx, 80
                                                                                        je    .Lx330_53
                                                                                        jmp   .Lx330_52
.Lx330_49:
                        cmp              edx, 80
                                                                                        je    .Lx330_52
                        cmp              ecx, 5
                                                                                        je    .Lx330_53
                        cmp              edx, 5
                                                                                        je    .Lx330_53
                        cmp              ecx, 3
                                                                                        jne   .Lx330_50
                        cmp              edx, 3
                                                                                        jne   .Lx330_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx330_51
                                                                                        jmp   .Lx330_52
.Lx330_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx330_53
.Lx330_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx330_54
.Lx330_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx330_54
.Lx330_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx330_54:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n123_var_ref_α
n122_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n124_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n126_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n126_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_20
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx338_21
.Lx338_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1136]                    # v
                        mov              rdx, qword ptr [rbp + 1144]                    # v
                        call             rt_arg_stage@PLT
.Lx338_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx338_23
.Lx338_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1152]                    # v
                        mov              rdx, qword ptr [rbp + 1160]                    # v
                        call             rt_arg_stage@PLT
.Lx338_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_24
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx338_25
.Lx338_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 1168]                    # v
                        mov              rdx, qword ptr [rbp + 1176]                    # v
                        call             rt_arg_stage@PLT
.Lx338_25:
                        mov              rdi, qword ptr [rip + .Lx338_0]                # name
                        mov              esi, 3                                         # nargs
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
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n127_suspend_α
n126_call_proc_staged_β:
                                                                                        jmp   n128_call_builtin_prolog_α
.Lx338_0:
                        .quad            .Lx338_0_s
.Lx338_0_s:
                        .string          "strip_module/3"
#-----------------------------------------------------------------------------------------------------------------------
n127_suspend_α:
                        lea              rax, [rip + n127_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n127_suspend_β:
                                                                                        jmp   n126_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n129_var_ref_α
n128_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 5
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n131_call_builtin_prolog_α
.Lx344_0:
                        .quad            .Lx344_0_s
.Lx344_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              rsi, qword ptr [rip + .Lx345_2]
                                                                                        jmp   .Lx345_3
.Lx345_2:
                        .quad            .Lx345_2_s
.Lx345_2_s:
                        .string          "mqual"
.Lx345_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n132_var_ref_α
n131_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n133_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n134_lit_string_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 3
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n135_lit_string_α
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 14
                        mov              rax, qword ptr [rip + .Lx350_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n136_call_builtin_prolog_α
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n136_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n137_lit_string_α
n136_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx352_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n138_lit_string_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 5
                        mov              rax, qword ptr [rip + .Lx353_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n139_lit_string_α
.Lx353_0:
                        .quad            .Lx353_0_s
.Lx353_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 10
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n140_lit_string_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 12
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n141_var_ref_α
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n142_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n142_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n143_call_builtin_prolog_α
n142_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n144_lit_string_α
n143_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 2
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n145_call_builtin_prolog_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n145_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n146_call_builtin_prolog_α
n145_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n147_call_builtin_prolog_α
n146_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx363_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx363_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx363_41
                        cmp              esi, 1
                                                                                        jne   .Lx363_55
                        mov              r8, rax
                                                                                        jmp   .Lx363_40
.Lx363_55:
                        cmp              esi, 2
                                                                                        jne   .Lx363_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx363_41
                        mov              r8, rax
                                                                                        jmp   .Lx363_40
.Lx363_56:
                        cmp              eax, 72
                                                                                        jne   .Lx363_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx363_41
                        cmp              rax, r8
                                                                                        je    .Lx363_41
                        mov              r8, rax
                                                                                        jmp   .Lx363_40
.Lx363_41:
                        lea              r9, [rbp + 400]
.Lx363_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx363_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx363_43
                        cmp              esi, 1
                                                                                        jne   .Lx363_57
                        mov              r9, rax
                                                                                        jmp   .Lx363_42
.Lx363_57:
                        cmp              esi, 2
                                                                                        jne   .Lx363_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx363_43
                        mov              r9, rax
                                                                                        jmp   .Lx363_42
.Lx363_58:
                        cmp              eax, 72
                                                                                        jne   .Lx363_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx363_43
                        cmp              rax, r9
                                                                                        je    .Lx363_43
                        mov              r9, rax
                                                                                        jmp   .Lx363_42
.Lx363_43:
                        cmp              r8, r9
                                                                                        je    .Lx363_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx363_44
                        cmp              eax, 104
                                                                                        je    .Lx363_44
                        cmp              eax, 72
                                                                                        jne   .Lx363_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx363_44
                                                                                        jmp   .Lx363_45
.Lx363_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx363_53
                        cmp              eax, 104
                                                                                        je    .Lx363_53
                        cmp              eax, 72
                                                                                        jne   .Lx363_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx363_53
                                                                                        jmp   .Lx363_46
.Lx363_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx363_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx363_53
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
                                                                                        jmp   .Lx363_51
.Lx363_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx363_47
                        cmp              eax, 104
                                                                                        je    .Lx363_47
                        cmp              eax, 72
                                                                                        jne   .Lx363_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx363_47
                                                                                        jmp   .Lx363_48
.Lx363_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx363_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx363_53
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
                                                                                        jmp   .Lx363_51
.Lx363_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx363_49
                        cmp              edx, 80
                                                                                        je    .Lx363_53
                                                                                        jmp   .Lx363_52
.Lx363_49:
                        cmp              edx, 80
                                                                                        je    .Lx363_52
                        cmp              ecx, 5
                                                                                        je    .Lx363_53
                        cmp              edx, 5
                                                                                        je    .Lx363_53
                        cmp              ecx, 3
                                                                                        jne   .Lx363_50
                        cmp              edx, 3
                                                                                        jne   .Lx363_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx363_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx363_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx363_51
                                                                                        jmp   .Lx363_52
.Lx363_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx363_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx363_53
.Lx363_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx363_54
.Lx363_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx363_54
.Lx363_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx363_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n148_var_ref_α
n147_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n149_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n150_lit_string_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx367_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n151_var_ref_α
.Lx367_0:
                        .quad            .Lx367_0_s
.Lx367_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n152_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_prolog_α:
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
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n153_call_builtin_prolog_α
n152_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx371_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx371_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx371_41
                        cmp              rax, r8
                                                                                        je    .Lx371_41
                        mov              r8, rax
                                                                                        jmp   .Lx371_40
.Lx371_41:
                        lea              r9, [rbp + 208]
.Lx371_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx371_44
                        cmp              eax, 72
                                                                                        jne   .Lx371_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx371_44
                                                                                        jmp   .Lx371_45
.Lx371_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx371_53
                        cmp              eax, 104
                                                                                        je    .Lx371_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx371_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx371_49
                        cmp              edx, 80
                                                                                        je    .Lx371_53
                                                                                        jmp   .Lx371_52
.Lx371_49:
                        cmp              edx, 80
                                                                                        je    .Lx371_52
                        cmp              ecx, 5
                                                                                        je    .Lx371_53
                        cmp              edx, 5
                                                                                        je    .Lx371_53
                        cmp              ecx, 3
                                                                                        jne   .Lx371_50
                        cmp              edx, 3
                                                                                        jne   .Lx371_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx371_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx371_54
.Lx371_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx371_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n154_var_ref_α
n153_call_builtin_prolog_β:
                                                                                        jmp   n157_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n155_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        call             proc_mqual$2F1_dcα
                                                                                        jmp   .Lx375_2
.Lx375_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n157_call_builtin_prolog_α
                                                                                        jmp   n156_suspend_α
n155_call_proc_staged_β:
                                                                                        jmp   n157_call_builtin_prolog_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          "mqual/1"
#-----------------------------------------------------------------------------------------------------------------------
n156_suspend_α:
                        lea              rax, [rip + n156_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n156_suspend_β:
                                                                                        jmp   n155_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n157_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 4976]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n397_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
#-----------------------------------------------------------------------------------------------------------------------
n379_call_builtin_prolog_α:
                        sub              rsp, 464
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx615_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx615_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx615_101
.Lx615_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx615_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx615_240
                        add              rsp, 464
                                                                                        jmp   proc_pj_test$2F4_ω
.Lx615_240:
                                                                                        jmp   n380_var_ref_α
n379_call_builtin_prolog_β:
                        add              rsp, 464
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7808], rax
                        mov              qword ptr [rbp + 7816], rdx
                                                                                        jmp   n381_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:
                        mov              qword ptr [rbp + 7824], 2                      # result
                        mov              dword ptr [rbp + 7828], 6
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 7832], rax
                                                                                        jmp   n382_call_builtin_prolog_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7808]
                        mov              qword ptr [rbp + 7776], rax
                        mov              rax, qword ptr [rbp + 7816]
                        mov              qword ptr [rbp + 7784], rax
                        lea              rdi, [rbp + 7776]
                        mov              rsi, qword ptr [rip + .Lx619_2]
                                                                                        jmp   .Lx619_3
.Lx619_2:
                        .quad            .Lx619_2_s
.Lx619_2_s:
                        .string          "module"
.Lx619_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7760], rax
                        mov              qword ptr [rbp + 7768], rdx
                        cmp              eax, 104
                                                                                        je    n398_call_builtin_prolog_α
                                                                                        jmp   n383_var_ref_α
n382_call_builtin_prolog_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                                                                                        jmp   n384_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 7744], 2                      # result
                        mov              dword ptr [rbp + 7748], 5
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rbp + 7752], rax
                                                                                        jmp   n385_call_builtin_prolog_α
.Lx622_0:
                        .quad            .Lx622_0_s
.Lx622_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7704], rax
                        lea              rdi, [rbp + 7696]
                        mov              rsi, qword ptr [rip + .Lx623_2]
                                                                                        jmp   .Lx623_3
.Lx623_2:
                        .quad            .Lx623_2_s
.Lx623_2_s:
                        .string          "cross"
.Lx623_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        cmp              eax, 104
                                                                                        je    n398_call_builtin_prolog_α
                                                                                        jmp   n386_var_ref_α
n385_call_builtin_prolog_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                                                                                        jmp   n387_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:
                        mov              qword ptr [rbp + 7664], 2                      # result
                        mov              dword ptr [rbp + 7668], 2
                        mov              rax, qword ptr [rip + .Lx626_0]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n388_var_ref_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n388_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n389_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:
                        mov              qword ptr [rbp + 7568], 2                      # result
                        mov              dword ptr [rbp + 7572], 11
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 7576], rax
                                                                                        jmp   n390_call_builtin_prolog_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 7600], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 7608], rax
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7616], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7624], rax
                        mov              rax, qword ptr [rbp + 7568]
                        mov              qword ptr [rbp + 7632], rax
                        mov              rax, qword ptr [rbp + 7576]
                        mov              qword ptr [rbp + 7640], rax
                        lea              rdi, [rbp + 7600]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7584], rax
                        mov              qword ptr [rbp + 7592], rdx
                        cmp              eax, 104
                                                                                        je    n398_call_builtin_prolog_α
                                                                                        jmp   n391_call_builtin_prolog_α
n390_call_builtin_prolog_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7504], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7512], rax
                        mov              rax, qword ptr [rbp + 7584]
                        mov              qword ptr [rbp + 7520], rax
                        mov              rax, qword ptr [rbp + 7592]
                        mov              qword ptr [rbp + 7528], rax
                        lea              rdi, [rbp + 7504]
                        lea              r8, [rbp + 7504]
.Lx631_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx631_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx631_41
                        cmp              esi, 1
                                                                                        jne   .Lx631_55
                        mov              r8, rax
                                                                                        jmp   .Lx631_40
.Lx631_55:
                        cmp              esi, 2
                                                                                        jne   .Lx631_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx631_41
                        mov              r8, rax
                                                                                        jmp   .Lx631_40
.Lx631_56:
                        cmp              eax, 72
                                                                                        jne   .Lx631_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx631_41
                        cmp              rax, r8
                                                                                        je    .Lx631_41
                        mov              r8, rax
                                                                                        jmp   .Lx631_40
.Lx631_41:
                        lea              r9, [rbp + 7520]
.Lx631_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx631_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx631_43
                        cmp              esi, 1
                                                                                        jne   .Lx631_57
                        mov              r9, rax
                                                                                        jmp   .Lx631_42
.Lx631_57:
                        cmp              esi, 2
                                                                                        jne   .Lx631_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx631_43
                        mov              r9, rax
                                                                                        jmp   .Lx631_42
.Lx631_58:
                        cmp              eax, 72
                                                                                        jne   .Lx631_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx631_43
                        cmp              rax, r9
                                                                                        je    .Lx631_43
                        mov              r9, rax
                                                                                        jmp   .Lx631_42
.Lx631_43:
                        cmp              r8, r9
                                                                                        je    .Lx631_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx631_44
                        cmp              eax, 104
                                                                                        je    .Lx631_44
                        cmp              eax, 72
                                                                                        jne   .Lx631_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx631_44
                                                                                        jmp   .Lx631_45
.Lx631_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx631_53
                        cmp              eax, 104
                                                                                        je    .Lx631_53
                        cmp              eax, 72
                                                                                        jne   .Lx631_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx631_53
                                                                                        jmp   .Lx631_46
.Lx631_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx631_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx631_53
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
                                                                                        jmp   .Lx631_51
.Lx631_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx631_47
                        cmp              eax, 104
                                                                                        je    .Lx631_47
                        cmp              eax, 72
                                                                                        jne   .Lx631_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx631_47
                                                                                        jmp   .Lx631_48
.Lx631_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx631_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx631_53
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
                                                                                        jmp   .Lx631_51
.Lx631_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx631_49
                        cmp              edx, 80
                                                                                        je    .Lx631_53
                                                                                        jmp   .Lx631_52
.Lx631_49:
                        cmp              edx, 80
                                                                                        je    .Lx631_52
                        cmp              ecx, 5
                                                                                        je    .Lx631_53
                        cmp              edx, 5
                                                                                        je    .Lx631_53
                        cmp              ecx, 3
                                                                                        jne   .Lx631_50
                        cmp              edx, 3
                                                                                        jne   .Lx631_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx631_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx631_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx631_51
                                                                                        jmp   .Lx631_52
.Lx631_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx631_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx631_53
.Lx631_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx631_54
.Lx631_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx631_54
.Lx631_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx631_54:
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                        cmp              eax, 104
                                                                                        je    n398_call_builtin_prolog_α
                                                                                        jmp   n392_var_ref_α
n391_call_builtin_prolog_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n392_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   n393_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:
                        mov              qword ptr [rbp + 7472], 2                      # result
                        mov              dword ptr [rbp + 7476], 5
                        mov              rax, qword ptr [rip + .Lx634_0]
                        mov              qword ptr [rbp + 7480], rax
                                                                                        jmp   n394_var_ref_α
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   n395_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n395_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7472]
                        mov              qword ptr [rbp + 7424], rax
                        mov              rax, qword ptr [rbp + 7480]
                        mov              qword ptr [rbp + 7432], rax
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 7440], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 7448], rax
                        lea              rdi, [rbp + 7424]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx
                        cmp              eax, 104
                                                                                        je    n398_call_builtin_prolog_α
                                                                                        jmp   n396_call_builtin_prolog_α
n395_call_builtin_prolog_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 7344], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 7352], rax
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7360], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7368], rax
                        lea              rdi, [rbp + 7344]
                        lea              r8, [rbp + 7344]
.Lx638_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx638_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx638_41
                        cmp              esi, 1
                                                                                        jne   .Lx638_55
                        mov              r8, rax
                                                                                        jmp   .Lx638_40
.Lx638_55:
                        cmp              esi, 2
                                                                                        jne   .Lx638_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx638_41
                        mov              r8, rax
                                                                                        jmp   .Lx638_40
.Lx638_56:
                        cmp              eax, 72
                                                                                        jne   .Lx638_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx638_41
                        cmp              rax, r8
                                                                                        je    .Lx638_41
                        mov              r8, rax
                                                                                        jmp   .Lx638_40
.Lx638_41:
                        lea              r9, [rbp + 7360]
.Lx638_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx638_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx638_43
                        cmp              esi, 1
                                                                                        jne   .Lx638_57
                        mov              r9, rax
                                                                                        jmp   .Lx638_42
.Lx638_57:
                        cmp              esi, 2
                                                                                        jne   .Lx638_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx638_43
                        mov              r9, rax
                                                                                        jmp   .Lx638_42
.Lx638_58:
                        cmp              eax, 72
                                                                                        jne   .Lx638_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx638_43
                        cmp              rax, r9
                                                                                        je    .Lx638_43
                        mov              r9, rax
                                                                                        jmp   .Lx638_42
.Lx638_43:
                        cmp              r8, r9
                                                                                        je    .Lx638_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx638_44
                        cmp              eax, 104
                                                                                        je    .Lx638_44
                        cmp              eax, 72
                                                                                        jne   .Lx638_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx638_44
                                                                                        jmp   .Lx638_45
.Lx638_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx638_53
                        cmp              eax, 104
                                                                                        je    .Lx638_53
                        cmp              eax, 72
                                                                                        jne   .Lx638_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx638_53
                                                                                        jmp   .Lx638_46
.Lx638_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx638_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx638_53
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
                                                                                        jmp   .Lx638_51
.Lx638_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx638_47
                        cmp              eax, 104
                                                                                        je    .Lx638_47
                        cmp              eax, 72
                                                                                        jne   .Lx638_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx638_47
                                                                                        jmp   .Lx638_48
.Lx638_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx638_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx638_53
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
                                                                                        jmp   .Lx638_51
.Lx638_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx638_49
                        cmp              edx, 80
                                                                                        je    .Lx638_53
                                                                                        jmp   .Lx638_52
.Lx638_49:
                        cmp              edx, 80
                                                                                        je    .Lx638_52
                        cmp              ecx, 5
                                                                                        je    .Lx638_53
                        cmp              edx, 5
                                                                                        je    .Lx638_53
                        cmp              ecx, 3
                                                                                        jne   .Lx638_50
                        cmp              edx, 3
                                                                                        jne   .Lx638_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx638_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx638_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx638_51
                                                                                        jmp   .Lx638_52
.Lx638_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx638_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx638_53
.Lx638_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx638_54
.Lx638_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx638_54
.Lx638_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx638_54:
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx
                        cmp              eax, 104
                                                                                        je    n398_call_builtin_prolog_α
                                                                                        jmp   n397_suspend_α
n396_call_builtin_prolog_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n397_suspend_α:
                        lea              rax, [rip + n397_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 464
                                                                                        jmp   proc_pj_test$2F4_γ
n397_suspend_β:
                                                                                        jmp   n398_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 7296], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 7304], rax
                        lea              rdi, [rbp + 7296]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n399_var_ref_α
n398_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx
                                                                                        jmp   n400_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 7264], 2                      # result
                        mov              dword ptr [rbp + 7268], 6
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rbp + 7272], rax
                                                                                        jmp   n401_call_builtin_prolog_α
.Lx644_0:
                        .quad            .Lx644_0_s
.Lx644_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7224], rax
                        lea              rdi, [rbp + 7216]
                        mov              rsi, qword ptr [rip + .Lx645_2]
                                                                                        jmp   .Lx645_3
.Lx645_2:
                        .quad            .Lx645_2_s
.Lx645_2_s:
                        .string          "module"
.Lx645_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_builtin_prolog_α
                                                                                        jmp   n402_var_ref_α
n401_call_builtin_prolog_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                                                                                        jmp   n403_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 7184], 2                      # result
                        mov              dword ptr [rbp + 7188], 6
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 7192], rax
                                                                                        jmp   n404_call_builtin_prolog_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7168]
                        mov              qword ptr [rbp + 7136], rax
                        mov              rax, qword ptr [rbp + 7176]
                        mov              qword ptr [rbp + 7144], rax
                        lea              rdi, [rbp + 7136]
                        mov              rsi, qword ptr [rip + .Lx649_2]
                                                                                        jmp   .Lx649_3
.Lx649_2:
                        .quad            .Lx649_2_s
.Lx649_2_s:
                        .string          "clause"
.Lx649_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_builtin_prolog_α
                                                                                        jmp   n405_var_ref_α
n404_call_builtin_prolog_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                                                                                        jmp   n406_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 7104], 2                      # result
                        mov              dword ptr [rbp + 7108], 2
                        mov              rax, qword ptr [rip + .Lx652_0]
                        mov              qword ptr [rbp + 7112], rax
                                                                                        jmp   n407_var_ref_α
.Lx652_0:
                        .quad            .Lx652_0_s
.Lx652_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                                                                                        jmp   n408_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:
                        mov              qword ptr [rbp + 7008], 2                      # result
                        mov              dword ptr [rbp + 7012], 1
                        mov              rax, qword ptr [rip + .Lx655_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n409_lit_string_α
.Lx655_0:
                        .quad            .Lx655_0_s
.Lx655_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:
                        mov              qword ptr [rbp + 6896], 2                      # result
                        mov              dword ptr [rbp + 6900], 13
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n410_lit_string_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 6912], 2                      # result
                        mov              dword ptr [rbp + 6916], 4
                        mov              rax, qword ptr [rip + .Lx657_0]
                        mov              qword ptr [rbp + 6920], rax
                                                                                        jmp   n411_call_builtin_prolog_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n411_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 6952], rax
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6960], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6968], rax
                        mov              rax, qword ptr [rbp + 6912]
                        mov              qword ptr [rbp + 6976], rax
                        mov              rax, qword ptr [rbp + 6920]
                        mov              qword ptr [rbp + 6984], rax
                        lea              rdi, [rbp + 6944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6928], rax
                        mov              qword ptr [rbp + 6936], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n412_call_builtin_prolog_α
n411_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7048], rax
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 7056], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 7064], rax
                        mov              rax, qword ptr [rbp + 6928]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 6936]
                        mov              qword ptr [rbp + 7080], rax
                        lea              rdi, [rbp + 7040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_builtin_prolog_α
                                                                                        jmp   n413_call_builtin_prolog_α
n412_call_builtin_prolog_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6864]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6872]
                        mov              qword ptr [rbp + 6840], rax
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 6856], rax
                        lea              rdi, [rbp + 6832]
                        lea              r8, [rbp + 6832]
.Lx660_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx660_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx660_41
                        cmp              rax, r8
                                                                                        je    .Lx660_41
                        mov              r8, rax
                                                                                        jmp   .Lx660_40
.Lx660_41:
                        lea              r9, [rbp + 6848]
.Lx660_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx660_44
                        cmp              eax, 72
                                                                                        jne   .Lx660_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx660_44
                                                                                        jmp   .Lx660_45
.Lx660_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx660_53
                        cmp              eax, 104
                                                                                        je    .Lx660_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx660_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx660_49
                        cmp              edx, 80
                                                                                        je    .Lx660_53
                                                                                        jmp   .Lx660_52
.Lx660_49:
                        cmp              edx, 80
                                                                                        je    .Lx660_52
                        cmp              ecx, 5
                                                                                        je    .Lx660_53
                        cmp              edx, 5
                                                                                        je    .Lx660_53
                        cmp              ecx, 3
                                                                                        jne   .Lx660_50
                        cmp              edx, 3
                                                                                        jne   .Lx660_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx660_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx660_54
.Lx660_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx660_54:
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_builtin_prolog_α
                                                                                        jmp   n414_var_ref_α
n413_call_builtin_prolog_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                                                                                        jmp   n415_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:
                        mov              qword ptr [rbp + 6800], 2                      # result
                        mov              dword ptr [rbp + 6804], 1
                        mov              rax, qword ptr [rip + .Lx663_0]
                        mov              qword ptr [rbp + 6808], rax
                                                                                        jmp   n416_lit_string_α
.Lx663_0:
                        .quad            .Lx663_0_s
.Lx663_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 6352], 2                      # result
                        mov              dword ptr [rbp + 6356], 6
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rbp + 6360], rax
                                                                                        jmp   n417_lit_string_α
.Lx664_0:
                        .quad            .Lx664_0_s
.Lx664_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:
                        mov              qword ptr [rbp + 6240], 2                      # result
                        mov              dword ptr [rbp + 6244], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n418_lit_string_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:
                        mov              qword ptr [rbp + 6128], 2                      # result
                        mov              dword ptr [rbp + 6132], 13
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n419_lit_string_α
.Lx666_0:
                        .quad            .Lx666_0_s
.Lx666_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 6144], 2                      # result
                        mov              dword ptr [rbp + 6148], 4
                        mov              rax, qword ptr [rip + .Lx667_0]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n420_call_builtin_prolog_α
.Lx667_0:
                        .quad            .Lx667_0_s
.Lx667_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6176], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6184], rax
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 6200], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 6216], rax
                        lea              rdi, [rbp + 6176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n421_var_ref_α
n420_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                                                                                        jmp   n422_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 6296], rax
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 6312], rax
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6320], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6328], rax
                        lea              rdi, [rbp + 6288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n423_lit_string_α
n422_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:
                        mov              qword ptr [rbp + 6704], 2                      # result
                        mov              dword ptr [rbp + 6708], 1
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rbp + 6712], rax
                                                                                        jmp   n424_lit_string_α
.Lx672_0:
                        .quad            .Lx672_0_s
.Lx672_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:
                        mov              qword ptr [rbp + 6512], 2                      # result
                        mov              dword ptr [rbp + 6516], 6
                        mov              rax, qword ptr [rip + .Lx673_0]
                        mov              qword ptr [rbp + 6520], rax
                                                                                        jmp   n425_var_ref_α
.Lx673_0:
                        .quad            .Lx673_0_s
.Lx673_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n425_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   n426_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n427_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6512]
                        mov              qword ptr [rbp + 6432], rax
                        mov              rax, qword ptr [rbp + 6520]
                        mov              qword ptr [rbp + 6440], rax
                        mov              rax, qword ptr [rbp + 6368]
                        mov              qword ptr [rbp + 6448], rax
                        mov              rax, qword ptr [rbp + 6376]
                        mov              qword ptr [rbp + 6456], rax
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 6464], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 6472], rax
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 6480], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 6488], rax
                        lea              rdi, [rbp + 6432]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n429_lit_string_α
n428_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 6608], 2                      # result
                        mov              dword ptr [rbp + 6612], 5
                        mov              rax, qword ptr [rip + .Lx681_0]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n430_var_ref_α
.Lx681_0:
                        .quad            .Lx681_0_s
.Lx681_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   n431_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n432_call_builtin_prolog_α
n431_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6648], rax
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 6664], rax
                        mov              rax, qword ptr [rbp + 6544]
                        mov              qword ptr [rbp + 6672], rax
                        mov              rax, qword ptr [rbp + 6552]
                        mov              qword ptr [rbp + 6680], rax
                        lea              rdi, [rbp + 6640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n433_call_builtin_prolog_α
n432_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n433_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6744], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6760], rax
                        mov              rax, qword ptr [rbp + 6624]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 6632]
                        mov              qword ptr [rbp + 6776], rax
                        lea              rdi, [rbp + 6736]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 6720], rax
                        mov              qword ptr [rbp + 6728], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_builtin_prolog_α
                                                                                        jmp   n434_call_builtin_prolog_α
n433_call_builtin_prolog_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 6080], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 6088], rax
                        mov              rax, qword ptr [rbp + 6720]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6728]
                        mov              qword ptr [rbp + 6104], rax
                        lea              rdi, [rbp + 6080]
                        lea              r8, [rbp + 6080]
.Lx687_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx687_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_41
                        cmp              esi, 1
                                                                                        jne   .Lx687_55
                        mov              r8, rax
                                                                                        jmp   .Lx687_40
.Lx687_55:
                        cmp              esi, 2
                                                                                        jne   .Lx687_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx687_41
                        mov              r8, rax
                                                                                        jmp   .Lx687_40
.Lx687_56:
                        cmp              eax, 72
                                                                                        jne   .Lx687_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_41
                        cmp              rax, r8
                                                                                        je    .Lx687_41
                        mov              r8, rax
                                                                                        jmp   .Lx687_40
.Lx687_41:
                        lea              r9, [rbp + 6096]
.Lx687_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx687_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_43
                        cmp              esi, 1
                                                                                        jne   .Lx687_57
                        mov              r9, rax
                                                                                        jmp   .Lx687_42
.Lx687_57:
                        cmp              esi, 2
                                                                                        jne   .Lx687_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx687_43
                        mov              r9, rax
                                                                                        jmp   .Lx687_42
.Lx687_58:
                        cmp              eax, 72
                                                                                        jne   .Lx687_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx687_43
                        cmp              rax, r9
                                                                                        je    .Lx687_43
                        mov              r9, rax
                                                                                        jmp   .Lx687_42
.Lx687_43:
                        cmp              r8, r9
                                                                                        je    .Lx687_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx687_44
                        cmp              eax, 104
                                                                                        je    .Lx687_44
                        cmp              eax, 72
                                                                                        jne   .Lx687_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx687_44
                                                                                        jmp   .Lx687_45
.Lx687_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx687_53
                        cmp              eax, 104
                                                                                        je    .Lx687_53
                        cmp              eax, 72
                                                                                        jne   .Lx687_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx687_53
                                                                                        jmp   .Lx687_46
.Lx687_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx687_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx687_53
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
                                                                                        jmp   .Lx687_51
.Lx687_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx687_47
                        cmp              eax, 104
                                                                                        je    .Lx687_47
                        cmp              eax, 72
                                                                                        jne   .Lx687_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx687_47
                                                                                        jmp   .Lx687_48
.Lx687_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx687_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx687_53
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
                                                                                        jmp   .Lx687_51
.Lx687_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx687_49
                        cmp              edx, 80
                                                                                        je    .Lx687_53
                                                                                        jmp   .Lx687_52
.Lx687_49:
                        cmp              edx, 80
                                                                                        je    .Lx687_52
                        cmp              ecx, 5
                                                                                        je    .Lx687_53
                        cmp              edx, 5
                                                                                        je    .Lx687_53
                        cmp              ecx, 3
                                                                                        jne   .Lx687_50
                        cmp              edx, 3
                                                                                        jne   .Lx687_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx687_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx687_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx687_51
                                                                                        jmp   .Lx687_52
.Lx687_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx687_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx687_53
.Lx687_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx687_54
.Lx687_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx687_54
.Lx687_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx687_54:
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_builtin_prolog_α
                                                                                        jmp   n435_suspend_α
n434_call_builtin_prolog_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n435_suspend_α:
                        lea              rax, [rip + n435_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n435_suspend_β:
                                                                                        jmp   n436_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 6040], rax
                        lea              rdi, [rbp + 6032]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n437_var_ref_α
n436_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                                                                                        jmp   n438_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:
                        mov              qword ptr [rbp + 6000], 2                      # result
                        mov              dword ptr [rbp + 6004], 6
                        mov              rax, qword ptr [rip + .Lx693_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n439_call_builtin_prolog_α
.Lx693_0:
                        .quad            .Lx693_0_s
.Lx693_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5960], rax
                        lea              rdi, [rbp + 5952]
                        mov              rsi, qword ptr [rip + .Lx694_2]
                                                                                        jmp   .Lx694_3
.Lx694_2:
                        .quad            .Lx694_2_s
.Lx694_2_s:
                        .string          "module"
.Lx694_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx
                        cmp              eax, 104
                                                                                        je    n474_call_builtin_prolog_α
                                                                                        jmp   n440_var_ref_α
n439_call_builtin_prolog_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                                                                                        jmp   n441_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:
                        mov              qword ptr [rbp + 5920], 2                      # result
                        mov              dword ptr [rbp + 5924], 6
                        mov              rax, qword ptr [rip + .Lx697_0]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n442_call_builtin_prolog_α
.Lx697_0:
                        .quad            .Lx697_0_s
.Lx697_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5880], rax
                        lea              rdi, [rbp + 5872]
                        mov              rsi, qword ptr [rip + .Lx698_2]
                                                                                        jmp   .Lx698_3
.Lx698_2:
                        .quad            .Lx698_2_s
.Lx698_2_s:
                        .string          "clause"
.Lx698_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                        cmp              eax, 104
                                                                                        je    n474_call_builtin_prolog_α
                                                                                        jmp   n443_var_ref_α
n442_call_builtin_prolog_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                                                                                        jmp   n444_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_lit_string_α:
                        mov              qword ptr [rbp + 5840], 2                      # result
                        mov              dword ptr [rbp + 5844], 2
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rbp + 5848], rax
                                                                                        jmp   n445_var_ref_α
.Lx701_0:
                        .quad            .Lx701_0_s
.Lx701_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                                                                                        jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:
                        mov              qword ptr [rbp + 5744], 2                      # result
                        mov              dword ptr [rbp + 5748], 4
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n447_call_builtin_prolog_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 5784], rax
                        mov              rax, qword ptr [rbp + 5728]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 5736]
                        mov              qword ptr [rbp + 5800], rax
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5816], rax
                        lea              rdi, [rbp + 5776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                        cmp              eax, 104
                                                                                        je    n474_call_builtin_prolog_α
                                                                                        jmp   n448_call_builtin_prolog_α
n447_call_builtin_prolog_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n448_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5712]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5720]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5704], rax
                        lea              rdi, [rbp + 5680]
                        lea              r8, [rbp + 5680]
.Lx706_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx706_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_41
                        cmp              esi, 1
                                                                                        jne   .Lx706_55
                        mov              r8, rax
                                                                                        jmp   .Lx706_40
.Lx706_55:
                        cmp              esi, 2
                                                                                        jne   .Lx706_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx706_41
                        mov              r8, rax
                                                                                        jmp   .Lx706_40
.Lx706_56:
                        cmp              eax, 72
                                                                                        jne   .Lx706_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_41
                        cmp              rax, r8
                                                                                        je    .Lx706_41
                        mov              r8, rax
                                                                                        jmp   .Lx706_40
.Lx706_41:
                        lea              r9, [rbp + 5696]
.Lx706_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx706_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_43
                        cmp              esi, 1
                                                                                        jne   .Lx706_57
                        mov              r9, rax
                                                                                        jmp   .Lx706_42
.Lx706_57:
                        cmp              esi, 2
                                                                                        jne   .Lx706_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx706_43
                        mov              r9, rax
                                                                                        jmp   .Lx706_42
.Lx706_58:
                        cmp              eax, 72
                                                                                        jne   .Lx706_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx706_43
                        cmp              rax, r9
                                                                                        je    .Lx706_43
                        mov              r9, rax
                                                                                        jmp   .Lx706_42
.Lx706_43:
                        cmp              r8, r9
                                                                                        je    .Lx706_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx706_44
                        cmp              eax, 104
                                                                                        je    .Lx706_44
                        cmp              eax, 72
                                                                                        jne   .Lx706_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx706_44
                                                                                        jmp   .Lx706_45
.Lx706_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx706_53
                        cmp              eax, 104
                                                                                        je    .Lx706_53
                        cmp              eax, 72
                                                                                        jne   .Lx706_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx706_53
                                                                                        jmp   .Lx706_46
.Lx706_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx706_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx706_53
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
                                                                                        jmp   .Lx706_51
.Lx706_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx706_47
                        cmp              eax, 104
                                                                                        je    .Lx706_47
                        cmp              eax, 72
                                                                                        jne   .Lx706_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx706_47
                                                                                        jmp   .Lx706_48
.Lx706_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx706_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx706_53
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
                                                                                        jmp   .Lx706_51
.Lx706_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx706_49
                        cmp              edx, 80
                                                                                        je    .Lx706_53
                                                                                        jmp   .Lx706_52
.Lx706_49:
                        cmp              edx, 80
                                                                                        je    .Lx706_52
                        cmp              ecx, 5
                                                                                        je    .Lx706_53
                        cmp              edx, 5
                                                                                        je    .Lx706_53
                        cmp              ecx, 3
                                                                                        jne   .Lx706_50
                        cmp              edx, 3
                                                                                        jne   .Lx706_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx706_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx706_51
                                                                                        jmp   .Lx706_52
.Lx706_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx706_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx706_53
.Lx706_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx706_54
.Lx706_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx706_54
.Lx706_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx706_54:
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 104
                                                                                        je    n474_call_builtin_prolog_α
                                                                                        jmp   n449_var_ref_α
n448_call_builtin_prolog_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n450_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:
                        mov              qword ptr [rbp + 5648], 2                      # result
                        mov              dword ptr [rbp + 5652], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n451_lit_string_α
.Lx709_0:
                        .quad            .Lx709_0_s
.Lx709_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:
                        mov              qword ptr [rbp + 5088], 2                      # result
                        mov              dword ptr [rbp + 5092], 6
                        mov              rax, qword ptr [rip + .Lx710_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n452_lit_string_α
.Lx710_0:
                        .quad            .Lx710_0_s
.Lx710_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 4976], 2                      # result
                        mov              dword ptr [rbp + 4980], 1
                        mov              rax, qword ptr [rip + .Lx711_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n453_lit_string_α
.Lx711_0:
                        .quad            .Lx711_0_s
.Lx711_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 4864], 2                      # result
                        mov              dword ptr [rbp + 4868], 13
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n454_lit_string_α
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 4880], 2                      # result
                        mov              dword ptr [rbp + 4884], 4
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n455_call_builtin_prolog_α
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4920], rax
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n456_var_ref_α
n455_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n457_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5032], rax
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 5064], rax
                        lea              rdi, [rbp + 5024]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n458_lit_string_α
n457_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:
                        mov              qword ptr [rbp + 5552], 2                      # result
                        mov              dword ptr [rbp + 5556], 1
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n459_lit_string_α
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 5360], 2                      # result
                        mov              dword ptr [rbp + 5364], 1
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n460_lit_string_α
.Lx719_0:
                        .quad            .Lx719_0_s
.Lx719_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:
                        mov              qword ptr [rbp + 5104], 2                      # result
                        mov              dword ptr [rbp + 5108], 13
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n461_lit_string_α
.Lx720_0:
                        .quad            .Lx720_0_s
.Lx720_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:
                        mov              qword ptr [rbp + 5264], 2                      # result
                        mov              dword ptr [rbp + 5268], 6
                        mov              rax, qword ptr [rip + .Lx721_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n462_var_ref_α
.Lx721_0:
                        .quad            .Lx721_0_s
.Lx721_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                                                                                        jmp   n463_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n463_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                                                                                        jmp   n464_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n464_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   n465_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5192], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5208], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5216], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5224], rax
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5232], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5240], rax
                        lea              rdi, [rbp + 5184]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5168], rax
                        mov              qword ptr [rbp + 5176], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n466_call_builtin_prolog_α
n465_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5304], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5320], rax
                        mov              rax, qword ptr [rbp + 5168]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5176]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5296]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5280], rax
                        mov              qword ptr [rbp + 5288], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n467_lit_string_α
n466_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:
                        mov              qword ptr [rbp + 5456], 2                      # result
                        mov              dword ptr [rbp + 5460], 5
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n468_var_ref_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n468_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                                                                                        jmp   n469_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n469_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5416], rax
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5432], rax
                        lea              rdi, [rbp + 5408]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n470_call_builtin_prolog_α
n469_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n470_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5496], rax
                        mov              rax, qword ptr [rbp + 5280]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5288]
                        mov              qword ptr [rbp + 5512], rax
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5528], rax
                        lea              rdi, [rbp + 5488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n471_call_builtin_prolog_α
n470_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5592], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5624], rax
                        lea              rdi, [rbp + 5584]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              eax, 104
                                                                                        je    n474_call_builtin_prolog_α
                                                                                        jmp   n472_call_builtin_prolog_α
n471_call_builtin_prolog_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n472_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 4840], rax
                        lea              rdi, [rbp + 4816]
                        lea              r8, [rbp + 4816]
.Lx736_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx736_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_41
                        cmp              esi, 1
                                                                                        jne   .Lx736_55
                        mov              r8, rax
                                                                                        jmp   .Lx736_40
.Lx736_55:
                        cmp              esi, 2
                                                                                        jne   .Lx736_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx736_41
                        mov              r8, rax
                                                                                        jmp   .Lx736_40
.Lx736_56:
                        cmp              eax, 72
                                                                                        jne   .Lx736_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_41
                        cmp              rax, r8
                                                                                        je    .Lx736_41
                        mov              r8, rax
                                                                                        jmp   .Lx736_40
.Lx736_41:
                        lea              r9, [rbp + 4832]
.Lx736_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx736_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_43
                        cmp              esi, 1
                                                                                        jne   .Lx736_57
                        mov              r9, rax
                                                                                        jmp   .Lx736_42
.Lx736_57:
                        cmp              esi, 2
                                                                                        jne   .Lx736_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx736_43
                        mov              r9, rax
                                                                                        jmp   .Lx736_42
.Lx736_58:
                        cmp              eax, 72
                                                                                        jne   .Lx736_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx736_43
                        cmp              rax, r9
                                                                                        je    .Lx736_43
                        mov              r9, rax
                                                                                        jmp   .Lx736_42
.Lx736_43:
                        cmp              r8, r9
                                                                                        je    .Lx736_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx736_44
                        cmp              eax, 104
                                                                                        je    .Lx736_44
                        cmp              eax, 72
                                                                                        jne   .Lx736_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx736_44
                                                                                        jmp   .Lx736_45
.Lx736_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx736_53
                        cmp              eax, 104
                                                                                        je    .Lx736_53
                        cmp              eax, 72
                                                                                        jne   .Lx736_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx736_53
                                                                                        jmp   .Lx736_46
.Lx736_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx736_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx736_53
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
                                                                                        jmp   .Lx736_51
.Lx736_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx736_47
                        cmp              eax, 104
                                                                                        je    .Lx736_47
                        cmp              eax, 72
                                                                                        jne   .Lx736_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx736_47
                                                                                        jmp   .Lx736_48
.Lx736_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx736_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx736_53
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
                                                                                        jmp   .Lx736_51
.Lx736_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx736_49
                        cmp              edx, 80
                                                                                        je    .Lx736_53
                                                                                        jmp   .Lx736_52
.Lx736_49:
                        cmp              edx, 80
                                                                                        je    .Lx736_52
                        cmp              ecx, 5
                                                                                        je    .Lx736_53
                        cmp              edx, 5
                                                                                        je    .Lx736_53
                        cmp              ecx, 3
                                                                                        jne   .Lx736_50
                        cmp              edx, 3
                                                                                        jne   .Lx736_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx736_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx736_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx736_51
                                                                                        jmp   .Lx736_52
.Lx736_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx736_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx736_53
.Lx736_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx736_54
.Lx736_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx736_54
.Lx736_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx736_54:
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              eax, 104
                                                                                        je    n474_call_builtin_prolog_α
                                                                                        jmp   n473_suspend_α
n472_call_builtin_prolog_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n473_suspend_α:
                        lea              rax, [rip + n473_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n473_suspend_β:
                                                                                        jmp   n474_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n475_var_ref_α
n474_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n476_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n476_lit_string_α:
                        mov              qword ptr [rbp + 4736], 2                      # result
                        mov              dword ptr [rbp + 4740], 6
                        mov              rax, qword ptr [rip + .Lx742_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n477_call_builtin_prolog_α
.Lx742_0:
                        .quad            .Lx742_0_s
.Lx742_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n477_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4696], rax
                        lea              rdi, [rbp + 4688]
                        mov              rsi, qword ptr [rip + .Lx743_2]
                                                                                        jmp   .Lx743_3
.Lx743_2:
                        .quad            .Lx743_2_s
.Lx743_2_s:
                        .string          "module"
.Lx743_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 104
                                                                                        je    n512_call_builtin_prolog_α
                                                                                        jmp   n478_var_ref_α
n477_call_builtin_prolog_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                                                                                        jmp   n479_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:
                        mov              qword ptr [rbp + 4656], 2                      # result
                        mov              dword ptr [rbp + 4660], 6
                        mov              rax, qword ptr [rip + .Lx746_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n480_call_builtin_prolog_α
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n480_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4608]
                        mov              rsi, qword ptr [rip + .Lx747_2]
                                                                                        jmp   .Lx747_3
.Lx747_2:
                        .quad            .Lx747_2_s
.Lx747_2_s:
                        .string          "clause"
.Lx747_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 104
                                                                                        je    n512_call_builtin_prolog_α
                                                                                        jmp   n481_var_ref_α
n480_call_builtin_prolog_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n481_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n482_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n482_lit_string_α:
                        mov              qword ptr [rbp + 4576], 2                      # result
                        mov              dword ptr [rbp + 4580], 2
                        mov              rax, qword ptr [rip + .Lx750_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n483_var_ref_α
.Lx750_0:
                        .quad            .Lx750_0_s
.Lx750_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:
                        mov              qword ptr [rbp + 4480], 2                      # result
                        mov              dword ptr [rbp + 4484], 4
                        mov              rax, qword ptr [rip + .Lx753_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n485_call_builtin_prolog_α
.Lx753_0:
                        .quad            .Lx753_0_s
.Lx753_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4552], rax
                        lea              rdi, [rbp + 4512]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              eax, 104
                                                                                        je    n512_call_builtin_prolog_α
                                                                                        jmp   n486_call_builtin_prolog_α
n485_call_builtin_prolog_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4416]
                        lea              r8, [rbp + 4416]
.Lx755_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx755_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        cmp              esi, 1
                                                                                        jne   .Lx755_55
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_55:
                        cmp              esi, 2
                                                                                        jne   .Lx755_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_56:
                        cmp              eax, 72
                                                                                        jne   .Lx755_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_41
                        cmp              rax, r8
                                                                                        je    .Lx755_41
                        mov              r8, rax
                                                                                        jmp   .Lx755_40
.Lx755_41:
                        lea              r9, [rbp + 4432]
.Lx755_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx755_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        cmp              esi, 1
                                                                                        jne   .Lx755_57
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_57:
                        cmp              esi, 2
                                                                                        jne   .Lx755_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_58:
                        cmp              eax, 72
                                                                                        jne   .Lx755_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx755_43
                        cmp              rax, r9
                                                                                        je    .Lx755_43
                        mov              r9, rax
                                                                                        jmp   .Lx755_42
.Lx755_43:
                        cmp              r8, r9
                                                                                        je    .Lx755_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_44
                        cmp              eax, 104
                                                                                        je    .Lx755_44
                        cmp              eax, 72
                                                                                        jne   .Lx755_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx755_44
                                                                                        jmp   .Lx755_45
.Lx755_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_53
                        cmp              eax, 104
                                                                                        je    .Lx755_53
                        cmp              eax, 72
                                                                                        jne   .Lx755_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx755_53
                                                                                        jmp   .Lx755_46
.Lx755_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx755_53
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
                                                                                        jmp   .Lx755_51
.Lx755_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx755_47
                        cmp              eax, 104
                                                                                        je    .Lx755_47
                        cmp              eax, 72
                                                                                        jne   .Lx755_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx755_47
                                                                                        jmp   .Lx755_48
.Lx755_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx755_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx755_53
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
                                                                                        jmp   .Lx755_51
.Lx755_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx755_49
                        cmp              edx, 80
                                                                                        je    .Lx755_53
                                                                                        jmp   .Lx755_52
.Lx755_49:
                        cmp              edx, 80
                                                                                        je    .Lx755_52
                        cmp              ecx, 5
                                                                                        je    .Lx755_53
                        cmp              edx, 5
                                                                                        je    .Lx755_53
                        cmp              ecx, 3
                                                                                        jne   .Lx755_50
                        cmp              edx, 3
                                                                                        jne   .Lx755_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx755_51
                                                                                        jmp   .Lx755_52
.Lx755_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx755_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx755_53
.Lx755_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx755_54
.Lx755_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx755_54
.Lx755_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx755_54:
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        cmp              eax, 104
                                                                                        je    n512_call_builtin_prolog_α
                                                                                        jmp   n487_var_ref_α
n486_call_builtin_prolog_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n488_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 4384], 2                      # result
                        mov              dword ptr [rbp + 4388], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n489_lit_string_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 3824], 2                      # result
                        mov              dword ptr [rbp + 3828], 6
                        mov              rax, qword ptr [rip + .Lx759_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n490_lit_string_α
.Lx759_0:
                        .quad            .Lx759_0_s
.Lx759_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:
                        mov              qword ptr [rbp + 3712], 2                      # result
                        mov              dword ptr [rbp + 3716], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n491_lit_string_α
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 3600], 2                      # result
                        mov              dword ptr [rbp + 3604], 13
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n492_lit_string_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 3616], 2                      # result
                        mov              dword ptr [rbp + 3620], 4
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n493_call_builtin_prolog_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n493_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3656], rax
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 3672], rax
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3648]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n494_var_ref_α
n493_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n494_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n495_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n495_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3768], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 3800], rax
                        lea              rdi, [rbp + 3760]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n496_lit_string_α
n495_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:
                        mov              qword ptr [rbp + 4288], 2                      # result
                        mov              dword ptr [rbp + 4292], 1
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n497_lit_string_α
.Lx767_0:
                        .quad            .Lx767_0_s
.Lx767_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 4096], 2                      # result
                        mov              dword ptr [rbp + 4100], 6
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n498_lit_string_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 3952], 2                      # result
                        mov              dword ptr [rbp + 3956], 1
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n499_lit_string_α
.Lx769_0:
                        .quad            .Lx769_0_s
.Lx769_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:
                        mov              qword ptr [rbp + 3840], 2                      # result
                        mov              dword ptr [rbp + 3844], 13
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n500_var_ref_α
.Lx770_0:
                        .quad            .Lx770_0_s
.Lx770_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n501_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3928], rax
                        lea              rdi, [rbp + 3888]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n502_var_ref_α
n501_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n502_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n503_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n503_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n504_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n504_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 4072], rax
                        lea              rdi, [rbp + 4016]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n505_lit_string_α
n504_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_string_α:
                        mov              qword ptr [rbp + 4192], 2                      # result
                        mov              dword ptr [rbp + 4196], 5
                        mov              rax, qword ptr [rip + .Lx779_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n506_var_ref_α
.Lx779_0:
                        .quad            .Lx779_0_s
.Lx779_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n507_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n508_call_builtin_prolog_α
n507_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n508_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4224], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4232], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 4248], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4264], rax
                        lea              rdi, [rbp + 4224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n509_call_builtin_prolog_α
n508_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4320], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4328], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4360], rax
                        lea              rdi, [rbp + 4320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx
                        cmp              eax, 104
                                                                                        je    n512_call_builtin_prolog_α
                                                                                        jmp   n510_call_builtin_prolog_α
n509_call_builtin_prolog_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n510_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3560], rax
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3552]
                        lea              r8, [rbp + 3552]
.Lx785_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx785_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx785_41
                        cmp              esi, 1
                                                                                        jne   .Lx785_55
                        mov              r8, rax
                                                                                        jmp   .Lx785_40
.Lx785_55:
                        cmp              esi, 2
                                                                                        jne   .Lx785_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx785_41
                        mov              r8, rax
                                                                                        jmp   .Lx785_40
.Lx785_56:
                        cmp              eax, 72
                                                                                        jne   .Lx785_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx785_41
                        cmp              rax, r8
                                                                                        je    .Lx785_41
                        mov              r8, rax
                                                                                        jmp   .Lx785_40
.Lx785_41:
                        lea              r9, [rbp + 3568]
.Lx785_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx785_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx785_43
                        cmp              esi, 1
                                                                                        jne   .Lx785_57
                        mov              r9, rax
                                                                                        jmp   .Lx785_42
.Lx785_57:
                        cmp              esi, 2
                                                                                        jne   .Lx785_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx785_43
                        mov              r9, rax
                                                                                        jmp   .Lx785_42
.Lx785_58:
                        cmp              eax, 72
                                                                                        jne   .Lx785_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx785_43
                        cmp              rax, r9
                                                                                        je    .Lx785_43
                        mov              r9, rax
                                                                                        jmp   .Lx785_42
.Lx785_43:
                        cmp              r8, r9
                                                                                        je    .Lx785_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx785_44
                        cmp              eax, 104
                                                                                        je    .Lx785_44
                        cmp              eax, 72
                                                                                        jne   .Lx785_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx785_44
                                                                                        jmp   .Lx785_45
.Lx785_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx785_53
                        cmp              eax, 104
                                                                                        je    .Lx785_53
                        cmp              eax, 72
                                                                                        jne   .Lx785_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx785_53
                                                                                        jmp   .Lx785_46
.Lx785_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx785_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx785_53
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
                                                                                        jmp   .Lx785_51
.Lx785_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx785_47
                        cmp              eax, 104
                                                                                        je    .Lx785_47
                        cmp              eax, 72
                                                                                        jne   .Lx785_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx785_47
                                                                                        jmp   .Lx785_48
.Lx785_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx785_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx785_53
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
                                                                                        jmp   .Lx785_51
.Lx785_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx785_49
                        cmp              edx, 80
                                                                                        je    .Lx785_53
                                                                                        jmp   .Lx785_52
.Lx785_49:
                        cmp              edx, 80
                                                                                        je    .Lx785_52
                        cmp              ecx, 5
                                                                                        je    .Lx785_53
                        cmp              edx, 5
                                                                                        je    .Lx785_53
                        cmp              ecx, 3
                                                                                        jne   .Lx785_50
                        cmp              edx, 3
                                                                                        jne   .Lx785_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx785_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx785_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx785_51
                                                                                        jmp   .Lx785_52
.Lx785_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx785_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx785_53
.Lx785_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx785_54
.Lx785_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx785_54
.Lx785_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx785_54:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 104
                                                                                        je    n512_call_builtin_prolog_α
                                                                                        jmp   n511_suspend_α
n510_call_builtin_prolog_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_suspend_α:
                        lea              rax, [rip + n511_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n511_suspend_β:
                                                                                        jmp   n512_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n512_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3512], rax
                        lea              rdi, [rbp + 3504]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n513_var_ref_α
n512_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n514_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:
                        mov              qword ptr [rbp + 3472], 2                      # result
                        mov              dword ptr [rbp + 3476], 6
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n515_call_builtin_prolog_α
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              rsi, qword ptr [rip + .Lx792_2]
                                                                                        jmp   .Lx792_3
.Lx792_2:
                        .quad            .Lx792_2_s
.Lx792_2_s:
                        .string          "module"
.Lx792_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 104
                                                                                        je    n536_call_builtin_prolog_α
                                                                                        jmp   n516_var_ref_α
n515_call_builtin_prolog_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n517_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:
                        mov              qword ptr [rbp + 3392], 2                      # result
                        mov              dword ptr [rbp + 3396], 8
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n518_call_builtin_prolog_α
.Lx795_0:
                        .quad            .Lx795_0_s
.Lx795_0_s:
                        .string          "qcontrol"
#-----------------------------------------------------------------------------------------------------------------------
n518_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              rsi, qword ptr [rip + .Lx796_2]
                                                                                        jmp   .Lx796_3
.Lx796_2:
                        .quad            .Lx796_2_s
.Lx796_2_s:
                        .string          "qcontrol"
.Lx796_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 104
                                                                                        je    n536_call_builtin_prolog_α
                                                                                        jmp   n519_var_ref_α
n518_call_builtin_prolog_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n520_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:
                        mov              qword ptr [rbp + 3312], 2                      # result
                        mov              dword ptr [rbp + 3316], 3
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n521_lit_string_α
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:
                        mov              qword ptr [rbp + 3232], 2                      # result
                        mov              dword ptr [rbp + 3236], 2
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n522_var_ref_α
.Lx800_0:
                        .quad            .Lx800_0_s
.Lx800_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n523_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 3136], 2                      # result
                        mov              dword ptr [rbp + 3140], 1
                        mov              rax, qword ptr [rip + .Lx803_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n524_lit_integer_α
.Lx803_0:
                        .quad            .Lx803_0_s
.Lx803_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_integer_α:
                        mov              qword ptr [rbp + 3040], 3                      # result
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n525_lit_string_α
.Lx804_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 3024], 2                      # result
                        mov              dword ptr [rbp + 3028], 2
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n526_call_builtin_prolog_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n527_call_builtin_prolog_α
n526_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n527_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3192], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n528_call_builtin_prolog_α
n527_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3264]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              eax, 104
                                                                                        je    n536_call_builtin_prolog_α
                                                                                        jmp   n529_call_builtin_prolog_α
n528_call_builtin_prolog_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 2984], rax
                        lea              rdi, [rbp + 2960]
                        lea              r8, [rbp + 2960]
.Lx809_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx809_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx809_41
                        cmp              esi, 1
                                                                                        jne   .Lx809_55
                        mov              r8, rax
                                                                                        jmp   .Lx809_40
.Lx809_55:
                        cmp              esi, 2
                                                                                        jne   .Lx809_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx809_41
                        mov              r8, rax
                                                                                        jmp   .Lx809_40
.Lx809_56:
                        cmp              eax, 72
                                                                                        jne   .Lx809_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx809_41
                        cmp              rax, r8
                                                                                        je    .Lx809_41
                        mov              r8, rax
                                                                                        jmp   .Lx809_40
.Lx809_41:
                        lea              r9, [rbp + 2976]
.Lx809_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx809_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx809_43
                        cmp              esi, 1
                                                                                        jne   .Lx809_57
                        mov              r9, rax
                                                                                        jmp   .Lx809_42
.Lx809_57:
                        cmp              esi, 2
                                                                                        jne   .Lx809_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx809_43
                        mov              r9, rax
                                                                                        jmp   .Lx809_42
.Lx809_58:
                        cmp              eax, 72
                                                                                        jne   .Lx809_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx809_43
                        cmp              rax, r9
                                                                                        je    .Lx809_43
                        mov              r9, rax
                                                                                        jmp   .Lx809_42
.Lx809_43:
                        cmp              r8, r9
                                                                                        je    .Lx809_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx809_44
                        cmp              eax, 104
                                                                                        je    .Lx809_44
                        cmp              eax, 72
                                                                                        jne   .Lx809_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx809_44
                                                                                        jmp   .Lx809_45
.Lx809_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx809_53
                        cmp              eax, 104
                                                                                        je    .Lx809_53
                        cmp              eax, 72
                                                                                        jne   .Lx809_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx809_53
                                                                                        jmp   .Lx809_46
.Lx809_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx809_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx809_53
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
                                                                                        jmp   .Lx809_51
.Lx809_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx809_47
                        cmp              eax, 104
                                                                                        je    .Lx809_47
                        cmp              eax, 72
                                                                                        jne   .Lx809_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx809_47
                                                                                        jmp   .Lx809_48
.Lx809_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx809_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx809_53
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
                                                                                        jmp   .Lx809_51
.Lx809_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx809_49
                        cmp              edx, 80
                                                                                        je    .Lx809_53
                                                                                        jmp   .Lx809_52
.Lx809_49:
                        cmp              edx, 80
                                                                                        je    .Lx809_52
                        cmp              ecx, 5
                                                                                        je    .Lx809_53
                        cmp              edx, 5
                                                                                        je    .Lx809_53
                        cmp              ecx, 3
                                                                                        jne   .Lx809_50
                        cmp              edx, 3
                                                                                        jne   .Lx809_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx809_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx809_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx809_51
                                                                                        jmp   .Lx809_52
.Lx809_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx809_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx809_53
.Lx809_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx809_54
.Lx809_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx809_54
.Lx809_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx809_54:
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 104
                                                                                        je    n536_call_builtin_prolog_α
                                                                                        jmp   n530_var_ref_α
n529_call_builtin_prolog_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n531_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_string_α:
                        mov              qword ptr [rbp + 2928], 2                      # result
                        mov              dword ptr [rbp + 2932], 1
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n532_var_ref_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n533_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2880]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n536_call_builtin_prolog_α
                                                                                        jmp   n534_call_builtin_prolog_α
n533_call_builtin_prolog_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2800]
                        lea              r8, [rbp + 2800]
.Lx816_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx816_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx816_41
                        cmp              esi, 1
                                                                                        jne   .Lx816_55
                        mov              r8, rax
                                                                                        jmp   .Lx816_40
.Lx816_55:
                        cmp              esi, 2
                                                                                        jne   .Lx816_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx816_41
                        mov              r8, rax
                                                                                        jmp   .Lx816_40
.Lx816_56:
                        cmp              eax, 72
                                                                                        jne   .Lx816_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx816_41
                        cmp              rax, r8
                                                                                        je    .Lx816_41
                        mov              r8, rax
                                                                                        jmp   .Lx816_40
.Lx816_41:
                        lea              r9, [rbp + 2816]
.Lx816_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx816_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx816_43
                        cmp              esi, 1
                                                                                        jne   .Lx816_57
                        mov              r9, rax
                                                                                        jmp   .Lx816_42
.Lx816_57:
                        cmp              esi, 2
                                                                                        jne   .Lx816_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx816_43
                        mov              r9, rax
                                                                                        jmp   .Lx816_42
.Lx816_58:
                        cmp              eax, 72
                                                                                        jne   .Lx816_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx816_43
                        cmp              rax, r9
                                                                                        je    .Lx816_43
                        mov              r9, rax
                                                                                        jmp   .Lx816_42
.Lx816_43:
                        cmp              r8, r9
                                                                                        je    .Lx816_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx816_44
                        cmp              eax, 104
                                                                                        je    .Lx816_44
                        cmp              eax, 72
                                                                                        jne   .Lx816_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx816_44
                                                                                        jmp   .Lx816_45
.Lx816_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx816_53
                        cmp              eax, 104
                                                                                        je    .Lx816_53
                        cmp              eax, 72
                                                                                        jne   .Lx816_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx816_53
                                                                                        jmp   .Lx816_46
.Lx816_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx816_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx816_53
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
                                                                                        jmp   .Lx816_51
.Lx816_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx816_47
                        cmp              eax, 104
                                                                                        je    .Lx816_47
                        cmp              eax, 72
                                                                                        jne   .Lx816_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx816_47
                                                                                        jmp   .Lx816_48
.Lx816_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx816_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx816_53
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
                                                                                        jmp   .Lx816_51
.Lx816_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx816_49
                        cmp              edx, 80
                                                                                        je    .Lx816_53
                                                                                        jmp   .Lx816_52
.Lx816_49:
                        cmp              edx, 80
                                                                                        je    .Lx816_52
                        cmp              ecx, 5
                                                                                        je    .Lx816_53
                        cmp              edx, 5
                                                                                        je    .Lx816_53
                        cmp              ecx, 3
                                                                                        jne   .Lx816_50
                        cmp              edx, 3
                                                                                        jne   .Lx816_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx816_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx816_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx816_51
                                                                                        jmp   .Lx816_52
.Lx816_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx816_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx816_53
.Lx816_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx816_54
.Lx816_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx816_54
.Lx816_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx816_54:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 104
                                                                                        je    n536_call_builtin_prolog_α
                                                                                        jmp   n535_suspend_α
n534_call_builtin_prolog_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n535_suspend_α:
                        lea              rax, [rip + n535_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n535_suspend_β:
                                                                                        jmp   n536_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n536_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n537_var_ref_α
n536_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n538_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n538_lit_string_α:
                        mov              qword ptr [rbp + 2720], 2                      # result
                        mov              dword ptr [rbp + 2724], 6
                        mov              rax, qword ptr [rip + .Lx822_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n539_call_builtin_prolog_α
.Lx822_0:
                        .quad            .Lx822_0_s
.Lx822_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        mov              rsi, qword ptr [rip + .Lx823_2]
                                                                                        jmp   .Lx823_3
.Lx823_2:
                        .quad            .Lx823_2_s
.Lx823_2_s:
                        .string          "module"
.Lx823_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 104
                                                                                        je    n576_call_builtin_prolog_α
                                                                                        jmp   n540_var_ref_α
n539_call_builtin_prolog_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n541_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:
                        mov              qword ptr [rbp + 2640], 2                      # result
                        mov              dword ptr [rbp + 2644], 5
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n542_call_builtin_prolog_α
.Lx826_0:
                        .quad            .Lx826_0_s
.Lx826_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n542_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              rsi, qword ptr [rip + .Lx827_2]
                                                                                        jmp   .Lx827_3
.Lx827_2:
                        .quad            .Lx827_2_s
.Lx827_2_s:
                        .string          "mqual"
.Lx827_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 104
                                                                                        je    n576_call_builtin_prolog_α
                                                                                        jmp   n543_var_ref_α
n542_call_builtin_prolog_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n543_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n544_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n544_lit_string_α:
                        mov              qword ptr [rbp + 2560], 2                      # result
                        mov              dword ptr [rbp + 2564], 1
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n545_lit_string_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:
                        mov              qword ptr [rbp + 2464], 2                      # result
                        mov              dword ptr [rbp + 2468], 3
                        mov              rax, qword ptr [rip + .Lx831_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n546_lit_string_α
.Lx831_0:
                        .quad            .Lx831_0_s
.Lx831_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n546_lit_string_α:
                        mov              qword ptr [rbp + 2384], 2                      # result
                        mov              dword ptr [rbp + 2388], 14
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n547_call_builtin_prolog_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n547_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2440], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n548_lit_string_α
n547_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:
                        mov              qword ptr [rbp + 2368], 2                      # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Lx834_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n549_lit_string_α
.Lx834_0:
                        .quad            .Lx834_0_s
.Lx834_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n549_lit_string_α:
                        mov              qword ptr [rbp + 2272], 2                      # result
                        mov              dword ptr [rbp + 2276], 5
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n550_lit_string_α
.Lx835_0:
                        .quad            .Lx835_0_s
.Lx835_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:
                        mov              qword ptr [rbp + 2192], 2                      # result
                        mov              dword ptr [rbp + 2196], 10
                        mov              rax, qword ptr [rip + .Lx836_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n551_lit_string_α
.Lx836_0:
                        .quad            .Lx836_0_s
.Lx836_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:
                        mov              qword ptr [rbp + 2080], 2                      # result
                        mov              dword ptr [rbp + 2084], 12
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n552_var_ref_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n552_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n553_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n553_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n554_call_builtin_prolog_α
n553_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n554_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2248], rax
                        lea              rdi, [rbp + 2224]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n555_lit_string_α
n554_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n555_lit_string_α:
                        mov              qword ptr [rbp + 2064], 2                      # result
                        mov              dword ptr [rbp + 2068], 2
                        mov              rax, qword ptr [rip + .Lx842_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n556_call_builtin_prolog_α
.Lx842_0:
                        .quad            .Lx842_0_s
.Lx842_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n556_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n557_call_builtin_prolog_α
n556_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2536], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 104
                                                                                        je    n576_call_builtin_prolog_α
                                                                                        jmp   n558_call_builtin_prolog_α
n557_call_builtin_prolog_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n558_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2016]
                        lea              r8, [rbp + 2016]
.Lx845_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx845_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx845_41
                        cmp              esi, 1
                                                                                        jne   .Lx845_55
                        mov              r8, rax
                                                                                        jmp   .Lx845_40
.Lx845_55:
                        cmp              esi, 2
                                                                                        jne   .Lx845_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx845_41
                        mov              r8, rax
                                                                                        jmp   .Lx845_40
.Lx845_56:
                        cmp              eax, 72
                                                                                        jne   .Lx845_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx845_41
                        cmp              rax, r8
                                                                                        je    .Lx845_41
                        mov              r8, rax
                                                                                        jmp   .Lx845_40
.Lx845_41:
                        lea              r9, [rbp + 2032]
.Lx845_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx845_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx845_43
                        cmp              esi, 1
                                                                                        jne   .Lx845_57
                        mov              r9, rax
                                                                                        jmp   .Lx845_42
.Lx845_57:
                        cmp              esi, 2
                                                                                        jne   .Lx845_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx845_43
                        mov              r9, rax
                                                                                        jmp   .Lx845_42
.Lx845_58:
                        cmp              eax, 72
                                                                                        jne   .Lx845_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx845_43
                        cmp              rax, r9
                                                                                        je    .Lx845_43
                        mov              r9, rax
                                                                                        jmp   .Lx845_42
.Lx845_43:
                        cmp              r8, r9
                                                                                        je    .Lx845_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx845_44
                        cmp              eax, 104
                                                                                        je    .Lx845_44
                        cmp              eax, 72
                                                                                        jne   .Lx845_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx845_44
                                                                                        jmp   .Lx845_45
.Lx845_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx845_53
                        cmp              eax, 104
                                                                                        je    .Lx845_53
                        cmp              eax, 72
                                                                                        jne   .Lx845_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx845_53
                                                                                        jmp   .Lx845_46
.Lx845_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx845_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx845_53
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
                                                                                        jmp   .Lx845_51
.Lx845_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx845_47
                        cmp              eax, 104
                                                                                        je    .Lx845_47
                        cmp              eax, 72
                                                                                        jne   .Lx845_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx845_47
                                                                                        jmp   .Lx845_48
.Lx845_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx845_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx845_53
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
                                                                                        jmp   .Lx845_51
.Lx845_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx845_49
                        cmp              edx, 80
                                                                                        je    .Lx845_53
                                                                                        jmp   .Lx845_52
.Lx845_49:
                        cmp              edx, 80
                                                                                        je    .Lx845_52
                        cmp              ecx, 5
                                                                                        je    .Lx845_53
                        cmp              edx, 5
                                                                                        je    .Lx845_53
                        cmp              ecx, 3
                                                                                        jne   .Lx845_50
                        cmp              edx, 3
                                                                                        jne   .Lx845_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx845_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx845_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx845_51
                                                                                        jmp   .Lx845_52
.Lx845_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx845_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx845_53
.Lx845_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx845_54
.Lx845_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx845_54
.Lx845_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx845_54:
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        je    n576_call_builtin_prolog_α
                                                                                        jmp   n559_var_ref_α
n558_call_builtin_prolog_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n560_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 1
                        mov              rax, qword ptr [rip + .Lx848_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n561_lit_string_α
.Lx848_0:
                        .quad            .Lx848_0_s
.Lx848_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n561_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx849_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n562_var_ref_α
.Lx849_0:
                        .quad            .Lx849_0_s
.Lx849_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n563_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx852_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n564_lit_string_α
.Lx852_0:
                        .quad            .Lx852_0_s
.Lx852_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n564_lit_string_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], 1
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n565_var_ref_α
.Lx853_0:
                        .quad            .Lx853_0_s
.Lx853_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n566_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n566_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n567_call_builtin_prolog_α
n566_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n567_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n568_lit_string_α
n567_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n568_lit_string_α:
                        mov              qword ptr [rbp + 1888], 2                      # result
                        mov              dword ptr [rbp + 1892], 12
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n569_var_ref_α
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "strip_module"
#-----------------------------------------------------------------------------------------------------------------------
n569_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n570_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n571_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n572_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n572_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1808]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n573_call_builtin_prolog_α
n572_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n573_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 104
                                                                                        je    n576_call_builtin_prolog_α
                                                                                        jmp   n574_call_builtin_prolog_α
n573_call_builtin_prolog_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1456]
                        lea              r8, [rbp + 1456]
.Lx867_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx867_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx867_41
                        cmp              esi, 1
                                                                                        jne   .Lx867_55
                        mov              r8, rax
                                                                                        jmp   .Lx867_40
.Lx867_55:
                        cmp              esi, 2
                                                                                        jne   .Lx867_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx867_41
                        mov              r8, rax
                                                                                        jmp   .Lx867_40
.Lx867_56:
                        cmp              eax, 72
                                                                                        jne   .Lx867_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx867_41
                        cmp              rax, r8
                                                                                        je    .Lx867_41
                        mov              r8, rax
                                                                                        jmp   .Lx867_40
.Lx867_41:
                        lea              r9, [rbp + 1472]
.Lx867_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx867_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx867_43
                        cmp              esi, 1
                                                                                        jne   .Lx867_57
                        mov              r9, rax
                                                                                        jmp   .Lx867_42
.Lx867_57:
                        cmp              esi, 2
                                                                                        jne   .Lx867_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx867_43
                        mov              r9, rax
                                                                                        jmp   .Lx867_42
.Lx867_58:
                        cmp              eax, 72
                                                                                        jne   .Lx867_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx867_43
                        cmp              rax, r9
                                                                                        je    .Lx867_43
                        mov              r9, rax
                                                                                        jmp   .Lx867_42
.Lx867_43:
                        cmp              r8, r9
                                                                                        je    .Lx867_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx867_44
                        cmp              eax, 104
                                                                                        je    .Lx867_44
                        cmp              eax, 72
                                                                                        jne   .Lx867_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx867_44
                                                                                        jmp   .Lx867_45
.Lx867_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx867_53
                        cmp              eax, 104
                                                                                        je    .Lx867_53
                        cmp              eax, 72
                                                                                        jne   .Lx867_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx867_53
                                                                                        jmp   .Lx867_46
.Lx867_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx867_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx867_53
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
                                                                                        jmp   .Lx867_51
.Lx867_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx867_47
                        cmp              eax, 104
                                                                                        je    .Lx867_47
                        cmp              eax, 72
                                                                                        jne   .Lx867_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx867_47
                                                                                        jmp   .Lx867_48
.Lx867_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx867_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx867_53
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
                                                                                        jmp   .Lx867_51
.Lx867_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx867_49
                        cmp              edx, 80
                                                                                        je    .Lx867_53
                                                                                        jmp   .Lx867_52
.Lx867_49:
                        cmp              edx, 80
                                                                                        je    .Lx867_52
                        cmp              ecx, 5
                                                                                        je    .Lx867_53
                        cmp              edx, 5
                                                                                        je    .Lx867_53
                        cmp              ecx, 3
                                                                                        jne   .Lx867_50
                        cmp              edx, 3
                                                                                        jne   .Lx867_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx867_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx867_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx867_51
                                                                                        jmp   .Lx867_52
.Lx867_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx867_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx867_53
.Lx867_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx867_54
.Lx867_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx867_54
.Lx867_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx867_54:
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n576_call_builtin_prolog_α
                                                                                        jmp   n575_suspend_α
n574_call_builtin_prolog_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n575_suspend_α:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n575_suspend_β:
                                                                                        jmp   n576_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n576_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n577_var_ref_α
n576_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n578_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n578_lit_string_α:
                        mov              qword ptr [rbp + 1376], 2                      # result
                        mov              dword ptr [rbp + 1380], 6
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n579_call_builtin_prolog_α
.Lx873_0:
                        .quad            .Lx873_0_s
.Lx873_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n579_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              rsi, qword ptr [rip + .Lx874_2]
                                                                                        jmp   .Lx874_3
.Lx874_2:
                        .quad            .Lx874_2_s
.Lx874_2_s:
                        .string          "module"
.Lx874_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 104
                                                                                        je    n614_call_builtin_prolog_α
                                                                                        jmp   n580_var_ref_α
n579_call_builtin_prolog_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n581_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n581_lit_string_α:
                        mov              qword ptr [rbp + 1296], 2                      # result
                        mov              dword ptr [rbp + 1300], 5
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n582_call_builtin_prolog_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n582_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              rsi, qword ptr [rip + .Lx878_2]
                                                                                        jmp   .Lx878_3
.Lx878_2:
                        .quad            .Lx878_2_s
.Lx878_2_s:
                        .string          "mqual"
.Lx878_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n614_call_builtin_prolog_α
                                                                                        jmp   n583_var_ref_α
n582_call_builtin_prolog_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n583_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n584_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n584_lit_string_α:
                        mov              qword ptr [rbp + 1216], 2                      # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Lx881_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n585_lit_string_α
.Lx881_0:
                        .quad            .Lx881_0_s
.Lx881_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:
                        mov              qword ptr [rbp + 1120], 2                      # result
                        mov              dword ptr [rbp + 1124], 3
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n586_lit_string_α
.Lx882_0:
                        .quad            .Lx882_0_s
.Lx882_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 14
                        mov              rax, qword ptr [rip + .Lx883_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n587_call_builtin_prolog_α
.Lx883_0:
                        .quad            .Lx883_0_s
.Lx883_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n587_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n588_lit_string_α
n587_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n589_lit_string_α
.Lx885_0:
                        .quad            .Lx885_0_s
.Lx885_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 5
                        mov              rax, qword ptr [rip + .Lx886_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n590_lit_string_α
.Lx886_0:
                        .quad            .Lx886_0_s
.Lx886_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 10
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n591_lit_string_α
.Lx887_0:
                        .quad            .Lx887_0_s
.Lx887_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 12
                        mov              rax, qword ptr [rip + .Lx888_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n592_var_ref_α
.Lx888_0:
                        .quad            .Lx888_0_s
.Lx888_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n593_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n593_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n594_call_builtin_prolog_α
n593_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n595_lit_string_α
n594_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 2
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n596_call_builtin_prolog_α
.Lx893_0:
                        .quad            .Lx893_0_s
.Lx893_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n596_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n597_call_builtin_prolog_α
n596_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n597_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 104
                                                                                        je    n614_call_builtin_prolog_α
                                                                                        jmp   n598_call_builtin_prolog_α
n597_call_builtin_prolog_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n598_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx896_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx896_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx896_41
                        cmp              esi, 1
                                                                                        jne   .Lx896_55
                        mov              r8, rax
                                                                                        jmp   .Lx896_40
.Lx896_55:
                        cmp              esi, 2
                                                                                        jne   .Lx896_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx896_41
                        mov              r8, rax
                                                                                        jmp   .Lx896_40
.Lx896_56:
                        cmp              eax, 72
                                                                                        jne   .Lx896_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx896_41
                        cmp              rax, r8
                                                                                        je    .Lx896_41
                        mov              r8, rax
                                                                                        jmp   .Lx896_40
.Lx896_41:
                        lea              r9, [rbp + 688]
.Lx896_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx896_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx896_43
                        cmp              esi, 1
                                                                                        jne   .Lx896_57
                        mov              r9, rax
                                                                                        jmp   .Lx896_42
.Lx896_57:
                        cmp              esi, 2
                                                                                        jne   .Lx896_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx896_43
                        mov              r9, rax
                                                                                        jmp   .Lx896_42
.Lx896_58:
                        cmp              eax, 72
                                                                                        jne   .Lx896_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx896_43
                        cmp              rax, r9
                                                                                        je    .Lx896_43
                        mov              r9, rax
                                                                                        jmp   .Lx896_42
.Lx896_43:
                        cmp              r8, r9
                                                                                        je    .Lx896_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx896_44
                        cmp              eax, 104
                                                                                        je    .Lx896_44
                        cmp              eax, 72
                                                                                        jne   .Lx896_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx896_44
                                                                                        jmp   .Lx896_45
.Lx896_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx896_53
                        cmp              eax, 104
                                                                                        je    .Lx896_53
                        cmp              eax, 72
                                                                                        jne   .Lx896_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx896_53
                                                                                        jmp   .Lx896_46
.Lx896_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx896_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx896_53
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
                                                                                        jmp   .Lx896_51
.Lx896_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx896_47
                        cmp              eax, 104
                                                                                        je    .Lx896_47
                        cmp              eax, 72
                                                                                        jne   .Lx896_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx896_47
                                                                                        jmp   .Lx896_48
.Lx896_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx896_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx896_53
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
                                                                                        jmp   .Lx896_51
.Lx896_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx896_49
                        cmp              edx, 80
                                                                                        je    .Lx896_53
                                                                                        jmp   .Lx896_52
.Lx896_49:
                        cmp              edx, 80
                                                                                        je    .Lx896_52
                        cmp              ecx, 5
                                                                                        je    .Lx896_53
                        cmp              edx, 5
                                                                                        je    .Lx896_53
                        cmp              ecx, 3
                                                                                        jne   .Lx896_50
                        cmp              edx, 3
                                                                                        jne   .Lx896_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx896_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx896_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx896_51
                                                                                        jmp   .Lx896_52
.Lx896_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx896_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx896_53
.Lx896_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx896_54
.Lx896_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx896_54
.Lx896_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx896_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n614_call_builtin_prolog_α
                                                                                        jmp   n599_var_ref_α
n598_call_builtin_prolog_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n600_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n600_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx899_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n601_lit_string_α
.Lx899_0:
                        .quad            .Lx899_0_s
.Lx899_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n601_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Lx900_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n602_var_ref_α
.Lx900_0:
                        .quad            .Lx900_0_s
.Lx900_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n603_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n603_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx903_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n604_lit_string_α
.Lx903_0:
                        .quad            .Lx903_0_s
.Lx903_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n604_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx904_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n605_var_ref_α
.Lx904_0:
                        .quad            .Lx904_0_s
.Lx904_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n605_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n606_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n606_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n607_call_builtin_prolog_α
n606_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n608_lit_string_α
n607_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 5
                        mov              rax, qword ptr [rip + .Lx909_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n609_var_ref_α
.Lx909_0:
                        .quad            .Lx909_0_s
.Lx909_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n610_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n610_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n611_call_builtin_prolog_α
n610_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n611_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n614_call_builtin_prolog_α
                                                                                        jmp   n612_call_builtin_prolog_α
n611_call_builtin_prolog_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx914_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx914_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx914_41
                        cmp              esi, 1
                                                                                        jne   .Lx914_55
                        mov              r8, rax
                                                                                        jmp   .Lx914_40
.Lx914_55:
                        cmp              esi, 2
                                                                                        jne   .Lx914_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx914_41
                        mov              r8, rax
                                                                                        jmp   .Lx914_40
.Lx914_56:
                        cmp              eax, 72
                                                                                        jne   .Lx914_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx914_41
                        cmp              rax, r8
                                                                                        je    .Lx914_41
                        mov              r8, rax
                                                                                        jmp   .Lx914_40
.Lx914_41:
                        lea              r9, [rbp + 192]
.Lx914_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx914_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx914_43
                        cmp              esi, 1
                                                                                        jne   .Lx914_57
                        mov              r9, rax
                                                                                        jmp   .Lx914_42
.Lx914_57:
                        cmp              esi, 2
                                                                                        jne   .Lx914_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx914_43
                        mov              r9, rax
                                                                                        jmp   .Lx914_42
.Lx914_58:
                        cmp              eax, 72
                                                                                        jne   .Lx914_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx914_43
                        cmp              rax, r9
                                                                                        je    .Lx914_43
                        mov              r9, rax
                                                                                        jmp   .Lx914_42
.Lx914_43:
                        cmp              r8, r9
                                                                                        je    .Lx914_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx914_44
                        cmp              eax, 104
                                                                                        je    .Lx914_44
                        cmp              eax, 72
                                                                                        jne   .Lx914_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx914_44
                                                                                        jmp   .Lx914_45
.Lx914_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx914_53
                        cmp              eax, 104
                                                                                        je    .Lx914_53
                        cmp              eax, 72
                                                                                        jne   .Lx914_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx914_53
                                                                                        jmp   .Lx914_46
.Lx914_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx914_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx914_53
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
                                                                                        jmp   .Lx914_51
.Lx914_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx914_47
                        cmp              eax, 104
                                                                                        je    .Lx914_47
                        cmp              eax, 72
                                                                                        jne   .Lx914_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx914_47
                                                                                        jmp   .Lx914_48
.Lx914_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx914_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx914_53
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
                                                                                        jmp   .Lx914_51
.Lx914_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx914_49
                        cmp              edx, 80
                                                                                        je    .Lx914_53
                                                                                        jmp   .Lx914_52
.Lx914_49:
                        cmp              edx, 80
                                                                                        je    .Lx914_52
                        cmp              ecx, 5
                                                                                        je    .Lx914_53
                        cmp              edx, 5
                                                                                        je    .Lx914_53
                        cmp              ecx, 3
                                                                                        jne   .Lx914_50
                        cmp              edx, 3
                                                                                        jne   .Lx914_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx914_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx914_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx914_51
                                                                                        jmp   .Lx914_52
.Lx914_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx914_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx914_53
.Lx914_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx914_54
.Lx914_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx914_54
.Lx914_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx914_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n614_call_builtin_prolog_α
                                                                                        jmp   n613_suspend_α
n612_call_builtin_prolog_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n613_suspend_α:
                        lea              rax, [rip + n613_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n613_suspend_β:
                                                                                        jmp   n614_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n614_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   proc_pj_test$2F4_ω
n614_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 7840]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cross$2F1_α
proc_cross$2F1_α:
proc_cross$2F1_α_body:
                        lea              rax, [rip + n924_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n918_call_builtin_prolog_α:
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
                                                                                        jne   .Lx926_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx926_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx926_101
.Lx926_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx926_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx926_240
                        add              rsp, 96
                                                                                        jmp   proc_cross$2F1_ω
.Lx926_240:
                                                                                        jmp   n919_var_ref_α
n918_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_cross$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n919_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n920_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n920_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n921_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n921_call_builtin_prolog_α:
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
.Lx931_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx931_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx931_41
                        cmp              esi, 1
                                                                                        jne   .Lx931_55
                        mov              r8, rax
                                                                                        jmp   .Lx931_40
.Lx931_55:
                        cmp              esi, 2
                                                                                        jne   .Lx931_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx931_41
                        mov              r8, rax
                                                                                        jmp   .Lx931_40
.Lx931_56:
                        cmp              eax, 72
                                                                                        jne   .Lx931_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx931_41
                        cmp              rax, r8
                                                                                        je    .Lx931_41
                        mov              r8, rax
                                                                                        jmp   .Lx931_40
.Lx931_41:
                        lea              r9, [rbp + 192]
.Lx931_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx931_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx931_43
                        cmp              esi, 1
                                                                                        jne   .Lx931_57
                        mov              r9, rax
                                                                                        jmp   .Lx931_42
.Lx931_57:
                        cmp              esi, 2
                                                                                        jne   .Lx931_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx931_43
                        mov              r9, rax
                                                                                        jmp   .Lx931_42
.Lx931_58:
                        cmp              eax, 72
                                                                                        jne   .Lx931_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx931_43
                        cmp              rax, r9
                                                                                        je    .Lx931_43
                        mov              r9, rax
                                                                                        jmp   .Lx931_42
.Lx931_43:
                        cmp              r8, r9
                                                                                        je    .Lx931_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx931_44
                        cmp              eax, 104
                                                                                        je    .Lx931_44
                        cmp              eax, 72
                                                                                        jne   .Lx931_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx931_44
                                                                                        jmp   .Lx931_45
.Lx931_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx931_53
                        cmp              eax, 104
                                                                                        je    .Lx931_53
                        cmp              eax, 72
                                                                                        jne   .Lx931_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx931_53
                                                                                        jmp   .Lx931_46
.Lx931_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx931_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx931_53
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
                                                                                        jmp   .Lx931_51
.Lx931_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx931_47
                        cmp              eax, 104
                                                                                        je    .Lx931_47
                        cmp              eax, 72
                                                                                        jne   .Lx931_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx931_47
                                                                                        jmp   .Lx931_48
.Lx931_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx931_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx931_53
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
                                                                                        jmp   .Lx931_51
.Lx931_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx931_49
                        cmp              edx, 80
                                                                                        je    .Lx931_53
                                                                                        jmp   .Lx931_52
.Lx931_49:
                        cmp              edx, 80
                                                                                        je    .Lx931_52
                        cmp              ecx, 5
                                                                                        je    .Lx931_53
                        cmp              edx, 5
                                                                                        je    .Lx931_53
                        cmp              ecx, 3
                                                                                        jne   .Lx931_50
                        cmp              edx, 3
                                                                                        jne   .Lx931_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx931_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx931_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx931_51
                                                                                        jmp   .Lx931_52
.Lx931_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx931_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx931_53
.Lx931_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx931_54
.Lx931_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx931_54
.Lx931_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx931_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx931_240
                        add              rsp, 96
                                                                                        jmp   n925_call_builtin_prolog_α
.Lx931_240:
                                                                                        jmp   n922_var_ref_α
n921_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n925_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n922_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n923_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n923_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx935_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx935_21
.Lx935_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx935_21:
                        mov              rdi, qword ptr [rip + .Lx935_0]                # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx935_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx935_3]
                        lea              rdx, [rip + .Lx935_4]
                                                                                        jmp   rax
.Lx935_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx935_2
.Lx935_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx935_2
.Lx935_1:
                        call             rt_faildescr@PLT
.Lx935_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx935_240
                        add              rsp, 96
                                                                                        jmp   n925_call_builtin_prolog_α
.Lx935_240:
                                                                                        jmp   n924_suspend_α
n923_call_proc_staged_β:
                                                                                        jmp   n925_call_builtin_prolog_α
.Lx935_0:
                        .quad            .Lx935_0_s
.Lx935_0_s:
                        .string          "context_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n924_suspend_α:
                        lea              rax, [rip + n924_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_cross$2F1_γ
n924_suspend_β:
                                                                                        jmp   n923_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n925_call_builtin_prolog_α:
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
                                                                                        je    proc_cross$2F1_ω
                                                                                        jmp   proc_cross$2F1_ω
n925_call_builtin_prolog_β:
                                                                                        jmp   proc_cross$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$3A$2F2_α
proc_$3A$2F2_α:
proc_$3A$2F2_α_body:
                        lea              rax, [rip + n954_suspend_β]
                        mov              qword ptr [rbp + 912], rax
#-----------------------------------------------------------------------------------------------------------------------
n939_call_builtin_prolog_α:
                        sub              rsp, 416
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
                        mov              eax, 3
                                                                                        jmp   .Lx967_101
.Lx967_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx967_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx967_240
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_ω
.Lx967_240:
                                                                                        jmp   n940_var_ref_α
n939_call_builtin_prolog_β:
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n940_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n941_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n941_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 13
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n942_call_builtin_prolog_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n942_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx971_2]
                                                                                        jmp   .Lx971_3
.Lx971_2:
                        .quad            .Lx971_2_s
.Lx971_2_s:
                        .string          "test_module_2"
.Lx971_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n955_call_builtin_prolog_α
                                                                                        jmp   n943_var_ref_α
n942_call_builtin_prolog_β:
                                                                                        jmp   n955_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n943_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n944_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 2
                        mov              rax, qword ptr [rip + .Lx974_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n945_lit_string_α
.Lx974_0:
                        .quad            .Lx974_0_s
.Lx974_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n945_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n946_lit_string_α
.Lx975_0:
                        .quad            .Lx975_0_s
.Lx975_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n946_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 11
                        mov              rax, qword ptr [rip + .Lx976_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n947_lit_string_α
.Lx976_0:
                        .quad            .Lx976_0_s
.Lx976_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n947_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 5
                        mov              rax, qword ptr [rip + .Lx977_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n948_var_ref_α
.Lx977_0:
                        .quad            .Lx977_0_s
.Lx977_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n948_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n949_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n949_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx980_240
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_ω
.Lx980_240:
                                                                                        jmp   n950_call_builtin_prolog_α
n949_call_builtin_prolog_β:
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n950_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx981_240
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_ω
.Lx981_240:
                                                                                        jmp   n951_lit_string_α
n950_call_builtin_prolog_β:
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n951_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 4
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n952_call_builtin_prolog_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "nono"
#-----------------------------------------------------------------------------------------------------------------------
n952_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n955_call_builtin_prolog_α
                                                                                        jmp   n953_call_builtin_prolog_α
n952_call_builtin_prolog_β:
                                                                                        jmp   n955_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n953_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        lea              r8, [rbp + 464]
.Lx984_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx984_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx984_41
                        cmp              esi, 1
                                                                                        jne   .Lx984_55
                        mov              r8, rax
                                                                                        jmp   .Lx984_40
.Lx984_55:
                        cmp              esi, 2
                                                                                        jne   .Lx984_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx984_41
                        mov              r8, rax
                                                                                        jmp   .Lx984_40
.Lx984_56:
                        cmp              eax, 72
                                                                                        jne   .Lx984_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx984_41
                        cmp              rax, r8
                                                                                        je    .Lx984_41
                        mov              r8, rax
                                                                                        jmp   .Lx984_40
.Lx984_41:
                        lea              r9, [rbp + 480]
.Lx984_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx984_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx984_43
                        cmp              esi, 1
                                                                                        jne   .Lx984_57
                        mov              r9, rax
                                                                                        jmp   .Lx984_42
.Lx984_57:
                        cmp              esi, 2
                                                                                        jne   .Lx984_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx984_43
                        mov              r9, rax
                                                                                        jmp   .Lx984_42
.Lx984_58:
                        cmp              eax, 72
                                                                                        jne   .Lx984_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx984_43
                        cmp              rax, r9
                                                                                        je    .Lx984_43
                        mov              r9, rax
                                                                                        jmp   .Lx984_42
.Lx984_43:
                        cmp              r8, r9
                                                                                        je    .Lx984_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx984_44
                        cmp              eax, 104
                                                                                        je    .Lx984_44
                        cmp              eax, 72
                                                                                        jne   .Lx984_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx984_44
                                                                                        jmp   .Lx984_45
.Lx984_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx984_53
                        cmp              eax, 104
                                                                                        je    .Lx984_53
                        cmp              eax, 72
                                                                                        jne   .Lx984_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx984_53
                                                                                        jmp   .Lx984_46
.Lx984_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx984_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx984_53
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
                                                                                        jmp   .Lx984_51
.Lx984_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx984_47
                        cmp              eax, 104
                                                                                        je    .Lx984_47
                        cmp              eax, 72
                                                                                        jne   .Lx984_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx984_47
                                                                                        jmp   .Lx984_48
.Lx984_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx984_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx984_53
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
                                                                                        jmp   .Lx984_51
.Lx984_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx984_49
                        cmp              edx, 80
                                                                                        je    .Lx984_53
                                                                                        jmp   .Lx984_52
.Lx984_49:
                        cmp              edx, 80
                                                                                        je    .Lx984_52
                        cmp              ecx, 5
                                                                                        je    .Lx984_53
                        cmp              edx, 5
                                                                                        je    .Lx984_53
                        cmp              ecx, 3
                                                                                        jne   .Lx984_50
                        cmp              edx, 3
                                                                                        jne   .Lx984_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx984_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx984_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx984_51
                                                                                        jmp   .Lx984_52
.Lx984_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx984_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx984_53
.Lx984_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx984_54
.Lx984_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx984_54
.Lx984_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx984_54:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n955_call_builtin_prolog_α
                                                                                        jmp   n954_suspend_α
n953_call_builtin_prolog_β:
                                                                                        jmp   n955_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n954_suspend_α:
                        lea              rax, [rip + n954_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 416
                                                                                        jmp   proc_$3A$2F2_γ
n954_suspend_β:
                                                                                        jmp   n955_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n955_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   n956_var_ref_α
n955_call_builtin_prolog_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n956_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n957_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n957_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 13
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n958_call_builtin_prolog_α
.Lx990_0:
                        .quad            .Lx990_0_s
.Lx990_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n958_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx991_2]
                                                                                        jmp   .Lx991_3
.Lx991_2:
                        .quad            .Lx991_2_s
.Lx991_2_s:
                        .string          "test_module_2"
.Lx991_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n966_call_builtin_prolog_α
                                                                                        jmp   n959_var_ref_α
n958_call_builtin_prolog_β:
                                                                                        jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n959_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n960_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n960_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx994_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n961_lit_string_α
.Lx994_0:
                        .quad            .Lx994_0_s
.Lx994_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n961_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 4
                        mov              rax, qword ptr [rip + .Lx995_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n962_lit_string_α
.Lx995_0:
                        .quad            .Lx995_0_s
.Lx995_0_s:
                        .string          "nono"
#-----------------------------------------------------------------------------------------------------------------------
n962_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 4
                        mov              rax, qword ptr [rip + .Lx996_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n963_call_builtin_prolog_α
.Lx996_0:
                        .quad            .Lx996_0_s
.Lx996_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n963_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        je    n966_call_builtin_prolog_α
                                                                                        jmp   n964_call_builtin_prolog_α
n963_call_builtin_prolog_β:
                                                                                        jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n964_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx998_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx998_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx998_41
                        cmp              esi, 1
                                                                                        jne   .Lx998_55
                        mov              r8, rax
                                                                                        jmp   .Lx998_40
.Lx998_55:
                        cmp              esi, 2
                                                                                        jne   .Lx998_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx998_41
                        mov              r8, rax
                                                                                        jmp   .Lx998_40
.Lx998_56:
                        cmp              eax, 72
                                                                                        jne   .Lx998_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx998_41
                        cmp              rax, r8
                                                                                        je    .Lx998_41
                        mov              r8, rax
                                                                                        jmp   .Lx998_40
.Lx998_41:
                        lea              r9, [rbp + 160]
.Lx998_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx998_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx998_43
                        cmp              esi, 1
                                                                                        jne   .Lx998_57
                        mov              r9, rax
                                                                                        jmp   .Lx998_42
.Lx998_57:
                        cmp              esi, 2
                                                                                        jne   .Lx998_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx998_43
                        mov              r9, rax
                                                                                        jmp   .Lx998_42
.Lx998_58:
                        cmp              eax, 72
                                                                                        jne   .Lx998_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx998_43
                        cmp              rax, r9
                                                                                        je    .Lx998_43
                        mov              r9, rax
                                                                                        jmp   .Lx998_42
.Lx998_43:
                        cmp              r8, r9
                                                                                        je    .Lx998_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx998_44
                        cmp              eax, 104
                                                                                        je    .Lx998_44
                        cmp              eax, 72
                                                                                        jne   .Lx998_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx998_44
                                                                                        jmp   .Lx998_45
.Lx998_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx998_53
                        cmp              eax, 104
                                                                                        je    .Lx998_53
                        cmp              eax, 72
                                                                                        jne   .Lx998_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx998_53
                                                                                        jmp   .Lx998_46
.Lx998_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx998_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx998_53
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
                                                                                        jmp   .Lx998_51
.Lx998_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx998_47
                        cmp              eax, 104
                                                                                        je    .Lx998_47
                        cmp              eax, 72
                                                                                        jne   .Lx998_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx998_47
                                                                                        jmp   .Lx998_48
.Lx998_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx998_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx998_53
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
                                                                                        jmp   .Lx998_51
.Lx998_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx998_49
                        cmp              edx, 80
                                                                                        je    .Lx998_53
                                                                                        jmp   .Lx998_52
.Lx998_49:
                        cmp              edx, 80
                                                                                        je    .Lx998_52
                        cmp              ecx, 5
                                                                                        je    .Lx998_53
                        cmp              edx, 5
                                                                                        je    .Lx998_53
                        cmp              ecx, 3
                                                                                        jne   .Lx998_50
                        cmp              edx, 3
                                                                                        jne   .Lx998_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx998_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx998_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx998_51
                                                                                        jmp   .Lx998_52
.Lx998_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx998_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx998_53
.Lx998_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx998_54
.Lx998_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx998_54
.Lx998_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx998_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n966_call_builtin_prolog_α
                                                                                        jmp   n965_suspend_α
n964_call_builtin_prolog_β:
                                                                                        jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n965_suspend_α:
                        lea              rax, [rip + n965_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3A$2F2_γ
n965_suspend_β:
                                                                                        jmp   n966_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n966_call_builtin_prolog_α:
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
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   proc_$3A$2F2_ω
n966_call_builtin_prolog_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_β:
                                                                                        jmp   qword ptr [rbp + 912]
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_mqual$2F1_α
proc_mqual$2F1_α:
proc_mqual$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1002_call_builtin_prolog_α:
                        sub              rsp, 176
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1009_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1009_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1009_101
.Lx1009_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1009_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1009_240
                        add              rsp, 176
                                                                                        jmp   proc_mqual$2F1_ω
.Lx1009_240:
                                                                                        jmp   n1003_var_ref_α
n1002_call_builtin_prolog_β:
                        add              rsp, 176
                                                                                        jmp   proc_mqual$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1003_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n1004_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n1005_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_call_builtin_prolog_α:
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
.Lx1014_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1014_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1014_41
                        cmp              esi, 1
                                                                                        jne   .Lx1014_55
                        mov              r8, rax
                                                                                        jmp   .Lx1014_40
.Lx1014_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1014_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1014_41
                        mov              r8, rax
                                                                                        jmp   .Lx1014_40
.Lx1014_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1014_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1014_41
                        cmp              rax, r8
                                                                                        je    .Lx1014_41
                        mov              r8, rax
                                                                                        jmp   .Lx1014_40
.Lx1014_41:
                        lea              r9, [rbp + 160]
.Lx1014_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1014_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1014_43
                        cmp              esi, 1
                                                                                        jne   .Lx1014_57
                        mov              r9, rax
                                                                                        jmp   .Lx1014_42
.Lx1014_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1014_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1014_43
                        mov              r9, rax
                                                                                        jmp   .Lx1014_42
.Lx1014_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1014_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1014_43
                        cmp              rax, r9
                                                                                        je    .Lx1014_43
                        mov              r9, rax
                                                                                        jmp   .Lx1014_42
.Lx1014_43:
                        cmp              r8, r9
                                                                                        je    .Lx1014_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1014_44
                        cmp              eax, 104
                                                                                        je    .Lx1014_44
                        cmp              eax, 72
                                                                                        jne   .Lx1014_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1014_44
                                                                                        jmp   .Lx1014_45
.Lx1014_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1014_53
                        cmp              eax, 104
                                                                                        je    .Lx1014_53
                        cmp              eax, 72
                                                                                        jne   .Lx1014_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1014_53
                                                                                        jmp   .Lx1014_46
.Lx1014_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1014_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1014_53
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
                                                                                        jmp   .Lx1014_51
.Lx1014_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1014_47
                        cmp              eax, 104
                                                                                        je    .Lx1014_47
                        cmp              eax, 72
                                                                                        jne   .Lx1014_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1014_47
                                                                                        jmp   .Lx1014_48
.Lx1014_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1014_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1014_53
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
                                                                                        jmp   .Lx1014_51
.Lx1014_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1014_49
                        cmp              edx, 80
                                                                                        je    .Lx1014_53
                                                                                        jmp   .Lx1014_52
.Lx1014_49:
                        cmp              edx, 80
                                                                                        je    .Lx1014_52
                        cmp              ecx, 5
                                                                                        je    .Lx1014_53
                        cmp              edx, 5
                                                                                        je    .Lx1014_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1014_50
                        cmp              edx, 3
                                                                                        jne   .Lx1014_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1014_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1014_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1014_51
                                                                                        jmp   .Lx1014_52
.Lx1014_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1014_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1014_53
.Lx1014_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1014_54
.Lx1014_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1014_54
.Lx1014_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1014_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n1008_call_builtin_prolog_α
                                                                                        jmp   n1006_move_label_α
n1005_call_builtin_prolog_β:
                                                                                        jmp   n1008_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_move_label_α:
                        lea              rax, [rip + n1008_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 48], rax
                        add              rsp, 176
                                                                                        jmp   proc_mqual$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n1007_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n1007_disjunction_β:
                                                                                        jmp   proc_mqual$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1008_call_builtin_prolog_α:
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
                                                                                        je    proc_mqual$2F1_ω
                                                                                        jmp   proc_mqual$2F1_ω
n1008_call_builtin_prolog_β:
                                                                                        jmp   proc_mqual$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_β:
                                                                                        jmp   n1007_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_dcα:
                        pop              r11
                        sub              rsp, 288
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 240], r11
                        lea              rax, [rip + .Lx1020_2]
                        mov              qword ptr [rbp + 248], rax
                        lea              rax, [rip + .Lx1020_3]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp                                       # fb
                        mov              esi, 208                                       # suffix_off
                        mov              edx, 240                                       # region_bytes
                        mov              ecx, 1                                         # np
                        mov              r8d, 1                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_mqual$2F1_α_body
.Lx1020_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1020_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -272
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_4$2F0_α
proc_pj_dir_4$2F0_α:
proc_pj_dir_4$2F0_α_body:
                        lea              rax, [rip + n1024_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1021_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1026_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1026_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1026_101
.Lx1026_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1026_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1026_240
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_4$2F0_ω
.Lx1026_240:
                                                                                        jmp   n1022_lit_string_α
n1021_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1022_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1027_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1023_call_proc_staged_α
.Lx1027_0:
                        .quad            .Lx1027_0_s
.Lx1027_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n1023_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1029_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1029_21
.Lx1029_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx1029_21:
                        mov              rdi, qword ptr [rip + .Lx1029_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1029_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1029_3]
                        lea              rdx, [rip + .Lx1029_4]
                                                                                        jmp   rax
.Lx1029_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1029_2
.Lx1029_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1029_2
.Lx1029_1:
                        call             rt_faildescr@PLT
.Lx1029_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1029_240
                        add              rsp, 16
                                                                                        jmp   n1025_call_builtin_prolog_α
.Lx1029_240:
                                                                                        jmp   n1024_suspend_α
n1023_call_proc_staged_β:
                                                                                        jmp   n1025_call_builtin_prolog_α
.Lx1029_0:
                        .quad            .Lx1029_0_s
.Lx1029_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1024_suspend_α:
                        lea              rax, [rip + n1024_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n1024_suspend_β:
                                                                                        jmp   n1023_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1025_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   proc_pj_dir_4$2F0_ω
n1025_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_4$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_2$2F0_α
proc_pj_dir_2$2F0_α:
proc_pj_dir_2$2F0_α_body:
                        lea              rax, [rip + n1036_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1033_call_builtin_prolog_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1038_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1038_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1038_101
.Lx1038_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1038_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1038_240
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_2$2F0_ω
.Lx1038_240:
                                                                                        jmp   n1034_lit_string_α
n1033_call_builtin_prolog_β:
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1039_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1035_call_proc_staged_α
.Lx1039_0:
                        .quad            .Lx1039_0_s
.Lx1039_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n1035_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1041_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1041_21
.Lx1041_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 128]                     # v
                        mov              rdx, qword ptr [rbp + 136]                     # v
                        call             rt_arg_stage@PLT
.Lx1041_21:
                        mov              rdi, qword ptr [rip + .Lx1041_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1041_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1041_3]
                        lea              rdx, [rip + .Lx1041_4]
                                                                                        jmp   rax
.Lx1041_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1041_2
.Lx1041_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1041_2
.Lx1041_1:
                        call             rt_faildescr@PLT
.Lx1041_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1041_240
                        add              rsp, 16
                                                                                        jmp   n1037_call_builtin_prolog_α
.Lx1041_240:
                                                                                        jmp   n1036_suspend_α
n1035_call_proc_staged_β:
                                                                                        jmp   n1037_call_builtin_prolog_α
.Lx1041_0:
                        .quad            .Lx1041_0_s
.Lx1041_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1036_suspend_α:
                        lea              rax, [rip + n1036_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 16
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n1036_suspend_β:
                                                                                        jmp   n1035_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1037_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   proc_pj_dir_2$2F0_ω
n1037_call_builtin_prolog_β:
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
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_2$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n1055_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1045_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1057_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1057_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1057_101
.Lx1057_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1057_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1057_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx1057_240:
                                                                                        jmp   n1046_lit_string_α
n1045_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 11
                        mov              rax, qword ptr [rip + .Lx1058_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1047_lit_string_α
.Lx1058_0:
                        .quad            .Lx1058_0_s
.Lx1058_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1048_lit_string_α
.Lx1059_0:
                        .quad            .Lx1059_0_s
.Lx1059_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1049_lit_string_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1049_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 11
                        mov              rax, qword ptr [rip + .Lx1061_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1050_lit_integer_α
.Lx1061_0:
                        .quad            .Lx1061_0_s
.Lx1061_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1051_call_builtin_prolog_α
.Lx1062_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1051_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1063_240
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
.Lx1063_240:
                                                                                        jmp   n1052_lit_string_α
n1051_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:
                        mov              qword ptr [rbp + 160], 2                       # result
                        mov              dword ptr [rbp + 164], 2
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1053_call_builtin_prolog_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1053_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1065_240
                        add              rsp, 256
                                                                                        jmp   n1056_call_builtin_prolog_α
.Lx1065_240:
                                                                                        jmp   n1054_call_proc_staged_α
n1053_call_builtin_prolog_β:
                        add              rsp, 256
                                                                                        jmp   n1056_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1054_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1067_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1067_21
.Lx1067_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx1067_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1067_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1067_23
.Lx1067_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx1067_23:
                        mov              rdi, qword ptr [rip + .Lx1067_0]               # name
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1067_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1067_3]
                        lea              rdx, [rip + .Lx1067_4]
                                                                                        jmp   rax
.Lx1067_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1067_2
.Lx1067_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1067_2
.Lx1067_1:
                        call             rt_faildescr@PLT
.Lx1067_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1067_240
                        add              rsp, 256
                                                                                        jmp   n1056_call_builtin_prolog_α
.Lx1067_240:
                                                                                        jmp   n1055_suspend_α
n1054_call_proc_staged_β:
                                                                                        jmp   n1056_call_builtin_prolog_α
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1055_suspend_α:
                        lea              rax, [rip + n1055_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 256
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n1055_suspend_β:
                                                                                        jmp   n1054_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1056_call_builtin_prolog_α:
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
n1056_call_builtin_prolog_β:
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
                        .globl           proc_t$2F1_α
proc_t$2F1_α:
proc_t$2F1_α_body:
                        lea              rax, [rip + n1090_suspend_β]
                        mov              qword ptr [rbp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n1071_call_builtin_prolog_α:
                        sub              rsp, 560
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1092_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1092_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1092_101
.Lx1092_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1092_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1092_240
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
.Lx1092_240:
                                                                                        jmp   n1072_var_ref_α
n1071_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1072_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n1073_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1073_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n1074_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_call_builtin_prolog_α:
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
.Lx1097_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1097_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1097_41
                        cmp              esi, 1
                                                                                        jne   .Lx1097_55
                        mov              r8, rax
                                                                                        jmp   .Lx1097_40
.Lx1097_55:
                        cmp              esi, 2
                                                                                        jne   .Lx1097_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1097_41
                        mov              r8, rax
                                                                                        jmp   .Lx1097_40
.Lx1097_56:
                        cmp              eax, 72
                                                                                        jne   .Lx1097_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx1097_41
                        cmp              rax, r8
                                                                                        je    .Lx1097_41
                        mov              r8, rax
                                                                                        jmp   .Lx1097_40
.Lx1097_41:
                        lea              r9, [rbp + 688]
.Lx1097_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx1097_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1097_43
                        cmp              esi, 1
                                                                                        jne   .Lx1097_57
                        mov              r9, rax
                                                                                        jmp   .Lx1097_42
.Lx1097_57:
                        cmp              esi, 2
                                                                                        jne   .Lx1097_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx1097_43
                        mov              r9, rax
                                                                                        jmp   .Lx1097_42
.Lx1097_58:
                        cmp              eax, 72
                                                                                        jne   .Lx1097_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx1097_43
                        cmp              rax, r9
                                                                                        je    .Lx1097_43
                        mov              r9, rax
                                                                                        jmp   .Lx1097_42
.Lx1097_43:
                        cmp              r8, r9
                                                                                        je    .Lx1097_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1097_44
                        cmp              eax, 104
                                                                                        je    .Lx1097_44
                        cmp              eax, 72
                                                                                        jne   .Lx1097_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1097_44
                                                                                        jmp   .Lx1097_45
.Lx1097_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1097_53
                        cmp              eax, 104
                                                                                        je    .Lx1097_53
                        cmp              eax, 72
                                                                                        jne   .Lx1097_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1097_53
                                                                                        jmp   .Lx1097_46
.Lx1097_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1097_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1097_53
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
                                                                                        jmp   .Lx1097_51
.Lx1097_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1097_47
                        cmp              eax, 104
                                                                                        je    .Lx1097_47
                        cmp              eax, 72
                                                                                        jne   .Lx1097_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx1097_47
                                                                                        jmp   .Lx1097_48
.Lx1097_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx1097_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx1097_53
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
                                                                                        jmp   .Lx1097_51
.Lx1097_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx1097_49
                        cmp              edx, 80
                                                                                        je    .Lx1097_53
                                                                                        jmp   .Lx1097_52
.Lx1097_49:
                        cmp              edx, 80
                                                                                        je    .Lx1097_52
                        cmp              ecx, 5
                                                                                        je    .Lx1097_53
                        cmp              edx, 5
                                                                                        je    .Lx1097_53
                        cmp              ecx, 3
                                                                                        jne   .Lx1097_50
                        cmp              edx, 3
                                                                                        jne   .Lx1097_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1097_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx1097_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx1097_51
                                                                                        jmp   .Lx1097_52
.Lx1097_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx1097_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx1097_53
.Lx1097_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx1097_54
.Lx1097_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx1097_54
.Lx1097_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1097_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1097_240
                        add              rsp, 560
                                                                                        jmp   n1091_call_builtin_prolog_α
.Lx1097_240:
                                                                                        jmp   n1075_lit_string_α
n1074_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   n1091_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1075_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 11
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1076_lit_string_α
.Lx1098_0:
                        .quad            .Lx1098_0_s
.Lx1098_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n1076_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx1099_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1077_lit_string_α
.Lx1099_0:
                        .quad            .Lx1099_0_s
.Lx1099_0_s:
                        .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n1077_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 2
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1078_lit_string_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
n1078_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 4
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1079_lit_string_α
.Lx1101_0:
                        .quad            .Lx1101_0_s
.Lx1101_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n1079_lit_string_α:
                        mov              qword ptr [rbp + 320], 2                       # result
                        mov              dword ptr [rbp + 324], 1
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1080_var_ref_α
.Lx1102_0:
                        .quad            .Lx1102_0_s
.Lx1102_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n1080_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n1081_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1081_lit_integer_α:
                        mov              qword ptr [rbp + 224], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1105_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1082_call_builtin_prolog_α
.Lx1105_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1082_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1106_240
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
.Lx1106_240:
                                                                                        jmp   n1083_call_builtin_prolog_α
n1082_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1083_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1107_240
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
.Lx1107_240:
                                                                                        jmp   n1084_lit_string_α
n1083_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1084_lit_string_α:
                        mov              qword ptr [rbp + 544], 2                       # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Lx1108_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1085_var_ref_α
.Lx1108_0:
                        .quad            .Lx1108_0_s
.Lx1108_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n1085_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1086_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1086_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx1111_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1087_call_builtin_prolog_α
.Lx1111_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1087_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1112_240
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
.Lx1112_240:
                                                                                        jmp   n1088_call_builtin_prolog_α
n1087_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1088_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1113_240
                        add              rsp, 560
                                                                                        jmp   n1091_call_builtin_prolog_α
.Lx1113_240:
                                                                                        jmp   n1089_call_proc_staged_α
n1088_call_builtin_prolog_β:
                        add              rsp, 560
                                                                                        jmp   n1091_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1089_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1115_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1115_21
.Lx1115_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 176]                     # v
                        mov              rdx, qword ptr [rbp + 184]                     # v
                        call             rt_arg_stage@PLT
.Lx1115_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1115_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1115_23
.Lx1115_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 560]                     # v
                        mov              rdx, qword ptr [rbp + 568]                     # v
                        call             rt_arg_stage@PLT
.Lx1115_23:
                        mov              edi, 3                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1115_1
                        lea              rcx, [rip + .Lx1115_3]
                        lea              rdx, [rip + .Lx1115_4]
                                                                                        jmp   rax
.Lx1115_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx1115_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1115_2
.Lx1115_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1115_2
.Lx1115_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx1115_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1115_2
.Lx1115_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1115_2
.Lx1115_1:
                        call             rt_faildescr@PLT
.Lx1115_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1115_240
                        add              rsp, 560
                                                                                        jmp   n1091_call_builtin_prolog_α
.Lx1115_240:
                                                                                        jmp   n1090_suspend_α
n1089_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx1115_0:
                        .quad            .Lx1115_0_s
.Lx1115_0_s:
                        .string          ":/2"
#-----------------------------------------------------------------------------------------------------------------------
n1090_suspend_α:
                        lea              rax, [rip + n1090_suspend_β]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 560
                                                                                        jmp   proc_t$2F1_γ
n1090_suspend_β:
                                                                                        jmp   n1089_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1091_call_builtin_prolog_α:
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
                                                                                        je    proc_t$2F1_ω
                                                                                        jmp   proc_t$2F1_ω
n1091_call_builtin_prolog_β:
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_β:
                                                                                        jmp   qword ptr [rbp + 736]
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_module$2F0_α
proc_test_module$2F0_α:
proc_test_module$2F0_α_body:
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1119_call_builtin_prolog_α:
                        sub              rsp, 128
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
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1127_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1127_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1127_101
.Lx1127_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1127_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1127_240
                        add              rsp, 128
                                                                                        jmp   proc_test_module$2F0_ω
.Lx1127_240:
                                                                                        jmp   n1120_lit_string_α
n1119_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   proc_test_module$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:
                        mov              qword ptr [rbp + 240], 2                       # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1121_lit_string_α
.Lx1128_0:
                        .quad            .Lx1128_0_s
.Lx1128_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1121_lit_string_α:
                        mov              qword ptr [rbp + 144], 2                       # result
                        mov              dword ptr [rbp + 148], 6
                        mov              rax, qword ptr [rip + .Lx1129_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1122_lit_string_α
.Lx1129_0:
                        .quad            .Lx1129_0_s
.Lx1129_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n1122_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Lx1130_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1123_call_builtin_prolog_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1123_call_builtin_prolog_α:
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
                        cmp              eax, 104
                                                                                        jne   .Lx1131_240
                        add              rsp, 128
                                                                                        jmp   n1126_call_builtin_prolog_α
.Lx1131_240:
                                                                                        jmp   n1124_call_proc_staged_α
n1123_call_builtin_prolog_β:
                        add              rsp, 128
                                                                                        jmp   n1126_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1124_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1133_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1133_21
.Lx1133_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 160]                     # v
                        mov              rdx, qword ptr [rbp + 168]                     # v
                        call             rt_arg_stage@PLT
.Lx1133_21:
                        mov              rdi, qword ptr [rip + .Lx1133_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1133_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1133_3]
                        lea              rdx, [rip + .Lx1133_4]
                                                                                        jmp   rax
.Lx1133_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1133_2
.Lx1133_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1133_2
.Lx1133_1:
                        call             rt_faildescr@PLT
.Lx1133_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1133_240
                        add              rsp, 128
                                                                                        jmp   n1126_call_builtin_prolog_α
.Lx1133_240:
                                                                                        jmp   n1125_suspend_α
n1124_call_proc_staged_β:
                                                                                        jmp   n1126_call_builtin_prolog_α
.Lx1133_0:
                        .quad            .Lx1133_0_s
.Lx1133_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1125_suspend_α:
                        lea              rax, [rip + n1125_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 128
                                                                                        jmp   proc_test_module$2F0_γ
n1125_suspend_β:
                                                                                        jmp   n1124_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1126_call_builtin_prolog_α:
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
                                                                                        je    proc_test_module$2F0_ω
                                                                                        jmp   proc_test_module$2F0_ω
n1126_call_builtin_prolog_β:
                                                                                        jmp   proc_test_module$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_3$2F0_α
proc_pj_dir_3$2F0_α:
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1142_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1137_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1144_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1144_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1144_101
.Lx1144_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1144_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1144_240
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_3$2F0_ω
.Lx1144_240:
                                                                                        jmp   n1138_lit_string_α
n1137_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1138_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 5
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1139_lit_string_α
.Lx1145_0:
                        .quad            .Lx1145_0_s
.Lx1145_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n1139_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1140_call_builtin_prolog_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1140_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1147_240
                        add              rsp, 96
                                                                                        jmp   n1143_call_builtin_prolog_α
.Lx1147_240:
                                                                                        jmp   n1141_call_proc_staged_α
n1140_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n1143_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1141_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1149_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1149_21
.Lx1149_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx1149_21:
                        mov              rdi, qword ptr [rip + .Lx1149_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1149_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1149_3]
                        lea              rdx, [rip + .Lx1149_4]
                                                                                        jmp   rax
.Lx1149_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1149_2
.Lx1149_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1149_2
.Lx1149_1:
                        call             rt_faildescr@PLT
.Lx1149_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1149_240
                        add              rsp, 96
                                                                                        jmp   n1143_call_builtin_prolog_α
.Lx1149_240:
                                                                                        jmp   n1142_suspend_α
n1141_call_proc_staged_β:
                                                                                        jmp   n1143_call_builtin_prolog_α
.Lx1149_0:
                        .quad            .Lx1149_0_s
.Lx1149_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n1142_suspend_α:
                        lea              rax, [rip + n1142_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1142_suspend_β:
                                                                                        jmp   n1141_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1143_call_builtin_prolog_α:
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
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   proc_pj_dir_3$2F0_ω
n1143_call_builtin_prolog_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_1$2F0_α
proc_pj_dir_1$2F0_α:
proc_pj_dir_1$2F0_α_body:
                        lea              rax, [rip + n1158_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1153_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1160_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx1160_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx1160_101
.Lx1160_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1160_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1160_240
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
.Lx1160_240:
                                                                                        jmp   n1154_lit_string_α
n1153_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 7
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1155_lit_string_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1155_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 6
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1156_call_builtin_prolog_α
.Lx1162_0:
                        .quad            .Lx1162_0_s
.Lx1162_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1156_call_builtin_prolog_α:
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
                                                                                        jne   .Lx1163_240
                        add              rsp, 96
                                                                                        jmp   n1159_call_builtin_prolog_α
.Lx1163_240:
                                                                                        jmp   n1157_call_proc_staged_α
n1156_call_builtin_prolog_β:
                        add              rsp, 96
                                                                                        jmp   n1159_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n1157_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1165_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1165_21
.Lx1165_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 144]                     # v
                        mov              rdx, qword ptr [rbp + 152]                     # v
                        call             rt_arg_stage@PLT
.Lx1165_21:
                        mov              rdi, qword ptr [rip + .Lx1165_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1165_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1165_3]
                        lea              rdx, [rip + .Lx1165_4]
                                                                                        jmp   rax
.Lx1165_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1165_2
.Lx1165_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1165_2
.Lx1165_1:
                        call             rt_faildescr@PLT
.Lx1165_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1165_240
                        add              rsp, 96
                                                                                        jmp   n1159_call_builtin_prolog_α
.Lx1165_240:
                                                                                        jmp   n1158_suspend_α
n1157_call_proc_staged_β:
                                                                                        jmp   n1159_call_builtin_prolog_α
.Lx1165_0:
                        .quad            .Lx1165_0_s
.Lx1165_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1158_suspend_α:
                        lea              rax, [rip + n1158_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 96
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1158_suspend_β:
                                                                                        jmp   n1157_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1159_call_builtin_prolog_α:
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
n1159_call_builtin_prolog_β:
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 5040
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 7904
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "cross/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_cross$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          ":/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_$3A$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 944
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "mqual/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_mqual$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 224
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_mqual$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "pj_dir_4/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_4$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
.Lstartup_pname6:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 160
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
.Lstartup_pname8:       .string          "t/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_t$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 768
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "test_module/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_test_module$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n1169_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx1171_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n1170_call_proc_staged_α
.Lx1171_0:
                        .quad            .Lx1171_0_s
.Lx1171_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n1170_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1173_20
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1173_21
.Lx1173_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rsp + 0]                       # v
                        mov              rdx, qword ptr [rsp + 8]                       # v
                        call             rt_arg_stage@PLT
.Lx1173_21:
                        mov              rdi, qword ptr [rip + .Lx1173_0]               # name
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx1173_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx1173_3]
                        lea              rdx, [rip + .Lx1173_4]
                                                                                        jmp   rax
.Lx1173_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1173_2
.Lx1173_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1173_2
.Lx1173_1:
                        call             rt_faildescr@PLT
.Lx1173_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx1173_240
                        add              rsp, 16
                                                                                        jmp   main_ω
.Lx1173_240:
                        add              rsp, 16
                                                                                        jmp   main_γ
n1170_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx1173_0:
                        .quad            .Lx1173_0_s
.Lx1173_0_s:
                        .string          "end_tests/1"
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
