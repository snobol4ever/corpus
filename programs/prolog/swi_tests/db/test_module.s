                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 5072
                        mov              [rsp + 5048], rcx
                        mov              [rsp + 5056], rdx
                        mov              [rsp + 5064], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 4976
                        mov              edx, 5040
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n24_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx158_101
.Lx158_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx158_101:
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
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 4960], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n3_op11_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n7_var_ref_α
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n8_var_ref_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 4576], 1
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n11_op11_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 4784], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n12_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4528]
                        mov              rsi, qword ptr [rip + .Lx173_2]
                                                                                        jmp   .Lx173_3
.Lx173_2:
                        .quad            .Lx173_2_s
.Lx173_2_s:
                        .string          "clause"
.Lx173_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n13_var_ref_α
n11_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n15_op11_α
n12_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3960], rax
                        lea              rdi, [rbp + 3952]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n17_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
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
                        lea              r9, [rbp + 4736]
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
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n18_var_ref_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 4496], 1
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rbp + 4504], rax
                                                                                        jmp   n19_var_ref_α
.Lx179_0:
                        .quad            .Lx179_0_s
.Lx179_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                                                                                        jmp   n21_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 3920], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 3928], rax
                                                                                        jmp   n23_op11_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 4656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx188_20
                        mov              rax, qword ptr [rbp + 4688]
                        mov              rdx, qword ptr [rbp + 4696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx188_21
.Lx188_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4688]
                        mov              rdx, qword ptr [rbp + 4696]
                        call             rt_arg_stage@PLT
.Lx188_21:
                        mov              edi, 2
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx188_1
                        lea              rcx, [rip + .Lx188_3]
                        lea              rdx, [rip + .Lx188_4]
                                                                                        jmp   rax
.Lx188_3:
                        mov              qword ptr [rbp + 4664], rsp
                        mov              rax, qword ptr [rbp + 4656]
                        test             rax, rax
                                                                                        jne   .Lx188_5
                        mov              qword ptr [rbp + 4656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx188_2
.Lx188_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx188_2
.Lx188_4:
                        mov              rax, qword ptr [rbp + 4656]
                        test             rax, rax
                                                                                        jne   .Lx188_6
                        mov              qword ptr [rbp + 4656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx188_2
.Lx188_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx188_2
.Lx188_1:
                        call             rt_faildescr@PLT
.Lx188_2:
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n24_suspend_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 4664]
                                                                                        jmp   qword ptr [rsp]
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "cross/1"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 4400], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n25_lit_string_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3872]
                        mov              rsi, qword ptr [rip + .Lx190_2]
                                                                                        jmp   .Lx190_3
.Lx190_2:
                        .quad            .Lx190_2_s
.Lx190_2_s:
                        .string          "clause"
.Lx190_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n26_var_ref_α
n23_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_suspend_α:
                        lea              rax, [rip + n24_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n24_suspend_β:
                                                                                        jmp   n21_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n28_lit_string_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3280]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n30_var_ref_α
n27_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n31_op11_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 3840], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n32_var_ref_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n34_op11_α
n31_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n35_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n36_op11_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n37_op11_α
n34_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 3744], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 3752], rax
                                                                                        jmp   n38_op11_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3208], rax
                        lea              rdi, [rbp + 3200]
                        mov              rsi, qword ptr [rip + .Lx207_2]
                                                                                        jmp   .Lx207_3
.Lx207_2:
                        .quad            .Lx207_2_s
.Lx207_2_s:
                        .string          "clause"
.Lx207_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_var_ref_α
n36_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
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
                        lea              r9, [rbp + 4240]
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
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n41_lit_string_α
n37_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n42_op11_α
n38_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2632], rax
                        lea              rdi, [rbp + 2624]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n44_var_ref_α
n40_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 4192], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n45_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
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
                        lea              r9, [rbp + 3696]
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
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n46_lit_string_α
n42_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n47_var_ref_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4184], rax
                        .section         .rodata
.Lrkfn219:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rbp + 4176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4160], rax
                        mov              qword ptr [rbp + 4168], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n49_var_ref_α
n45_op11_β:
                                                                                        jmp   n14_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 3648], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n50_op11_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n52_op11_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "qcontrol"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3640], rax
                        .section         .rodata
.Lrkfn227:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 3632]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n54_lit_string_α
n50_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 3072], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n55_op11_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        lea              rdi, [rbp + 2544]
                        mov              rsi, qword ptr [rip + .Lx229_2]
                                                                                        jmp   .Lx229_3
.Lx229_2:
                        .quad            .Lx229_2_s
.Lx229_2_s:
                        .string          "qcontrol"
.Lx229_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n57_op11_α
                                                                                        jmp   n56_var_ref_α
n52_op11_β:
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                                                                                        jmp   n58_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n59_lit_string_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n60_op11_α
n55_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n61_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n62_var_ref_α
n57_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                                                                                        jmp   n63_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n64_var_ref_α
.Lx239_0:
                        .quad            .Lx239_0_s
.Lx239_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
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
.Lx240_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx240_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_41
                        cmp              esi, 1
                                                                                        jne   .Lx240_55
                        mov              r8, rax
                                                                                        jmp   .Lx240_40
.Lx240_55:
                        cmp              esi, 2
                                                                                        jne   .Lx240_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx240_41
                        mov              r8, rax
                                                                                        jmp   .Lx240_40
.Lx240_56:
                        cmp              eax, 13
                                                                                        jne   .Lx240_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_41
                        cmp              rax, r8
                                                                                        je    .Lx240_41
                        mov              r8, rax
                                                                                        jmp   .Lx240_40
.Lx240_41:
                        lea              r9, [rbp + 3024]
.Lx240_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx240_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_43
                        cmp              esi, 1
                                                                                        jne   .Lx240_57
                        mov              r9, rax
                                                                                        jmp   .Lx240_42
.Lx240_57:
                        cmp              esi, 2
                                                                                        jne   .Lx240_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx240_43
                        mov              r9, rax
                                                                                        jmp   .Lx240_42
.Lx240_58:
                        cmp              eax, 13
                                                                                        jne   .Lx240_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx240_43
                        cmp              rax, r9
                                                                                        je    .Lx240_43
                        mov              r9, rax
                                                                                        jmp   .Lx240_42
.Lx240_43:
                        cmp              r8, r9
                                                                                        je    .Lx240_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_44
                        cmp              eax, 99
                                                                                        je    .Lx240_44
                        cmp              eax, 13
                                                                                        jne   .Lx240_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx240_44
                                                                                        jmp   .Lx240_45
.Lx240_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_53
                        cmp              eax, 99
                                                                                        je    .Lx240_53
                        cmp              eax, 13
                                                                                        jne   .Lx240_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx240_53
                                                                                        jmp   .Lx240_46
.Lx240_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx240_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx240_53
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
                                                                                        jmp   .Lx240_51
.Lx240_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx240_47
                        cmp              eax, 99
                                                                                        je    .Lx240_47
                        cmp              eax, 13
                                                                                        jne   .Lx240_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx240_47
                                                                                        jmp   .Lx240_48
.Lx240_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx240_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx240_53
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
                                                                                        jmp   .Lx240_51
.Lx240_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx240_49
                        cmp              edx, 14
                                                                                        je    .Lx240_53
                                                                                        jmp   .Lx240_52
.Lx240_49:
                        cmp              edx, 14
                                                                                        je    .Lx240_52
                        cmp              ecx, 7
                                                                                        je    .Lx240_53
                        cmp              edx, 7
                                                                                        je    .Lx240_53
                        cmp              ecx, 6
                                                                                        jne   .Lx240_50
                        cmp              edx, 6
                                                                                        jne   .Lx240_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx240_51
                                                                                        jmp   .Lx240_52
.Lx240_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx240_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx240_53
.Lx240_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx240_54
.Lx240_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx240_54
.Lx240_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx240_54:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n65_lit_string_α
n60_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n66_lit_string_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 4112]
                        mov              rdx, qword ptr [rbp + 4120]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4112]
                        mov              rdx, qword ptr [rbp + 4120]
                        call             rt_arg_stage@PLT
.Lx245_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_22
                        mov              rax, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx245_23
.Lx245_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4128]
                        mov              rdx, qword ptr [rbp + 4136]
                        call             rt_arg_stage@PLT
.Lx245_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_24
                        mov              rax, qword ptr [rbp + 4144]
                        mov              rdx, qword ptr [rbp + 4152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx245_25
.Lx245_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4144]
                        mov              rdx, qword ptr [rbp + 4152]
                        call             rt_arg_stage@PLT
.Lx245_25:
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx245_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx245_3]
                        lea              rdx, [rip + .Lx245_4]
                                                                                        jmp   rax
.Lx245_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx245_2
.Lx245_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx245_2
.Lx245_1:
                        call             rt_faildescr@PLT
.Lx245_2:
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              eax, 99
                                                                                        je    n14_op11_α
                                                                                        jmp   n68_var_ref_α
n63_call_proc_staged_β:
                                                                                        jmp   n14_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n70_op11_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "assert/2"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n71_var_ref_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n72_op11_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                                                                                        jmp   n73_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                                                                                        jmp   n74_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn256:              .string          "$existence_error"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n75_lit_string_α
n70_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n76_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1968]
                        mov              rsi, qword ptr [rip + .Lx259_2]
                                                                                        jmp   .Lx259_3
.Lx259_2:
                        .quad            .Lx259_2_s
.Lx259_2_s:
                        .string          "mqual"
.Lx259_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n77_var_ref_α
n72_op11_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx261_20
                        mov              rax, qword ptr [rbp + 4016]
                        mov              rdx, qword ptr [rbp + 4024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx261_21
.Lx261_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4016]
                        mov              rdx, qword ptr [rbp + 4024]
                        call             rt_arg_stage@PLT
.Lx261_21:
                        mov              rdi, qword ptr [rip + .Lx261_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              eax, 99
                                                                                        je    n63_call_proc_staged_β
                                                                                        jmp   n79_suspend_α
n73_call_proc_staged_β:
                                                                                        jmp   n63_call_proc_staged_β
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n81_lit_string_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 2336], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n82_lit_integer_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n83_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n84_var_ref_α
n78_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n79_suspend_α:
                        lea              rax, [rip + n79_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n79_suspend_β:
                                                                                        jmp   n73_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n85_call_proc_staged_α
n80_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n86_var_ref_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n87_lit_string_α
.Lx273_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n88_lit_string_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        mov              qword ptr [rbp + 3408], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx278_20
                        mov              rax, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx278_21
.Lx278_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3440]
                        mov              rdx, qword ptr [rbp + 3448]
                        call             rt_arg_stage@PLT
.Lx278_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx278_22
                        mov              rax, qword ptr [rbp + 3504]
                        mov              rdx, qword ptr [rbp + 3512]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx278_23
.Lx278_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3504]
                        mov              rdx, qword ptr [rbp + 3512]
                        call             rt_arg_stage@PLT
.Lx278_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx278_1
                        lea              rcx, [rip + .Lx278_3]
                        lea              rdx, [rip + .Lx278_4]
                                                                                        jmp   rax
.Lx278_3:
                        mov              qword ptr [rbp + 3416], rsp
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax
                                                                                        jne   .Lx278_5
                        mov              qword ptr [rbp + 3408], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx278_2
.Lx278_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx278_2
.Lx278_4:
                        mov              rax, qword ptr [rbp + 3408]
                        test             rax, rax
                                                                                        jne   .Lx278_6
                        mov              qword ptr [rbp + 3408], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx278_2
.Lx278_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx278_2
.Lx278_1:
                        call             rt_faildescr@PLT
.Lx278_2:
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n90_var_ref_α
n85_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3416]
                                                                                        jmp   qword ptr [rsp]
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          ":/2"
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n91_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n92_op11_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n93_lit_string_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n94_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                                                                                        jmp   n95_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n96_var_ref_α
n91_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n97_op11_α
n92_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n98_op11_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              rsi, qword ptr [rip + .Lx289_2]
                                                                                        jmp   .Lx289_3
.Lx289_2:
                        .quad            .Lx289_2_s
.Lx289_2_s:
                        .string          "mqual"
.Lx289_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n100_op11_α
                                                                                        jmp   n99_var_ref_α
n94_op11_β:
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx291_20
                        mov              rax, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx291_21
.Lx291_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3344]
                        mov              rdx, qword ptr [rbp + 3352]
                        call             rt_arg_stage@PLT
.Lx291_21:
                        mov              rdi, qword ptr [rip + .Lx291_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx291_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx291_3]
                        lea              rdx, [rip + .Lx291_4]
                                                                                        jmp   rax
.Lx291_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx291_2
.Lx291_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx291_2
.Lx291_1:
                        call             rt_faildescr@PLT
.Lx291_2:
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n85_call_proc_staged_β
                                                                                        jmp   n101_suspend_α
n95_call_proc_staged_β:
                                                                                        jmp   n85_call_proc_staged_β
.Lx291_0:
                        .quad            .Lx291_0_s
.Lx291_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                                                                                        jmp   n102_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n103_op11_α
n97_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n104_lit_string_α
n98_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
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
n100_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n101_suspend_α:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n101_suspend_β:
                                                                                        jmp   n95_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n106_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n57_op11_α
                                                                                        jmp   n107_op11_α
n103_op11_β:
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n108_lit_string_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n109_lit_string_α
.Lx305_0:
                        .quad            .Lx305_0_s
.Lx305_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx307_20
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx307_21
.Lx307_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        call             rt_arg_stage@PLT
.Lx307_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx307_22
                        mov              rax, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx307_23
.Lx307_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2912]
                        mov              rdx, qword ptr [rbp + 2920]
                        call             rt_arg_stage@PLT
.Lx307_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx307_24
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx307_25
.Lx307_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
                        call             rt_arg_stage@PLT
.Lx307_25:
                        mov              rdi, qword ptr [rip + .Lx307_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx307_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx307_3]
                        lea              rdx, [rip + .Lx307_4]
                                                                                        jmp   rax
.Lx307_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx307_2
.Lx307_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx307_2
.Lx307_1:
                        call             rt_faildescr@PLT
.Lx307_2:
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n110_var_ref_α
n106_call_proc_staged_β:
                                                                                        jmp   n40_op11_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          "clause/3"
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
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
                        lea              r9, [rbp + 2176]
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
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n57_op11_α
                                                                                        jmp   n111_var_ref_α
n107_op11_β:
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n112_lit_string_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n113_lit_string_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n114_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n115_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx315_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n116_lit_string_α
.Lx315_0:
                        .quad            .Lx315_0_s
.Lx315_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx316_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n117_op11_α
.Lx316_0:
                        .quad            .Lx316_0_s
.Lx316_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n114_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx318_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx318_21
.Lx318_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        call             rt_arg_stage@PLT
.Lx318_21:
                        mov              rdi, qword ptr [rip + .Lx318_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx318_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx318_3]
                        lea              rdx, [rip + .Lx318_4]
                                                                                        jmp   rax
.Lx318_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx318_2
.Lx318_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx318_2
.Lx318_1:
                        call             rt_faildescr@PLT
.Lx318_2:
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              eax, 99
                                                                                        je    n106_call_proc_staged_β
                                                                                        jmp   n118_suspend_α
n114_call_proc_staged_β:
                                                                                        jmp   n106_call_proc_staged_β
.Lx318_0:
                        .quad            .Lx318_0_s
.Lx318_0_s:
                        .string          "erase/1"
#-----------------------------------------------------------------------------------------------------------------------
n115_call_proc_staged_α:
                        mov              qword ptr [rbp + 2096], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx320_20
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx320_21
.Lx320_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        call             rt_arg_stage@PLT
.Lx320_21:
                        mov              edi, 8
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx320_1
                        lea              rcx, [rip + .Lx320_3]
                        lea              rdx, [rip + .Lx320_4]
                                                                                        jmp   rax
.Lx320_3:
                        mov              qword ptr [rbp + 2104], rsp
                        mov              rax, qword ptr [rbp + 2096]
                        test             rax, rax
                                                                                        jne   .Lx320_5
                        mov              qword ptr [rbp + 2096], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx320_2
.Lx320_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx320_2
.Lx320_4:
                        mov              rax, qword ptr [rbp + 2096]
                        test             rax, rax
                                                                                        jne   .Lx320_6
                        mov              qword ptr [rbp + 2096], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx320_2
.Lx320_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx320_2
.Lx320_1:
                        call             rt_faildescr@PLT
.Lx320_2:
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n57_op11_α
                                                                                        jmp   n119_suspend_α
n115_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2104]
                                                                                        jmp   qword ptr [rsp]
.Lx320_0:
                        .quad            .Lx320_0_s
.Lx320_0_s:
                        .string          "t/1"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 1456], 1
                        mov              rax, qword ptr [rip + .Lx321_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n120_var_ref_α
.Lx321_0:
                        .quad            .Lx321_0_s
.Lx321_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n121_lit_string_α
n117_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n118_suspend_α:
                        lea              rax, [rip + n118_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n118_suspend_β:
                                                                                        jmp   n114_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n119_suspend_α:
                        lea              rax, [rip + n119_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n119_suspend_β:
                                                                                        jmp   n115_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n122_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n123_lit_string_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n124_op11_α
n122_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n125_lit_string_α
.Lx331_0:
                        .quad            .Lx331_0_s
.Lx331_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n126_lit_string_α
n124_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx333_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n127_lit_string_α
.Lx333_0:
                        .quad            .Lx333_0_s
.Lx333_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n128_op11_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n129_var_ref_α
.Lx335_0:
                        .quad            .Lx335_0_s
.Lx335_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n128_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n130_op11_α
n128_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n131_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n130_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n132_op11_α
n130_op11_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n131_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n133_op11_α
n131_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
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
.Lx341_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx341_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx341_41
                        cmp              esi, 1
                                                                                        jne   .Lx341_55
                        mov              r8, rax
                                                                                        jmp   .Lx341_40
.Lx341_55:
                        cmp              esi, 2
                                                                                        jne   .Lx341_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx341_41
                        mov              r8, rax
                                                                                        jmp   .Lx341_40
.Lx341_56:
                        cmp              eax, 13
                                                                                        jne   .Lx341_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx341_41
                        cmp              rax, r8
                                                                                        je    .Lx341_41
                        mov              r8, rax
                                                                                        jmp   .Lx341_40
.Lx341_41:
                        lea              r9, [rbp + 1408]
.Lx341_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx341_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx341_43
                        cmp              esi, 1
                                                                                        jne   .Lx341_57
                        mov              r9, rax
                                                                                        jmp   .Lx341_42
.Lx341_57:
                        cmp              esi, 2
                                                                                        jne   .Lx341_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx341_43
                        mov              r9, rax
                                                                                        jmp   .Lx341_42
.Lx341_58:
                        cmp              eax, 13
                                                                                        jne   .Lx341_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx341_43
                        cmp              rax, r9
                                                                                        je    .Lx341_43
                        mov              r9, rax
                                                                                        jmp   .Lx341_42
.Lx341_43:
                        cmp              r8, r9
                                                                                        je    .Lx341_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx341_44
                        cmp              eax, 99
                                                                                        je    .Lx341_44
                        cmp              eax, 13
                                                                                        jne   .Lx341_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx341_44
                                                                                        jmp   .Lx341_45
.Lx341_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx341_53
                        cmp              eax, 99
                                                                                        je    .Lx341_53
                        cmp              eax, 13
                                                                                        jne   .Lx341_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx341_53
                                                                                        jmp   .Lx341_46
.Lx341_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx341_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx341_53
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
                                                                                        jmp   .Lx341_51
.Lx341_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx341_47
                        cmp              eax, 99
                                                                                        je    .Lx341_47
                        cmp              eax, 13
                                                                                        jne   .Lx341_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx341_47
                                                                                        jmp   .Lx341_48
.Lx341_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx341_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx341_53
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
                                                                                        jmp   .Lx341_51
.Lx341_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx341_49
                        cmp              edx, 14
                                                                                        je    .Lx341_53
                                                                                        jmp   .Lx341_52
.Lx341_49:
                        cmp              edx, 14
                                                                                        je    .Lx341_52
                        cmp              ecx, 7
                                                                                        je    .Lx341_53
                        cmp              edx, 7
                                                                                        je    .Lx341_53
                        cmp              ecx, 6
                                                                                        jne   .Lx341_50
                        cmp              edx, 6
                                                                                        jne   .Lx341_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx341_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx341_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx341_51
                                                                                        jmp   .Lx341_52
.Lx341_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx341_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx341_53
.Lx341_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx341_54
.Lx341_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx341_54
.Lx341_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx341_54:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n134_var_ref_α
n132_op11_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n133_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n135_lit_string_α
n133_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n136_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n137_op11_α
.Lx345_0:
                        .quad            .Lx345_0_s
.Lx345_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 1360], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n138_lit_string_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n137_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n139_op11_α
n137_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n140_var_ref_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n100_op11_α
                                                                                        jmp   n141_op11_α
n139_op11_β:
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n142_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
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
.Lx352_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx352_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_41
                        cmp              esi, 1
                                                                                        jne   .Lx352_55
                        mov              r8, rax
                                                                                        jmp   .Lx352_40
.Lx352_55:
                        cmp              esi, 2
                                                                                        jne   .Lx352_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx352_41
                        mov              r8, rax
                                                                                        jmp   .Lx352_40
.Lx352_56:
                        cmp              eax, 13
                                                                                        jne   .Lx352_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_41
                        cmp              rax, r8
                                                                                        je    .Lx352_41
                        mov              r8, rax
                                                                                        jmp   .Lx352_40
.Lx352_41:
                        lea              r9, [rbp + 400]
.Lx352_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx352_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_43
                        cmp              esi, 1
                                                                                        jne   .Lx352_57
                        mov              r9, rax
                                                                                        jmp   .Lx352_42
.Lx352_57:
                        cmp              esi, 2
                                                                                        jne   .Lx352_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx352_43
                        mov              r9, rax
                                                                                        jmp   .Lx352_42
.Lx352_58:
                        cmp              eax, 13
                                                                                        jne   .Lx352_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_43
                        cmp              rax, r9
                                                                                        je    .Lx352_43
                        mov              r9, rax
                                                                                        jmp   .Lx352_42
.Lx352_43:
                        cmp              r8, r9
                                                                                        je    .Lx352_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx352_44
                        cmp              eax, 99
                                                                                        je    .Lx352_44
                        cmp              eax, 13
                                                                                        jne   .Lx352_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx352_44
                                                                                        jmp   .Lx352_45
.Lx352_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx352_53
                        cmp              eax, 99
                                                                                        je    .Lx352_53
                        cmp              eax, 13
                                                                                        jne   .Lx352_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx352_53
                                                                                        jmp   .Lx352_46
.Lx352_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx352_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx352_53
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
                                                                                        jmp   .Lx352_51
.Lx352_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx352_47
                        cmp              eax, 99
                                                                                        je    .Lx352_47
                        cmp              eax, 13
                                                                                        jne   .Lx352_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx352_47
                                                                                        jmp   .Lx352_48
.Lx352_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx352_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx352_53
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
                                                                                        jmp   .Lx352_51
.Lx352_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx352_49
                        cmp              edx, 14
                                                                                        je    .Lx352_53
                                                                                        jmp   .Lx352_52
.Lx352_49:
                        cmp              edx, 14
                                                                                        je    .Lx352_52
                        cmp              ecx, 7
                                                                                        je    .Lx352_53
                        cmp              edx, 7
                                                                                        je    .Lx352_53
                        cmp              ecx, 6
                                                                                        jne   .Lx352_50
                        cmp              edx, 6
                                                                                        jne   .Lx352_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx352_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx352_51
                                                                                        jmp   .Lx352_52
.Lx352_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx352_53
.Lx352_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx352_54
.Lx352_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx352_54
.Lx352_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx352_54:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n100_op11_α
                                                                                        jmp   n143_var_ref_α
n141_op11_β:
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n142_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n144_op11_α
n142_op11_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n145_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
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
.Lx356_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx356_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx356_41
                        cmp              esi, 1
                                                                                        jne   .Lx356_55
                        mov              r8, rax
                                                                                        jmp   .Lx356_40
.Lx356_55:
                        cmp              esi, 2
                                                                                        jne   .Lx356_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx356_41
                        mov              r8, rax
                                                                                        jmp   .Lx356_40
.Lx356_56:
                        cmp              eax, 13
                                                                                        jne   .Lx356_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx356_41
                        cmp              rax, r8
                                                                                        je    .Lx356_41
                        mov              r8, rax
                                                                                        jmp   .Lx356_40
.Lx356_41:
                        lea              r9, [rbp + 1216]
.Lx356_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx356_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx356_43
                        cmp              esi, 1
                                                                                        jne   .Lx356_57
                        mov              r9, rax
                                                                                        jmp   .Lx356_42
.Lx356_57:
                        cmp              esi, 2
                                                                                        jne   .Lx356_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx356_43
                        mov              r9, rax
                                                                                        jmp   .Lx356_42
.Lx356_58:
                        cmp              eax, 13
                                                                                        jne   .Lx356_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx356_43
                        cmp              rax, r9
                                                                                        je    .Lx356_43
                        mov              r9, rax
                                                                                        jmp   .Lx356_42
.Lx356_43:
                        cmp              r8, r9
                                                                                        je    .Lx356_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx356_44
                        cmp              eax, 99
                                                                                        je    .Lx356_44
                        cmp              eax, 13
                                                                                        jne   .Lx356_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx356_44
                                                                                        jmp   .Lx356_45
.Lx356_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx356_53
                        cmp              eax, 99
                                                                                        je    .Lx356_53
                        cmp              eax, 13
                                                                                        jne   .Lx356_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx356_53
                                                                                        jmp   .Lx356_46
.Lx356_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx356_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx356_53
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
                                                                                        jmp   .Lx356_51
.Lx356_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx356_47
                        cmp              eax, 99
                                                                                        je    .Lx356_47
                        cmp              eax, 13
                                                                                        jne   .Lx356_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx356_47
                                                                                        jmp   .Lx356_48
.Lx356_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx356_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx356_53
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
                                                                                        jmp   .Lx356_51
.Lx356_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx356_49
                        cmp              edx, 14
                                                                                        je    .Lx356_53
                                                                                        jmp   .Lx356_52
.Lx356_49:
                        cmp              edx, 14
                                                                                        je    .Lx356_52
                        cmp              ecx, 7
                                                                                        je    .Lx356_53
                        cmp              edx, 7
                                                                                        je    .Lx356_53
                        cmp              ecx, 6
                                                                                        jne   .Lx356_50
                        cmp              edx, 6
                                                                                        jne   .Lx356_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx356_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx356_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx356_51
                                                                                        jmp   .Lx356_52
.Lx356_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx356_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx356_53
.Lx356_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx356_54
.Lx356_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx356_54
.Lx356_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx356_54:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n146_var_ref_α
n144_op11_β:
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n147_lit_string_α
.Lx357_0:
                        .quad            .Lx357_0_s
.Lx357_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n148_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n149_var_ref_α
.Lx360_0:
                        .quad            .Lx360_0_s
.Lx360_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5008]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n150_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n151_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5024]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n152_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
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
                                                                                        je    n100_op11_α
                                                                                        jmp   n153_op11_α
n151_op11_β:
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_20
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx369_21
.Lx369_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx369_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_22
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx369_23
.Lx369_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        call             rt_arg_stage@PLT
.Lx369_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_24
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx369_25
.Lx369_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx369_25:
                        mov              rdi, qword ptr [rip + .Lx369_0]
                        mov              esi, 3
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
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n78_op11_α
                                                                                        jmp   n154_suspend_α
n152_call_proc_staged_β:
                                                                                        jmp   n78_op11_α
.Lx369_0:
                        .quad            .Lx369_0_s
.Lx369_0_s:
                        .string          "strip_module/3"
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
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
                        lea              r9, [rbp + 208]
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n100_op11_α
                                                                                        jmp   n155_var_ref_α
n153_op11_β:
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_suspend_α:
                        lea              rax, [rip + n154_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n154_suspend_β:
                                                                                        jmp   n152_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 4992]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n156_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n156_call_proc_staged_α:
                        lea              rsi, [rbp + 160]
                        call             proc_mqual$2F1_dcα
                                                                                        jmp   .Lx376_2
.Lx376_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n100_op11_α
                                                                                        jmp   n157_suspend_α
n156_call_proc_staged_β:
                                                                                        jmp   n100_op11_α
.Lx376_0:
                        .quad            .Lx376_0_s
.Lx376_0_s:
                        .string          "mqual/1"
#-----------------------------------------------------------------------------------------------------------------------
n157_suspend_α:
                        lea              rax, [rip + n157_suspend_β]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n157_suspend_β:
                                                                                        jmp   n156_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 4976]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 5048]
                        mov              rbp, [rbp + 5064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 5056]
                        lea              rsp, [rbp + 5072]
                        mov              rbp, [rbp + 5064]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 7936
                        mov              [rsp + 7912], rcx
                        mov              [rsp + 7920], rdx
                        mov              [rsp + 7928], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 7840
                        mov              edx, 7904
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n429_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
#-----------------------------------------------------------------------------------------------------------------------
n379_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx615_101
.Lx615_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx615_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n380_var_ref_α
n379_op11_β:
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
                        mov              qword ptr [rbp + 7824], 1
                        mov              rax, qword ptr [rip + .Lx618_0]
                        mov              qword ptr [rbp + 7832], rax
                                                                                        jmp   n382_op11_α
.Lx618_0:
                        .quad            .Lx618_0_s
.Lx618_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n382_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n384_op11_α
                                                                                        jmp   n383_var_ref_α
n382_op11_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7728], rax
                        mov              qword ptr [rbp + 7736], rdx
                                                                                        jmp   n385_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n384_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 7296], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 7304], rax
                        lea              rdi, [rbp + 7296]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n386_var_ref_α
n384_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:
                        mov              qword ptr [rbp + 7744], 1
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rbp + 7752], rax
                                                                                        jmp   n387_op11_α
.Lx623_0:
                        .quad            .Lx623_0_s
.Lx623_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n386_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx
                                                                                        jmp   n388_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        mov              rax, qword ptr [rbp + 7728]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7736]
                        mov              qword ptr [rbp + 7704], rax
                        lea              rdi, [rbp + 7696]
                        mov              rsi, qword ptr [rip + .Lx626_2]
                                                                                        jmp   .Lx626_3
.Lx626_2:
                        .quad            .Lx626_2_s
.Lx626_2_s:
                        .string          "cross"
.Lx626_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7680], rax
                        mov              qword ptr [rbp + 7688], rdx
                        cmp              eax, 99
                                                                                        je    n384_op11_α
                                                                                        jmp   n389_var_ref_α
n387_op11_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 7264], 1
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rbp + 7272], rax
                                                                                        jmp   n390_op11_α
.Lx627_0:
                        .quad            .Lx627_0_s
.Lx627_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n389_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7536], rax
                        mov              qword ptr [rbp + 7544], rdx
                                                                                        jmp   n391_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n390_op11_α:
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 7256]
                        mov              qword ptr [rbp + 7224], rax
                        lea              rdi, [rbp + 7216]
                        mov              rsi, qword ptr [rip + .Lx630_2]
                                                                                        jmp   .Lx630_3
.Lx630_2:
                        .quad            .Lx630_2_s
.Lx630_2_s:
                        .string          "module"
.Lx630_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                        cmp              eax, 99
                                                                                        je    n393_op11_α
                                                                                        jmp   n392_var_ref_α
n390_op11_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:
                        mov              qword ptr [rbp + 7664], 1
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 7672], rax
                                                                                        jmp   n394_var_ref_α
.Lx631_0:
                        .quad            .Lx631_0_s
.Lx631_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n392_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx
                                                                                        jmp   n395_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n393_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 6032], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 6040], rax
                        lea              rdi, [rbp + 6032]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 6016], rax
                        mov              qword ptr [rbp + 6024], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n396_var_ref_α
n393_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                                                                                        jmp   n397_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:
                        mov              qword ptr [rbp + 7184], 1
                        mov              rax, qword ptr [rip + .Lx637_0]
                        mov              qword ptr [rbp + 7192], rax
                                                                                        jmp   n398_op11_α
.Lx637_0:
                        .quad            .Lx637_0_s
.Lx637_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5984], rax
                        mov              qword ptr [rbp + 5992], rdx
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:
                        mov              qword ptr [rbp + 7568], 1
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 7576], rax
                                                                                        jmp   n400_op11_α
.Lx640_0:
                        .quad            .Lx640_0_s
.Lx640_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n398_op11_α:
                        mov              rax, qword ptr [rbp + 7168]
                        mov              qword ptr [rbp + 7136], rax
                        mov              rax, qword ptr [rbp + 7176]
                        mov              qword ptr [rbp + 7144], rax
                        lea              rdi, [rbp + 7136]
                        mov              rsi, qword ptr [rip + .Lx641_2]
                                                                                        jmp   .Lx641_3
.Lx641_2:
                        .quad            .Lx641_2_s
.Lx641_2_s:
                        .string          "clause"
.Lx641_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 7120], rax
                        mov              qword ptr [rbp + 7128], rdx
                        cmp              eax, 99
                                                                                        je    n393_op11_α
                                                                                        jmp   n401_var_ref_α
n398_op11_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 6000], 1
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n402_op11_α
.Lx642_0:
                        .quad            .Lx642_0_s
.Lx642_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n400_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n384_op11_α
                                                                                        jmp   n403_op11_α
n400_op11_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 6864], rax
                        mov              qword ptr [rbp + 6872], rdx
                                                                                        jmp   n404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n402_op11_α:
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5952], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5960], rax
                        lea              rdi, [rbp + 5952]
                        mov              rsi, qword ptr [rip + .Lx646_2]
                                                                                        jmp   .Lx646_3
.Lx646_2:
                        .quad            .Lx646_2_s
.Lx646_2_s:
                        .string          "module"
.Lx646_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5936], rax
                        mov              qword ptr [rbp + 5944], rdx
                        cmp              eax, 99
                                                                                        je    n406_op11_α
                                                                                        jmp   n405_var_ref_α
n402_op11_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n403_op11_α:
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
.Lx647_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        cmp              esi, 1
                                                                                        jne   .Lx647_55
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_55:
                        cmp              esi, 2
                                                                                        jne   .Lx647_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_56:
                        cmp              eax, 13
                                                                                        jne   .Lx647_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_41
                        cmp              rax, r8
                                                                                        je    .Lx647_41
                        mov              r8, rax
                                                                                        jmp   .Lx647_40
.Lx647_41:
                        lea              r9, [rbp + 7520]
.Lx647_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx647_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        cmp              esi, 1
                                                                                        jne   .Lx647_57
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_57:
                        cmp              esi, 2
                                                                                        jne   .Lx647_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_58:
                        cmp              eax, 13
                                                                                        jne   .Lx647_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx647_43
                        cmp              rax, r9
                                                                                        je    .Lx647_43
                        mov              r9, rax
                                                                                        jmp   .Lx647_42
.Lx647_43:
                        cmp              r8, r9
                                                                                        je    .Lx647_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_44
                        cmp              eax, 99
                                                                                        je    .Lx647_44
                        cmp              eax, 13
                                                                                        jne   .Lx647_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx647_44
                                                                                        jmp   .Lx647_45
.Lx647_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_53
                        cmp              eax, 99
                                                                                        je    .Lx647_53
                        cmp              eax, 13
                                                                                        jne   .Lx647_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx647_53
                                                                                        jmp   .Lx647_46
.Lx647_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx647_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx647_53
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
                                                                                        jmp   .Lx647_51
.Lx647_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx647_47
                        cmp              eax, 99
                                                                                        je    .Lx647_47
                        cmp              eax, 13
                                                                                        jne   .Lx647_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx647_47
                                                                                        jmp   .Lx647_48
.Lx647_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx647_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx647_53
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
                                                                                        jmp   .Lx647_51
.Lx647_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx647_49
                        cmp              edx, 14
                                                                                        je    .Lx647_53
                                                                                        jmp   .Lx647_52
.Lx647_49:
                        cmp              edx, 14
                                                                                        je    .Lx647_52
                        cmp              ecx, 7
                                                                                        je    .Lx647_53
                        cmp              edx, 7
                                                                                        je    .Lx647_53
                        cmp              ecx, 6
                                                                                        jne   .Lx647_50
                        cmp              edx, 6
                                                                                        jne   .Lx647_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx647_51
                                                                                        jmp   .Lx647_52
.Lx647_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx647_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx647_53
.Lx647_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx647_54
.Lx647_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx647_54
.Lx647_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx647_54:
                        mov              qword ptr [rbp + 7488], rax
                        mov              qword ptr [rbp + 7496], rdx
                        cmp              eax, 99
                                                                                        je    n384_op11_α
                                                                                        jmp   n407_var_ref_α
n403_op11_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:
                        mov              qword ptr [rbp + 7104], 1
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rbp + 7112], rax
                                                                                        jmp   n408_var_ref_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                                                                                        jmp   n409_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n406_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n410_var_ref_α
n406_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 7376], rax
                        mov              qword ptr [rbp + 7384], rdx
                                                                                        jmp   n411_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n408_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx
                                                                                        jmp   n412_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:
                        mov              qword ptr [rbp + 5920], 1
                        mov              rax, qword ptr [rip + .Lx656_0]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n413_op11_α
.Lx656_0:
                        .quad            .Lx656_0_s
.Lx656_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n414_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:
                        mov              qword ptr [rbp + 7472], 1
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rbp + 7480], rax
                                                                                        jmp   n415_var_ref_α
.Lx659_0:
                        .quad            .Lx659_0_s
.Lx659_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:
                        mov              qword ptr [rbp + 7008], 1
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rbp + 7016], rax
                                                                                        jmp   n416_lit_string_α
.Lx660_0:
                        .quad            .Lx660_0_s
.Lx660_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n413_op11_α:
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5880], rax
                        lea              rdi, [rbp + 5872]
                        mov              rsi, qword ptr [rip + .Lx661_2]
                                                                                        jmp   .Lx661_3
.Lx661_2:
                        .quad            .Lx661_2_s
.Lx661_2_s:
                        .string          "clause"
.Lx661_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                        cmp              eax, 99
                                                                                        je    n406_op11_α
                                                                                        jmp   n417_var_ref_α
n413_op11_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 4736], 1
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n418_op11_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 7392], rax
                        mov              qword ptr [rbp + 7400], rdx
                                                                                        jmp   n419_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 6896], 1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rbp + 6904], rax
                                                                                        jmp   n420_lit_string_α
.Lx665_0:
                        .quad            .Lx665_0_s
.Lx665_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                                                                                        jmp   n421_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4696], rax
                        lea              rdi, [rbp + 4688]
                        mov              rsi, qword ptr [rip + .Lx668_2]
                                                                                        jmp   .Lx668_3
.Lx668_2:
                        .quad            .Lx668_2_s
.Lx668_2_s:
                        .string          "module"
.Lx668_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n422_var_ref_α
n418_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n419_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n384_op11_α
                                                                                        jmp   n424_op11_α
n419_op11_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:
                        mov              qword ptr [rbp + 6912], 1
                        mov              rax, qword ptr [rip + .Lx670_0]
                        mov              qword ptr [rbp + 6920], rax
                                                                                        jmp   n425_op11_α
.Lx670_0:
                        .quad            .Lx670_0_s
.Lx670_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:
                        mov              qword ptr [rbp + 5840], 1
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rbp + 5848], rax
                                                                                        jmp   n426_var_ref_α
.Lx671_0:
                        .quad            .Lx671_0_s
.Lx671_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                                                                                        jmp   n427_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 3512], rax
                        lea              rdi, [rbp + 3504]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n428_var_ref_α
n423_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
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
.Lx675_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              esi, 1
                                                                                        jne   .Lx675_55
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_55:
                        cmp              esi, 2
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_56:
                        cmp              eax, 13
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              rax, r8
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_41:
                        lea              r9, [rbp + 7360]
.Lx675_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              esi, 1
                                                                                        jne   .Lx675_57
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_57:
                        cmp              esi, 2
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_58:
                        cmp              eax, 13
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              rax, r9
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_43:
                        cmp              r8, r9
                                                                                        je    .Lx675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_44
                        cmp              eax, 99
                                                                                        je    .Lx675_44
                        cmp              eax, 13
                                                                                        jne   .Lx675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx675_44
                                                                                        jmp   .Lx675_45
.Lx675_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_53
                        cmp              eax, 99
                                                                                        je    .Lx675_53
                        cmp              eax, 13
                                                                                        jne   .Lx675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_46
.Lx675_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
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
                                                                                        jmp   .Lx675_51
.Lx675_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_47
                        cmp              eax, 99
                                                                                        je    .Lx675_47
                        cmp              eax, 13
                                                                                        jne   .Lx675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_47
                                                                                        jmp   .Lx675_48
.Lx675_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
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
                                                                                        jmp   .Lx675_51
.Lx675_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx675_49
                        cmp              edx, 14
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_52
.Lx675_49:
                        cmp              edx, 14
                                                                                        je    .Lx675_52
                        cmp              ecx, 7
                                                                                        je    .Lx675_53
                        cmp              edx, 7
                                                                                        je    .Lx675_53
                        cmp              ecx, 6
                                                                                        jne   .Lx675_50
                        cmp              edx, 6
                                                                                        jne   .Lx675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx675_51
                                                                                        jmp   .Lx675_52
.Lx675_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
.Lx675_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx675_54
.Lx675_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx675_54
.Lx675_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx675_54:
                        mov              qword ptr [rbp + 7328], rax
                        mov              qword ptr [rbp + 7336], rdx
                        cmp              eax, 99
                                                                                        je    n384_op11_α
                                                                                        jmp   n429_suspend_α
n424_op11_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n430_op11_α
n425_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 5728], rax
                        mov              qword ptr [rbp + 5736], rdx
                                                                                        jmp   n431_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n432_op11_α
.Lx679_0:
                        .quad            .Lx679_0_s
.Lx679_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                                                                                        jmp   n433_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n429_suspend_α:
                        lea              rax, [rip + n429_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n429_suspend_β:
                                                                                        jmp   n384_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n430_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n393_op11_α
                                                                                        jmp   n434_op11_α
n430_op11_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 5744], 1
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rbp + 5752], rax
                                                                                        jmp   n435_op11_α
.Lx685_0:
                        .quad            .Lx685_0_s
.Lx685_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n432_op11_α:
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4608]
                        mov              rsi, qword ptr [rip + .Lx686_2]
                                                                                        jmp   .Lx686_3
.Lx686_2:
                        .quad            .Lx686_2_s
.Lx686_2_s:
                        .string          "clause"
.Lx686_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n436_var_ref_α
n432_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 3472], 1
                        mov              rax, qword ptr [rip + .Lx687_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n437_op11_α
.Lx687_0:
                        .quad            .Lx687_0_s
.Lx687_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n434_op11_α:
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
.Lx688_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx688_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_41
                        cmp              esi, 1
                                                                                        jne   .Lx688_55
                        mov              r8, rax
                                                                                        jmp   .Lx688_40
.Lx688_55:
                        cmp              esi, 2
                                                                                        jne   .Lx688_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx688_41
                        mov              r8, rax
                                                                                        jmp   .Lx688_40
.Lx688_56:
                        cmp              eax, 13
                                                                                        jne   .Lx688_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_41
                        cmp              rax, r8
                                                                                        je    .Lx688_41
                        mov              r8, rax
                                                                                        jmp   .Lx688_40
.Lx688_41:
                        lea              r9, [rbp + 6848]
.Lx688_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx688_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_43
                        cmp              esi, 1
                                                                                        jne   .Lx688_57
                        mov              r9, rax
                                                                                        jmp   .Lx688_42
.Lx688_57:
                        cmp              esi, 2
                                                                                        jne   .Lx688_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx688_43
                        mov              r9, rax
                                                                                        jmp   .Lx688_42
.Lx688_58:
                        cmp              eax, 13
                                                                                        jne   .Lx688_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_43
                        cmp              rax, r9
                                                                                        je    .Lx688_43
                        mov              r9, rax
                                                                                        jmp   .Lx688_42
.Lx688_43:
                        cmp              r8, r9
                                                                                        je    .Lx688_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_44
                        cmp              eax, 99
                                                                                        je    .Lx688_44
                        cmp              eax, 13
                                                                                        jne   .Lx688_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx688_44
                                                                                        jmp   .Lx688_45
.Lx688_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_53
                        cmp              eax, 99
                                                                                        je    .Lx688_53
                        cmp              eax, 13
                                                                                        jne   .Lx688_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx688_53
                                                                                        jmp   .Lx688_46
.Lx688_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx688_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx688_53
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
                                                                                        jmp   .Lx688_51
.Lx688_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_47
                        cmp              eax, 99
                                                                                        je    .Lx688_47
                        cmp              eax, 13
                                                                                        jne   .Lx688_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx688_47
                                                                                        jmp   .Lx688_48
.Lx688_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx688_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx688_53
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
                                                                                        jmp   .Lx688_51
.Lx688_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx688_49
                        cmp              edx, 14
                                                                                        je    .Lx688_53
                                                                                        jmp   .Lx688_52
.Lx688_49:
                        cmp              edx, 14
                                                                                        je    .Lx688_52
                        cmp              ecx, 7
                                                                                        je    .Lx688_53
                        cmp              edx, 7
                                                                                        je    .Lx688_53
                        cmp              ecx, 6
                                                                                        jne   .Lx688_50
                        cmp              edx, 6
                                                                                        jne   .Lx688_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx688_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx688_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx688_51
                                                                                        jmp   .Lx688_52
.Lx688_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx688_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx688_53
.Lx688_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx688_54
.Lx688_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx688_54
.Lx688_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx688_54:
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        cmp              eax, 99
                                                                                        je    n393_op11_α
                                                                                        jmp   n438_var_ref_α
n434_op11_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n406_op11_α
                                                                                        jmp   n439_op11_α
n435_op11_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                                                                                        jmp   n440_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n437_op11_α:
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              rsi, qword ptr [rip + .Lx692_2]
                                                                                        jmp   .Lx692_3
.Lx692_2:
                        .quad            .Lx692_2_s
.Lx692_2_s:
                        .string          "module"
.Lx692_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n441_var_ref_α
n437_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx
                                                                                        jmp   n443_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n439_op11_α:
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
.Lx695_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx695_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx695_41
                        cmp              esi, 1
                                                                                        jne   .Lx695_55
                        mov              r8, rax
                                                                                        jmp   .Lx695_40
.Lx695_55:
                        cmp              esi, 2
                                                                                        jne   .Lx695_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx695_41
                        mov              r8, rax
                                                                                        jmp   .Lx695_40
.Lx695_56:
                        cmp              eax, 13
                                                                                        jne   .Lx695_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx695_41
                        cmp              rax, r8
                                                                                        je    .Lx695_41
                        mov              r8, rax
                                                                                        jmp   .Lx695_40
.Lx695_41:
                        lea              r9, [rbp + 5696]
.Lx695_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx695_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx695_43
                        cmp              esi, 1
                                                                                        jne   .Lx695_57
                        mov              r9, rax
                                                                                        jmp   .Lx695_42
.Lx695_57:
                        cmp              esi, 2
                                                                                        jne   .Lx695_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx695_43
                        mov              r9, rax
                                                                                        jmp   .Lx695_42
.Lx695_58:
                        cmp              eax, 13
                                                                                        jne   .Lx695_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx695_43
                        cmp              rax, r9
                                                                                        je    .Lx695_43
                        mov              r9, rax
                                                                                        jmp   .Lx695_42
.Lx695_43:
                        cmp              r8, r9
                                                                                        je    .Lx695_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx695_44
                        cmp              eax, 99
                                                                                        je    .Lx695_44
                        cmp              eax, 13
                                                                                        jne   .Lx695_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx695_44
                                                                                        jmp   .Lx695_45
.Lx695_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx695_53
                        cmp              eax, 99
                                                                                        je    .Lx695_53
                        cmp              eax, 13
                                                                                        jne   .Lx695_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx695_53
                                                                                        jmp   .Lx695_46
.Lx695_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx695_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx695_53
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
                                                                                        jmp   .Lx695_51
.Lx695_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx695_47
                        cmp              eax, 99
                                                                                        je    .Lx695_47
                        cmp              eax, 13
                                                                                        jne   .Lx695_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx695_47
                                                                                        jmp   .Lx695_48
.Lx695_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx695_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx695_53
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
                                                                                        jmp   .Lx695_51
.Lx695_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx695_49
                        cmp              edx, 14
                                                                                        je    .Lx695_53
                                                                                        jmp   .Lx695_52
.Lx695_49:
                        cmp              edx, 14
                                                                                        je    .Lx695_52
                        cmp              ecx, 7
                                                                                        je    .Lx695_53
                        cmp              edx, 7
                                                                                        je    .Lx695_53
                        cmp              ecx, 6
                                                                                        jne   .Lx695_50
                        cmp              edx, 6
                                                                                        jne   .Lx695_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx695_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx695_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx695_51
                                                                                        jmp   .Lx695_52
.Lx695_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx695_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx695_53
.Lx695_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx695_54
.Lx695_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx695_54
.Lx695_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx695_54:
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              eax, 99
                                                                                        je    n406_op11_α
                                                                                        jmp   n444_var_ref_α
n439_op11_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n440_lit_string_α:
                        mov              qword ptr [rbp + 4576], 1
                        mov              rax, qword ptr [rip + .Lx696_0]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n445_var_ref_α
.Lx696_0:
                        .quad            .Lx696_0_s
.Lx696_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n441_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                                                                                        jmp   n446_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n442_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n447_var_ref_α
n442_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_lit_string_α:
                        mov              qword ptr [rbp + 6800], 1
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rbp + 6808], rax
                                                                                        jmp   n448_lit_string_α
.Lx700_0:
                        .quad            .Lx700_0_s
.Lx700_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n449_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n445_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                                                                                        jmp   n450_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n451_op11_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "qcontrol"
#-----------------------------------------------------------------------------------------------------------------------
n447_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n452_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:
                        mov              qword ptr [rbp + 6352], 1
                        mov              rax, qword ptr [rip + .Lx708_0]
                        mov              qword ptr [rbp + 6360], rax
                                                                                        jmp   n453_lit_string_α
.Lx708_0:
                        .quad            .Lx708_0_s
.Lx708_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n449_lit_string_α:
                        mov              qword ptr [rbp + 5648], 1
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rbp + 5656], rax
                                                                                        jmp   n454_lit_string_α
.Lx709_0:
                        .quad            .Lx709_0_s
.Lx709_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n450_lit_string_α:
                        mov              qword ptr [rbp + 4480], 1
                        mov              rax, qword ptr [rip + .Lx710_0]
                        mov              qword ptr [rbp + 4488], rax
                                                                                        jmp   n455_op11_α
.Lx710_0:
                        .quad            .Lx710_0_s
.Lx710_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              rsi, qword ptr [rip + .Lx711_2]
                                                                                        jmp   .Lx711_3
.Lx711_2:
                        .quad            .Lx711_2_s
.Lx711_2_s:
                        .string          "qcontrol"
.Lx711_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n456_var_ref_α
n451_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 2720], 1
                        mov              rax, qword ptr [rip + .Lx712_0]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n457_op11_α
.Lx712_0:
                        .quad            .Lx712_0_s
.Lx712_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 6240], 1
                        mov              rax, qword ptr [rip + .Lx713_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n458_lit_string_α
.Lx713_0:
                        .quad            .Lx713_0_s
.Lx713_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 5088], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rbp + 5096], rax
                                                                                        jmp   n459_lit_string_α
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n455_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n460_op11_α
n455_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                                                                                        jmp   n461_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n457_op11_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        mov              rsi, qword ptr [rip + .Lx718_2]
                                                                                        jmp   .Lx718_3
.Lx718_2:
                        .quad            .Lx718_2_s
.Lx718_2_s:
                        .string          "module"
.Lx718_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n462_var_ref_α
n457_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:
                        mov              qword ptr [rbp + 6128], 1
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n464_lit_string_α
.Lx719_0:
                        .quad            .Lx719_0_s
.Lx719_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n459_lit_string_α:
                        mov              qword ptr [rbp + 4976], 1
                        mov              rax, qword ptr [rip + .Lx720_0]
                        mov              qword ptr [rbp + 4984], rax
                                                                                        jmp   n465_lit_string_α
.Lx720_0:
                        .quad            .Lx720_0_s
.Lx720_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n460_op11_α:
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
.Lx721_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx721_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx721_41
                        cmp              esi, 1
                                                                                        jne   .Lx721_55
                        mov              r8, rax
                                                                                        jmp   .Lx721_40
.Lx721_55:
                        cmp              esi, 2
                                                                                        jne   .Lx721_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx721_41
                        mov              r8, rax
                                                                                        jmp   .Lx721_40
.Lx721_56:
                        cmp              eax, 13
                                                                                        jne   .Lx721_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx721_41
                        cmp              rax, r8
                                                                                        je    .Lx721_41
                        mov              r8, rax
                                                                                        jmp   .Lx721_40
.Lx721_41:
                        lea              r9, [rbp + 4432]
.Lx721_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx721_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx721_43
                        cmp              esi, 1
                                                                                        jne   .Lx721_57
                        mov              r9, rax
                                                                                        jmp   .Lx721_42
.Lx721_57:
                        cmp              esi, 2
                                                                                        jne   .Lx721_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx721_43
                        mov              r9, rax
                                                                                        jmp   .Lx721_42
.Lx721_58:
                        cmp              eax, 13
                                                                                        jne   .Lx721_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx721_43
                        cmp              rax, r9
                                                                                        je    .Lx721_43
                        mov              r9, rax
                                                                                        jmp   .Lx721_42
.Lx721_43:
                        cmp              r8, r9
                                                                                        je    .Lx721_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx721_44
                        cmp              eax, 99
                                                                                        je    .Lx721_44
                        cmp              eax, 13
                                                                                        jne   .Lx721_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx721_44
                                                                                        jmp   .Lx721_45
.Lx721_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx721_53
                        cmp              eax, 99
                                                                                        je    .Lx721_53
                        cmp              eax, 13
                                                                                        jne   .Lx721_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx721_53
                                                                                        jmp   .Lx721_46
.Lx721_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx721_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx721_53
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
                                                                                        jmp   .Lx721_51
.Lx721_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx721_47
                        cmp              eax, 99
                                                                                        je    .Lx721_47
                        cmp              eax, 13
                                                                                        jne   .Lx721_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx721_47
                                                                                        jmp   .Lx721_48
.Lx721_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx721_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx721_53
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
                                                                                        jmp   .Lx721_51
.Lx721_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx721_49
                        cmp              edx, 14
                                                                                        je    .Lx721_53
                                                                                        jmp   .Lx721_52
.Lx721_49:
                        cmp              edx, 14
                                                                                        je    .Lx721_52
                        cmp              ecx, 7
                                                                                        je    .Lx721_53
                        cmp              edx, 7
                                                                                        je    .Lx721_53
                        cmp              ecx, 6
                                                                                        jne   .Lx721_50
                        cmp              edx, 6
                                                                                        jne   .Lx721_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx721_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx721_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx721_51
                                                                                        jmp   .Lx721_52
.Lx721_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx721_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx721_53
.Lx721_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx721_54
.Lx721_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx721_54
.Lx721_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx721_54:
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n466_var_ref_α
n460_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n461_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              rax, qword ptr [rip + .Lx722_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n467_lit_string_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "all"
#-----------------------------------------------------------------------------------------------------------------------
n462_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n463_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n469_var_ref_α
n463_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_lit_string_α:
                        mov              qword ptr [rbp + 6144], 1
                        mov              rax, qword ptr [rip + .Lx726_0]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n470_op11_α
.Lx726_0:
                        .quad            .Lx726_0_s
.Lx726_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n465_lit_string_α:
                        mov              qword ptr [rbp + 4864], 1
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n471_lit_string_α
.Lx727_0:
                        .quad            .Lx727_0_s
.Lx727_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                                                                                        jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:
                        mov              qword ptr [rbp + 3232], 1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n473_var_ref_α
.Lx730_0:
                        .quad            .Lx730_0_s
.Lx730_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx731_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n474_op11_α
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n469_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n475_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n470_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n476_var_ref_α
n470_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n477_op11_α
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 4384], 1
                        mov              rax, qword ptr [rip + .Lx736_0]
                        mov              qword ptr [rbp + 4392], rax
                                                                                        jmp   n478_lit_string_α
.Lx736_0:
                        .quad            .Lx736_0_s
.Lx736_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                                                                                        jmp   n479_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n474_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              rsi, qword ptr [rip + .Lx739_2]
                                                                                        jmp   .Lx739_3
.Lx739_2:
                        .quad            .Lx739_2_s
.Lx739_2_s:
                        .string          "mqual"
.Lx739_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n480_var_ref_α
n474_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx740_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n481_op11_α
.Lx740_0:
                        .quad            .Lx740_0_s
.Lx740_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 6256], rax
                        mov              qword ptr [rbp + 6264], rdx
                                                                                        jmp   n482_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n483_var_ref_α
n477_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n484_lit_string_α
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "assert"
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_string_α:
                        mov              qword ptr [rbp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx745_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n485_lit_integer_α
.Lx745_0:
                        .quad            .Lx745_0_s
.Lx745_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n480_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n486_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n481_op11_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              rsi, qword ptr [rip + .Lx748_2]
                                                                                        jmp   .Lx748_3
.Lx748_2:
                        .quad            .Lx748_2_s
.Lx748_2_s:
                        .string          "module"
.Lx748_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n488_op11_α
                                                                                        jmp   n487_var_ref_α
n481_op11_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n489_lit_string_α
n482_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n490_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:
                        mov              qword ptr [rbp + 3712], 1
                        mov              rax, qword ptr [rip + .Lx752_0]
                        mov              qword ptr [rbp + 3720], rax
                                                                                        jmp   n491_lit_string_α
.Lx752_0:
                        .quad            .Lx752_0_s
.Lx752_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_integer_α:
                        mov              qword ptr [rbp + 3040], 6
                        mov              rax, qword ptr [rip + .Lx753_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n492_lit_string_α
.Lx753_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n486_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx754_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n493_lit_string_α
.Lx754_0:
                        .quad            .Lx754_0_s
.Lx754_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n487_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n494_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n488_op11_α:
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
n488_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:
                        mov              qword ptr [rbp + 6704], 1
                        mov              rax, qword ptr [rip + .Lx758_0]
                        mov              qword ptr [rbp + 6712], rax
                                                                                        jmp   n495_lit_string_α
.Lx758_0:
                        .quad            .Lx758_0_s
.Lx758_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n490_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n496_lit_string_α
n490_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 3600], 1
                        mov              rax, qword ptr [rip + .Lx760_0]
                        mov              qword ptr [rbp + 3608], rax
                                                                                        jmp   n497_lit_string_α
.Lx760_0:
                        .quad            .Lx760_0_s
.Lx760_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx761_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n498_op11_α
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n493_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n499_lit_string_α
.Lx762_0:
                        .quad            .Lx762_0_s
.Lx762_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n500_op11_α
.Lx763_0:
                        .quad            .Lx763_0_s
.Lx763_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_string_α:
                        mov              qword ptr [rbp + 6512], 1
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 6520], rax
                                                                                        jmp   n501_var_ref_α
.Lx764_0:
                        .quad            .Lx764_0_s
.Lx764_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n496_lit_string_α:
                        mov              qword ptr [rbp + 5552], 1
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n502_lit_string_α
.Lx765_0:
                        .quad            .Lx765_0_s
.Lx765_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx766_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n503_op11_α
.Lx766_0:
                        .quad            .Lx766_0_s
.Lx766_0_s:
                        .string          "term"
#-----------------------------------------------------------------------------------------------------------------------
n498_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n504_op11_α
n498_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n499_lit_string_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n505_op11_α
.Lx768_0:
                        .quad            .Lx768_0_s
.Lx768_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n500_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              rsi, qword ptr [rip + .Lx769_2]
                                                                                        jmp   .Lx769_3
.Lx769_2:
                        .quad            .Lx769_2_s
.Lx769_2_s:
                        .string          "mqual"
.Lx769_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n488_op11_α
                                                                                        jmp   n506_var_ref_α
n500_op11_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                                                                                        jmp   n507_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:
                        mov              qword ptr [rbp + 5360], 1
                        mov              rax, qword ptr [rip + .Lx772_0]
                        mov              qword ptr [rbp + 5368], rax
                                                                                        jmp   n508_lit_string_α
.Lx772_0:
                        .quad            .Lx772_0_s
.Lx772_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n503_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n509_var_ref_α
n503_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n504_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n510_op11_α
n504_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n505_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n511_lit_string_α
n505_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n506_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n512_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n513_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n508_lit_string_α:
                        mov              qword ptr [rbp + 5104], 1
                        mov              rax, qword ptr [rip + .Lx780_0]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n514_lit_string_α
.Lx780_0:
                        .quad            .Lx780_0_s
.Lx780_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n515_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n510_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n516_op11_α
n510_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx784_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n517_lit_string_α
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n518_lit_string_α
.Lx785_0:
                        .quad            .Lx785_0_s
.Lx785_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n519_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n514_lit_string_α:
                        mov              qword ptr [rbp + 5264], 1
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n520_var_ref_α
.Lx788_0:
                        .quad            .Lx788_0_s
.Lx788_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n515_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n521_lit_string_α
n515_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n516_op11_α:
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
.Lx790_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx790_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx790_41
                        cmp              esi, 1
                                                                                        jne   .Lx790_55
                        mov              r8, rax
                                                                                        jmp   .Lx790_40
.Lx790_55:
                        cmp              esi, 2
                                                                                        jne   .Lx790_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx790_41
                        mov              r8, rax
                                                                                        jmp   .Lx790_40
.Lx790_56:
                        cmp              eax, 13
                                                                                        jne   .Lx790_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx790_41
                        cmp              rax, r8
                                                                                        je    .Lx790_41
                        mov              r8, rax
                                                                                        jmp   .Lx790_40
.Lx790_41:
                        lea              r9, [rbp + 2976]
.Lx790_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx790_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx790_43
                        cmp              esi, 1
                                                                                        jne   .Lx790_57
                        mov              r9, rax
                                                                                        jmp   .Lx790_42
.Lx790_57:
                        cmp              esi, 2
                                                                                        jne   .Lx790_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx790_43
                        mov              r9, rax
                                                                                        jmp   .Lx790_42
.Lx790_58:
                        cmp              eax, 13
                                                                                        jne   .Lx790_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx790_43
                        cmp              rax, r9
                                                                                        je    .Lx790_43
                        mov              r9, rax
                                                                                        jmp   .Lx790_42
.Lx790_43:
                        cmp              r8, r9
                                                                                        je    .Lx790_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx790_44
                        cmp              eax, 99
                                                                                        je    .Lx790_44
                        cmp              eax, 13
                                                                                        jne   .Lx790_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx790_44
                                                                                        jmp   .Lx790_45
.Lx790_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx790_53
                        cmp              eax, 99
                                                                                        je    .Lx790_53
                        cmp              eax, 13
                                                                                        jne   .Lx790_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx790_53
                                                                                        jmp   .Lx790_46
.Lx790_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx790_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx790_53
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
                                                                                        jmp   .Lx790_51
.Lx790_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx790_47
                        cmp              eax, 99
                                                                                        je    .Lx790_47
                        cmp              eax, 13
                                                                                        jne   .Lx790_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx790_47
                                                                                        jmp   .Lx790_48
.Lx790_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx790_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx790_53
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
                                                                                        jmp   .Lx790_51
.Lx790_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx790_49
                        cmp              edx, 14
                                                                                        je    .Lx790_53
                                                                                        jmp   .Lx790_52
.Lx790_49:
                        cmp              edx, 14
                                                                                        je    .Lx790_52
                        cmp              ecx, 7
                                                                                        je    .Lx790_53
                        cmp              edx, 7
                                                                                        je    .Lx790_53
                        cmp              ecx, 6
                                                                                        jne   .Lx790_50
                        cmp              edx, 6
                                                                                        jne   .Lx790_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx790_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx790_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx790_51
                                                                                        jmp   .Lx790_52
.Lx790_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx790_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx790_53
.Lx790_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx790_54
.Lx790_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx790_54
.Lx790_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx790_54:
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n522_var_ref_α
n516_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n523_lit_string_α
.Lx791_0:
                        .quad            .Lx791_0_s
.Lx791_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n518_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n524_lit_string_α
.Lx792_0:
                        .quad            .Lx792_0_s
.Lx792_0_s:
                        .string          "sto"
#-----------------------------------------------------------------------------------------------------------------------
n519_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n525_lit_string_α
n519_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n520_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                                                                                        jmp   n526_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_string_α:
                        mov              qword ptr [rbp + 4288], 1
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rbp + 4296], rax
                                                                                        jmp   n527_lit_string_α
.Lx796_0:
                        .quad            .Lx796_0_s
.Lx796_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n528_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n523_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n529_lit_string_α
.Lx799_0:
                        .quad            .Lx799_0_s
.Lx799_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx800_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n530_op11_α
.Lx800_0:
                        .quad            .Lx800_0_s
.Lx800_0_s:
                        .string          "rational_trees"
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_string_α:
                        mov              qword ptr [rbp + 6608], 1
                        mov              rax, qword ptr [rip + .Lx801_0]
                        mov              qword ptr [rbp + 6616], rax
                                                                                        jmp   n531_var_ref_α
.Lx801_0:
                        .quad            .Lx801_0_s
.Lx801_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                                                                                        jmp   n532_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n527_lit_string_α:
                        mov              qword ptr [rbp + 4096], 1
                        mov              rax, qword ptr [rip + .Lx804_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n533_lit_string_α
.Lx804_0:
                        .quad            .Lx804_0_s
.Lx804_0_s:
                        .string          "clause"
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx805_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n534_var_ref_α
.Lx805_0:
                        .quad            .Lx805_0_s
.Lx805_0_s:
                        .string          "t"
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              rax, qword ptr [rip + .Lx806_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n535_var_ref_α
.Lx806_0:
                        .quad            .Lx806_0_s
.Lx806_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n530_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n536_lit_string_α
n530_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                                                                                        jmp   n537_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                                                                                        jmp   n538_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n533_lit_string_α:
                        mov              qword ptr [rbp + 3952], 1
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rbp + 3960], rax
                                                                                        jmp   n539_lit_string_α
.Lx812_0:
                        .quad            .Lx812_0_s
.Lx812_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n534_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n540_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n541_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx817_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n542_lit_string_α
.Lx817_0:
                        .quad            .Lx817_0_s
.Lx817_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n537_op11_α:
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
                                                                                        jmp   n543_op11_α
n537_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n538_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n544_op11_α
n538_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n539_lit_string_α:
                        mov              qword ptr [rbp + 3840], 1
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rbp + 3848], rax
                                                                                        jmp   n545_var_ref_α
.Lx820_0:
                        .quad            .Lx820_0_s
.Lx820_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n540_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n546_op11_α
n540_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n541_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n547_op11_α
n541_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n548_lit_string_α
.Lx823_0:
                        .quad            .Lx823_0_s
.Lx823_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n543_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n549_op11_α
n543_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n550_lit_string_α
n544_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                                                                                        jmp   n551_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n546_op11_α:
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
.Lx828_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx828_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_41
                        cmp              esi, 1
                                                                                        jne   .Lx828_55
                        mov              r8, rax
                                                                                        jmp   .Lx828_40
.Lx828_55:
                        cmp              esi, 2
                                                                                        jne   .Lx828_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx828_41
                        mov              r8, rax
                                                                                        jmp   .Lx828_40
.Lx828_56:
                        cmp              eax, 13
                                                                                        jne   .Lx828_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_41
                        cmp              rax, r8
                                                                                        je    .Lx828_41
                        mov              r8, rax
                                                                                        jmp   .Lx828_40
.Lx828_41:
                        lea              r9, [rbp + 2816]
.Lx828_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx828_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_43
                        cmp              esi, 1
                                                                                        jne   .Lx828_57
                        mov              r9, rax
                                                                                        jmp   .Lx828_42
.Lx828_57:
                        cmp              esi, 2
                                                                                        jne   .Lx828_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx828_43
                        mov              r9, rax
                                                                                        jmp   .Lx828_42
.Lx828_58:
                        cmp              eax, 13
                                                                                        jne   .Lx828_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx828_43
                        cmp              rax, r9
                                                                                        je    .Lx828_43
                        mov              r9, rax
                                                                                        jmp   .Lx828_42
.Lx828_43:
                        cmp              r8, r9
                                                                                        je    .Lx828_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx828_44
                        cmp              eax, 99
                                                                                        je    .Lx828_44
                        cmp              eax, 13
                                                                                        jne   .Lx828_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx828_44
                                                                                        jmp   .Lx828_45
.Lx828_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx828_53
                        cmp              eax, 99
                                                                                        je    .Lx828_53
                        cmp              eax, 13
                                                                                        jne   .Lx828_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx828_53
                                                                                        jmp   .Lx828_46
.Lx828_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx828_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx828_53
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
                                                                                        jmp   .Lx828_51
.Lx828_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx828_47
                        cmp              eax, 99
                                                                                        je    .Lx828_47
                        cmp              eax, 13
                                                                                        jne   .Lx828_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx828_47
                                                                                        jmp   .Lx828_48
.Lx828_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx828_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx828_53
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
                                                                                        jmp   .Lx828_51
.Lx828_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx828_49
                        cmp              edx, 14
                                                                                        je    .Lx828_53
                                                                                        jmp   .Lx828_52
.Lx828_49:
                        cmp              edx, 14
                                                                                        je    .Lx828_52
                        cmp              ecx, 7
                                                                                        je    .Lx828_53
                        cmp              edx, 7
                                                                                        je    .Lx828_53
                        cmp              ecx, 6
                                                                                        jne   .Lx828_50
                        cmp              edx, 6
                                                                                        jne   .Lx828_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx828_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx828_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx828_51
                                                                                        jmp   .Lx828_52
.Lx828_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx828_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx828_53
.Lx828_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx828_54
.Lx828_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx828_54
.Lx828_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx828_54:
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n552_suspend_α
n546_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n547_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n553_lit_string_α
n547_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n548_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx830_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n554_lit_string_α
.Lx830_0:
                        .quad            .Lx830_0_s
.Lx830_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n549_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n393_op11_α
                                                                                        jmp   n555_op11_α
n549_op11_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n550_lit_string_α:
                        mov              qword ptr [rbp + 5456], 1
                        mov              rax, qword ptr [rip + .Lx832_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n556_var_ref_α
.Lx832_0:
                        .quad            .Lx832_0_s
.Lx832_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n551_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n557_var_ref_α
n551_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n552_suspend_α:
                        lea              rax, [rip + n552_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n552_suspend_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n553_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx836_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n558_op11_α
.Lx836_0:
                        .quad            .Lx836_0_s
.Lx836_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n554_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx837_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n559_var_ref_α
.Lx837_0:
                        .quad            .Lx837_0_s
.Lx837_0_s:
                        .string          "acyclic_term"
#-----------------------------------------------------------------------------------------------------------------------
n555_op11_α:
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
.Lx838_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx838_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_41
                        cmp              esi, 1
                                                                                        jne   .Lx838_55
                        mov              r8, rax
                                                                                        jmp   .Lx838_40
.Lx838_55:
                        cmp              esi, 2
                                                                                        jne   .Lx838_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx838_41
                        mov              r8, rax
                                                                                        jmp   .Lx838_40
.Lx838_56:
                        cmp              eax, 13
                                                                                        jne   .Lx838_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_41
                        cmp              rax, r8
                                                                                        je    .Lx838_41
                        mov              r8, rax
                                                                                        jmp   .Lx838_40
.Lx838_41:
                        lea              r9, [rbp + 6096]
.Lx838_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx838_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_43
                        cmp              esi, 1
                                                                                        jne   .Lx838_57
                        mov              r9, rax
                                                                                        jmp   .Lx838_42
.Lx838_57:
                        cmp              esi, 2
                                                                                        jne   .Lx838_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx838_43
                        mov              r9, rax
                                                                                        jmp   .Lx838_42
.Lx838_58:
                        cmp              eax, 13
                                                                                        jne   .Lx838_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx838_43
                        cmp              rax, r9
                                                                                        je    .Lx838_43
                        mov              r9, rax
                                                                                        jmp   .Lx838_42
.Lx838_43:
                        cmp              r8, r9
                                                                                        je    .Lx838_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx838_44
                        cmp              eax, 99
                                                                                        je    .Lx838_44
                        cmp              eax, 13
                                                                                        jne   .Lx838_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx838_44
                                                                                        jmp   .Lx838_45
.Lx838_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx838_53
                        cmp              eax, 99
                                                                                        je    .Lx838_53
                        cmp              eax, 13
                                                                                        jne   .Lx838_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx838_53
                                                                                        jmp   .Lx838_46
.Lx838_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx838_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx838_53
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
                                                                                        jmp   .Lx838_51
.Lx838_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx838_47
                        cmp              eax, 99
                                                                                        je    .Lx838_47
                        cmp              eax, 13
                                                                                        jne   .Lx838_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx838_47
                                                                                        jmp   .Lx838_48
.Lx838_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx838_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx838_53
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
                                                                                        jmp   .Lx838_51
.Lx838_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx838_49
                        cmp              edx, 14
                                                                                        je    .Lx838_53
                                                                                        jmp   .Lx838_52
.Lx838_49:
                        cmp              edx, 14
                                                                                        je    .Lx838_52
                        cmp              ecx, 7
                                                                                        je    .Lx838_53
                        cmp              edx, 7
                                                                                        je    .Lx838_53
                        cmp              ecx, 6
                                                                                        jne   .Lx838_50
                        cmp              edx, 6
                                                                                        jne   .Lx838_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx838_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx838_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx838_51
                                                                                        jmp   .Lx838_52
.Lx838_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx838_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx838_53
.Lx838_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx838_54
.Lx838_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx838_54
.Lx838_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx838_54:
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        cmp              eax, 99
                                                                                        je    n393_op11_α
                                                                                        jmp   n560_suspend_α
n555_op11_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n556_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                                                                                        jmp   n561_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n557_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                                                                                        jmp   n562_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n558_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n563_op11_α
n558_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n564_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n560_suspend_α:
                        lea              rax, [rip + n560_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n560_suspend_β:
                                                                                        jmp   n393_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n561_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n565_op11_α
n561_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n562_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n566_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n563_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n567_op11_α
n563_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n564_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n568_op11_α
n564_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n569_op11_α
n565_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n566_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n570_lit_string_α
n566_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n567_op11_α:
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
.Lx855_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx855_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx855_41
                        cmp              esi, 1
                                                                                        jne   .Lx855_55
                        mov              r8, rax
                                                                                        jmp   .Lx855_40
.Lx855_55:
                        cmp              esi, 2
                                                                                        jne   .Lx855_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx855_41
                        mov              r8, rax
                                                                                        jmp   .Lx855_40
.Lx855_56:
                        cmp              eax, 13
                                                                                        jne   .Lx855_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx855_41
                        cmp              rax, r8
                                                                                        je    .Lx855_41
                        mov              r8, rax
                                                                                        jmp   .Lx855_40
.Lx855_41:
                        lea              r9, [rbp + 2032]
.Lx855_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx855_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx855_43
                        cmp              esi, 1
                                                                                        jne   .Lx855_57
                        mov              r9, rax
                                                                                        jmp   .Lx855_42
.Lx855_57:
                        cmp              esi, 2
                                                                                        jne   .Lx855_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx855_43
                        mov              r9, rax
                                                                                        jmp   .Lx855_42
.Lx855_58:
                        cmp              eax, 13
                                                                                        jne   .Lx855_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx855_43
                        cmp              rax, r9
                                                                                        je    .Lx855_43
                        mov              r9, rax
                                                                                        jmp   .Lx855_42
.Lx855_43:
                        cmp              r8, r9
                                                                                        je    .Lx855_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx855_44
                        cmp              eax, 99
                                                                                        je    .Lx855_44
                        cmp              eax, 13
                                                                                        jne   .Lx855_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx855_44
                                                                                        jmp   .Lx855_45
.Lx855_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx855_53
                        cmp              eax, 99
                                                                                        je    .Lx855_53
                        cmp              eax, 13
                                                                                        jne   .Lx855_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx855_53
                                                                                        jmp   .Lx855_46
.Lx855_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx855_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx855_53
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
                                                                                        jmp   .Lx855_51
.Lx855_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx855_47
                        cmp              eax, 99
                                                                                        je    .Lx855_47
                        cmp              eax, 13
                                                                                        jne   .Lx855_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx855_47
                                                                                        jmp   .Lx855_48
.Lx855_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx855_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx855_53
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
                                                                                        jmp   .Lx855_51
.Lx855_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx855_49
                        cmp              edx, 14
                                                                                        je    .Lx855_53
                                                                                        jmp   .Lx855_52
.Lx855_49:
                        cmp              edx, 14
                                                                                        je    .Lx855_52
                        cmp              ecx, 7
                                                                                        je    .Lx855_53
                        cmp              edx, 7
                                                                                        je    .Lx855_53
                        cmp              ecx, 6
                                                                                        jne   .Lx855_50
                        cmp              edx, 6
                                                                                        jne   .Lx855_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx855_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx855_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx855_51
                                                                                        jmp   .Lx855_52
.Lx855_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx855_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx855_53
.Lx855_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx855_54
.Lx855_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx855_54
.Lx855_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx855_54:
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n571_var_ref_α
n567_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n568_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n572_lit_string_α
n568_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n406_op11_α
                                                                                        jmp   n573_op11_α
n569_op11_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 4192], 1
                        mov              rax, qword ptr [rip + .Lx858_0]
                        mov              qword ptr [rbp + 4200], rax
                                                                                        jmp   n574_var_ref_α
.Lx858_0:
                        .quad            .Lx858_0_s
.Lx858_0_s:
                        .string          "erase"
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n575_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n572_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx861_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n576_op11_α
.Lx861_0:
                        .quad            .Lx861_0_s
.Lx861_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n573_op11_α:
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
.Lx862_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx862_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx862_41
                        cmp              esi, 1
                                                                                        jne   .Lx862_55
                        mov              r8, rax
                                                                                        jmp   .Lx862_40
.Lx862_55:
                        cmp              esi, 2
                                                                                        jne   .Lx862_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx862_41
                        mov              r8, rax
                                                                                        jmp   .Lx862_40
.Lx862_56:
                        cmp              eax, 13
                                                                                        jne   .Lx862_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx862_41
                        cmp              rax, r8
                                                                                        je    .Lx862_41
                        mov              r8, rax
                                                                                        jmp   .Lx862_40
.Lx862_41:
                        lea              r9, [rbp + 4832]
.Lx862_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx862_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx862_43
                        cmp              esi, 1
                                                                                        jne   .Lx862_57
                        mov              r9, rax
                                                                                        jmp   .Lx862_42
.Lx862_57:
                        cmp              esi, 2
                                                                                        jne   .Lx862_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx862_43
                        mov              r9, rax
                                                                                        jmp   .Lx862_42
.Lx862_58:
                        cmp              eax, 13
                                                                                        jne   .Lx862_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx862_43
                        cmp              rax, r9
                                                                                        je    .Lx862_43
                        mov              r9, rax
                                                                                        jmp   .Lx862_42
.Lx862_43:
                        cmp              r8, r9
                                                                                        je    .Lx862_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx862_44
                        cmp              eax, 99
                                                                                        je    .Lx862_44
                        cmp              eax, 13
                                                                                        jne   .Lx862_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx862_44
                                                                                        jmp   .Lx862_45
.Lx862_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx862_53
                        cmp              eax, 99
                                                                                        je    .Lx862_53
                        cmp              eax, 13
                                                                                        jne   .Lx862_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx862_53
                                                                                        jmp   .Lx862_46
.Lx862_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx862_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx862_53
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
                                                                                        jmp   .Lx862_51
.Lx862_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx862_47
                        cmp              eax, 99
                                                                                        je    .Lx862_47
                        cmp              eax, 13
                                                                                        jne   .Lx862_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx862_47
                                                                                        jmp   .Lx862_48
.Lx862_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx862_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx862_53
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
                                                                                        jmp   .Lx862_51
.Lx862_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx862_49
                        cmp              edx, 14
                                                                                        je    .Lx862_53
                                                                                        jmp   .Lx862_52
.Lx862_49:
                        cmp              edx, 14
                                                                                        je    .Lx862_52
                        cmp              ecx, 7
                                                                                        je    .Lx862_53
                        cmp              edx, 7
                                                                                        je    .Lx862_53
                        cmp              ecx, 6
                                                                                        jne   .Lx862_50
                        cmp              edx, 6
                                                                                        jne   .Lx862_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx862_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx862_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx862_51
                                                                                        jmp   .Lx862_52
.Lx862_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx862_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx862_53
.Lx862_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx862_54
.Lx862_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx862_54
.Lx862_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx862_54:
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              eax, 99
                                                                                        je    n406_op11_α
                                                                                        jmp   n577_suspend_α
n573_op11_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n574_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                                                                                        jmp   n578_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx865_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n579_lit_string_α
.Lx865_0:
                        .quad            .Lx865_0_s
.Lx865_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n576_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n580_op11_α
n576_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n577_suspend_α:
                        lea              rax, [rip + n577_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n577_suspend_β:
                                                                                        jmp   n406_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n578_op11_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n581_op11_α
n578_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx870_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n582_var_ref_α
.Lx870_0:
                        .quad            .Lx870_0_s
.Lx870_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n580_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n488_op11_α
                                                                                        jmp   n583_op11_α
n580_op11_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n581_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n584_op11_α
n581_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n582_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n585_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n583_op11_α:
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
.Lx875_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx875_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_41
                        cmp              esi, 1
                                                                                        jne   .Lx875_55
                        mov              r8, rax
                                                                                        jmp   .Lx875_40
.Lx875_55:
                        cmp              esi, 2
                                                                                        jne   .Lx875_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx875_41
                        mov              r8, rax
                                                                                        jmp   .Lx875_40
.Lx875_56:
                        cmp              eax, 13
                                                                                        jne   .Lx875_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_41
                        cmp              rax, r8
                                                                                        je    .Lx875_41
                        mov              r8, rax
                                                                                        jmp   .Lx875_40
.Lx875_41:
                        lea              r9, [rbp + 688]
.Lx875_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx875_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_43
                        cmp              esi, 1
                                                                                        jne   .Lx875_57
                        mov              r9, rax
                                                                                        jmp   .Lx875_42
.Lx875_57:
                        cmp              esi, 2
                                                                                        jne   .Lx875_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx875_43
                        mov              r9, rax
                                                                                        jmp   .Lx875_42
.Lx875_58:
                        cmp              eax, 13
                                                                                        jne   .Lx875_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx875_43
                        cmp              rax, r9
                                                                                        je    .Lx875_43
                        mov              r9, rax
                                                                                        jmp   .Lx875_42
.Lx875_43:
                        cmp              r8, r9
                                                                                        je    .Lx875_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx875_44
                        cmp              eax, 99
                                                                                        je    .Lx875_44
                        cmp              eax, 13
                                                                                        jne   .Lx875_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx875_44
                                                                                        jmp   .Lx875_45
.Lx875_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx875_53
                        cmp              eax, 99
                                                                                        je    .Lx875_53
                        cmp              eax, 13
                                                                                        jne   .Lx875_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx875_53
                                                                                        jmp   .Lx875_46
.Lx875_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx875_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx875_53
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
                                                                                        jmp   .Lx875_51
.Lx875_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx875_47
                        cmp              eax, 99
                                                                                        je    .Lx875_47
                        cmp              eax, 13
                                                                                        jne   .Lx875_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx875_47
                                                                                        jmp   .Lx875_48
.Lx875_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx875_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx875_53
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
                                                                                        jmp   .Lx875_51
.Lx875_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx875_49
                        cmp              edx, 14
                                                                                        je    .Lx875_53
                                                                                        jmp   .Lx875_52
.Lx875_49:
                        cmp              edx, 14
                                                                                        je    .Lx875_52
                        cmp              ecx, 7
                                                                                        je    .Lx875_53
                        cmp              edx, 7
                                                                                        je    .Lx875_53
                        cmp              ecx, 6
                                                                                        jne   .Lx875_50
                        cmp              edx, 6
                                                                                        jne   .Lx875_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx875_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx875_51
                                                                                        jmp   .Lx875_52
.Lx875_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx875_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx875_53
.Lx875_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx875_54
.Lx875_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx875_54
.Lx875_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx875_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n488_op11_α
                                                                                        jmp   n586_var_ref_α
n583_op11_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n584_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n587_op11_α
n584_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx877_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n588_lit_string_α
.Lx877_0:
                        .quad            .Lx877_0_s
.Lx877_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n586_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n589_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n587_op11_α:
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
.Lx880_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx880_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx880_41
                        cmp              esi, 1
                                                                                        jne   .Lx880_55
                        mov              r8, rax
                                                                                        jmp   .Lx880_40
.Lx880_55:
                        cmp              esi, 2
                                                                                        jne   .Lx880_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx880_41
                        mov              r8, rax
                                                                                        jmp   .Lx880_40
.Lx880_56:
                        cmp              eax, 13
                                                                                        jne   .Lx880_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx880_41
                        cmp              rax, r8
                                                                                        je    .Lx880_41
                        mov              r8, rax
                                                                                        jmp   .Lx880_40
.Lx880_41:
                        lea              r9, [rbp + 3568]
.Lx880_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx880_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx880_43
                        cmp              esi, 1
                                                                                        jne   .Lx880_57
                        mov              r9, rax
                                                                                        jmp   .Lx880_42
.Lx880_57:
                        cmp              esi, 2
                                                                                        jne   .Lx880_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx880_43
                        mov              r9, rax
                                                                                        jmp   .Lx880_42
.Lx880_58:
                        cmp              eax, 13
                                                                                        jne   .Lx880_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx880_43
                        cmp              rax, r9
                                                                                        je    .Lx880_43
                        mov              r9, rax
                                                                                        jmp   .Lx880_42
.Lx880_43:
                        cmp              r8, r9
                                                                                        je    .Lx880_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx880_44
                        cmp              eax, 99
                                                                                        je    .Lx880_44
                        cmp              eax, 13
                                                                                        jne   .Lx880_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx880_44
                                                                                        jmp   .Lx880_45
.Lx880_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx880_53
                        cmp              eax, 99
                                                                                        je    .Lx880_53
                        cmp              eax, 13
                                                                                        jne   .Lx880_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx880_53
                                                                                        jmp   .Lx880_46
.Lx880_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx880_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx880_53
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
                                                                                        jmp   .Lx880_51
.Lx880_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx880_47
                        cmp              eax, 99
                                                                                        je    .Lx880_47
                        cmp              eax, 13
                                                                                        jne   .Lx880_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx880_47
                                                                                        jmp   .Lx880_48
.Lx880_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx880_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx880_53
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
                                                                                        jmp   .Lx880_51
.Lx880_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx880_49
                        cmp              edx, 14
                                                                                        je    .Lx880_53
                                                                                        jmp   .Lx880_52
.Lx880_49:
                        cmp              edx, 14
                                                                                        je    .Lx880_52
                        cmp              ecx, 7
                                                                                        je    .Lx880_53
                        cmp              edx, 7
                                                                                        je    .Lx880_53
                        cmp              ecx, 6
                                                                                        jne   .Lx880_50
                        cmp              edx, 6
                                                                                        jne   .Lx880_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx880_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx880_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx880_51
                                                                                        jmp   .Lx880_52
.Lx880_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx880_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx880_53
.Lx880_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx880_54
.Lx880_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx880_54
.Lx880_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx880_54:
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n423_op11_α
                                                                                        jmp   n590_suspend_α
n587_op11_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx881_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n591_var_ref_α
.Lx881_0:
                        .quad            .Lx881_0_s
.Lx881_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n589_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx882_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n592_lit_string_α
.Lx882_0:
                        .quad            .Lx882_0_s
.Lx882_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n590_suspend_α:
                        lea              rax, [rip + n590_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n590_suspend_β:
                                                                                        jmp   n423_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n591_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n593_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx887_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n594_var_ref_α
.Lx887_0:
                        .quad            .Lx887_0_s
.Lx887_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n593_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n595_op11_α
n593_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n596_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n595_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n597_lit_string_α
n595_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx892_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n598_lit_string_α
.Lx892_0:
                        .quad            .Lx892_0_s
.Lx892_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_string_α:
                        mov              qword ptr [rbp + 1888], 1
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n599_var_ref_α
.Lx893_0:
                        .quad            .Lx893_0_s
.Lx893_0_s:
                        .string          "strip_module"
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n600_var_ref_α
.Lx894_0:
                        .quad            .Lx894_0_s
.Lx894_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n601_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n600_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n602_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7872]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n603_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n602_op11_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n604_op11_α
n602_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7888]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n605_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n604_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n606_lit_string_α
n604_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n605_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n607_op11_α
n605_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n606_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx906_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n608_var_ref_α
.Lx906_0:
                        .quad            .Lx906_0_s
.Lx906_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n607_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n609_op11_α
n607_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 7856]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n610_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n609_op11_α:
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
.Lx910_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx910_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx910_41
                        cmp              esi, 1
                                                                                        jne   .Lx910_55
                        mov              r8, rax
                                                                                        jmp   .Lx910_40
.Lx910_55:
                        cmp              esi, 2
                                                                                        jne   .Lx910_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx910_41
                        mov              r8, rax
                                                                                        jmp   .Lx910_40
.Lx910_56:
                        cmp              eax, 13
                                                                                        jne   .Lx910_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx910_41
                        cmp              rax, r8
                                                                                        je    .Lx910_41
                        mov              r8, rax
                                                                                        jmp   .Lx910_40
.Lx910_41:
                        lea              r9, [rbp + 1472]
.Lx910_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx910_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx910_43
                        cmp              esi, 1
                                                                                        jne   .Lx910_57
                        mov              r9, rax
                                                                                        jmp   .Lx910_42
.Lx910_57:
                        cmp              esi, 2
                                                                                        jne   .Lx910_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx910_43
                        mov              r9, rax
                                                                                        jmp   .Lx910_42
.Lx910_58:
                        cmp              eax, 13
                                                                                        jne   .Lx910_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx910_43
                        cmp              rax, r9
                                                                                        je    .Lx910_43
                        mov              r9, rax
                                                                                        jmp   .Lx910_42
.Lx910_43:
                        cmp              r8, r9
                                                                                        je    .Lx910_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx910_44
                        cmp              eax, 99
                                                                                        je    .Lx910_44
                        cmp              eax, 13
                                                                                        jne   .Lx910_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx910_44
                                                                                        jmp   .Lx910_45
.Lx910_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx910_53
                        cmp              eax, 99
                                                                                        je    .Lx910_53
                        cmp              eax, 13
                                                                                        jne   .Lx910_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx910_53
                                                                                        jmp   .Lx910_46
.Lx910_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx910_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx910_53
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
                                                                                        jmp   .Lx910_51
.Lx910_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx910_47
                        cmp              eax, 99
                                                                                        je    .Lx910_47
                        cmp              eax, 13
                                                                                        jne   .Lx910_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx910_47
                                                                                        jmp   .Lx910_48
.Lx910_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx910_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx910_53
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
                                                                                        jmp   .Lx910_51
.Lx910_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx910_49
                        cmp              edx, 14
                                                                                        je    .Lx910_53
                                                                                        jmp   .Lx910_52
.Lx910_49:
                        cmp              edx, 14
                                                                                        je    .Lx910_52
                        cmp              ecx, 7
                                                                                        je    .Lx910_53
                        cmp              edx, 7
                                                                                        je    .Lx910_53
                        cmp              ecx, 6
                                                                                        jne   .Lx910_50
                        cmp              edx, 6
                                                                                        jne   .Lx910_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx910_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx910_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx910_51
                                                                                        jmp   .Lx910_52
.Lx910_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx910_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx910_53
.Lx910_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx910_54
.Lx910_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx910_54
.Lx910_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx910_54:
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n611_suspend_α
n609_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n612_op11_α
n610_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n611_suspend_α:
                        lea              rax, [rip + n611_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n611_suspend_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n612_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n488_op11_α
                                                                                        jmp   n613_op11_α
n612_op11_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n613_op11_α:
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
.Lx915_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx915_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx915_41
                        cmp              esi, 1
                                                                                        jne   .Lx915_55
                        mov              r8, rax
                                                                                        jmp   .Lx915_40
.Lx915_55:
                        cmp              esi, 2
                                                                                        jne   .Lx915_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx915_41
                        mov              r8, rax
                                                                                        jmp   .Lx915_40
.Lx915_56:
                        cmp              eax, 13
                                                                                        jne   .Lx915_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx915_41
                        cmp              rax, r8
                                                                                        je    .Lx915_41
                        mov              r8, rax
                                                                                        jmp   .Lx915_40
.Lx915_41:
                        lea              r9, [rbp + 192]
.Lx915_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx915_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx915_43
                        cmp              esi, 1
                                                                                        jne   .Lx915_57
                        mov              r9, rax
                                                                                        jmp   .Lx915_42
.Lx915_57:
                        cmp              esi, 2
                                                                                        jne   .Lx915_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx915_43
                        mov              r9, rax
                                                                                        jmp   .Lx915_42
.Lx915_58:
                        cmp              eax, 13
                                                                                        jne   .Lx915_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx915_43
                        cmp              rax, r9
                                                                                        je    .Lx915_43
                        mov              r9, rax
                                                                                        jmp   .Lx915_42
.Lx915_43:
                        cmp              r8, r9
                                                                                        je    .Lx915_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx915_44
                        cmp              eax, 99
                                                                                        je    .Lx915_44
                        cmp              eax, 13
                                                                                        jne   .Lx915_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx915_44
                                                                                        jmp   .Lx915_45
.Lx915_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx915_53
                        cmp              eax, 99
                                                                                        je    .Lx915_53
                        cmp              eax, 13
                                                                                        jne   .Lx915_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx915_53
                                                                                        jmp   .Lx915_46
.Lx915_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx915_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx915_53
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
                                                                                        jmp   .Lx915_51
.Lx915_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx915_47
                        cmp              eax, 99
                                                                                        je    .Lx915_47
                        cmp              eax, 13
                                                                                        jne   .Lx915_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx915_47
                                                                                        jmp   .Lx915_48
.Lx915_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx915_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx915_53
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
                                                                                        jmp   .Lx915_51
.Lx915_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx915_49
                        cmp              edx, 14
                                                                                        je    .Lx915_53
                                                                                        jmp   .Lx915_52
.Lx915_49:
                        cmp              edx, 14
                                                                                        je    .Lx915_52
                        cmp              ecx, 7
                                                                                        je    .Lx915_53
                        cmp              edx, 7
                                                                                        je    .Lx915_53
                        cmp              ecx, 6
                                                                                        jne   .Lx915_50
                        cmp              edx, 6
                                                                                        jne   .Lx915_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx915_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx915_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx915_51
                                                                                        jmp   .Lx915_52
.Lx915_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx915_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx915_53
.Lx915_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx915_54
.Lx915_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx915_54
.Lx915_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx915_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n488_op11_α
                                                                                        jmp   n614_suspend_α
n613_op11_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n614_suspend_α:
                        lea              rax, [rip + n614_suspend_β]
                        mov              qword ptr [rbp + 7840], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n614_suspend_β:
                                                                                        jmp   n488_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 7840]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 7912]
                        mov              rbp, [rbp + 7928]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 7920]
                        lea              rsp, [rbp + 7936]
                        mov              rbp, [rbp + 7928]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_cross$2F1_α
proc_cross$2F1_α:
                        .global          proc_cross$2F1_α
                        .global          proc_cross$2F1_β
                        .global          proc_cross$2F1_γ
                        .global          proc_cross$2F1_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_cross$2F1_α_body:
                        lea              rax, [rip + n925_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n918_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx926_101
.Lx926_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx926_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_cross$2F1_ω
                                                                                        jmp   n919_var_ref_α
n918_op11_β:
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
                                                                                        jmp   n921_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n921_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx931_44
                        cmp              eax, 13
                                                                                        jne   .Lx931_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx931_44
                                                                                        jmp   .Lx931_45
.Lx931_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx931_53
                        cmp              eax, 99
                                                                                        je    .Lx931_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx931_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx931_49
                        cmp              edx, 14
                                                                                        je    .Lx931_53
                                                                                        jmp   .Lx931_52
.Lx931_49:
                        cmp              edx, 14
                                                                                        je    .Lx931_52
                        cmp              ecx, 7
                                                                                        je    .Lx931_53
                        cmp              edx, 7
                                                                                        je    .Lx931_53
                        cmp              ecx, 6
                                                                                        jne   .Lx931_50
                        cmp              edx, 6
                                                                                        jne   .Lx931_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx931_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx931_54
.Lx931_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx931_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n923_op11_α
                                                                                        jmp   n922_var_ref_α
n921_op11_β:
                                                                                        jmp   n923_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n922_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n924_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n923_op11_α:
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
                                                                                        je    proc_cross$2F1_ω
                                                                                        jmp   proc_cross$2F1_ω
n923_op11_β:
                                                                                        jmp   proc_cross$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n924_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx936_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx936_21
.Lx936_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx936_21:
                        mov              rdi, qword ptr [rip + .Lx936_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx936_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx936_3]
                        lea              rdx, [rip + .Lx936_4]
                                                                                        jmp   rax
.Lx936_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx936_2
.Lx936_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx936_2
.Lx936_1:
                        call             rt_faildescr@PLT
.Lx936_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n923_op11_α
                                                                                        jmp   n925_suspend_α
n924_call_proc_staged_β:
                                                                                        jmp   n923_op11_α
.Lx936_0:
                        .quad            .Lx936_0_s
.Lx936_0_s:
                        .string          "context_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n925_suspend_α:
                        lea              rax, [rip + n925_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_cross$2F1_γ
n925_suspend_β:
                                                                                        jmp   n924_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_cross$2F1_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_cross$2F1_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$3A$2F2_α
proc_$3A$2F2_α:
                        .global          proc_$3A$2F2_α
                        .global          proc_$3A$2F2_β
                        .global          proc_$3A$2F2_γ
                        .global          proc_$3A$2F2_ω
                        sub              rsp, 976
                        mov              [rsp + 952], rcx
                        mov              [rsp + 960], rdx
                        mov              [rsp + 968], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 912
                        mov              edx, 944
                        call             rt_jmp_frame_lexprep2@PLT
proc_$3A$2F2_α_body:
                        lea              rax, [rip + n965_suspend_β]
                        mov              qword ptr [rbp + 912], rax
#-----------------------------------------------------------------------------------------------------------------------
n939_op11_α:
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
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx967_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   n940_var_ref_α
n939_op11_β:
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
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx970_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n942_op11_α
.Lx970_0:
                        .quad            .Lx970_0_s
.Lx970_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n942_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n944_op11_α
                                                                                        jmp   n943_var_ref_α
n942_op11_β:
                                                                                        jmp   n944_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n943_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n945_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n944_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   n946_var_ref_α
n944_op11_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n945_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx975_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n947_lit_string_α
.Lx975_0:
                        .quad            .Lx975_0_s
.Lx975_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n946_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n948_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n947_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx978_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n949_lit_string_α
.Lx978_0:
                        .quad            .Lx978_0_s
.Lx978_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n948_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx979_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n950_op11_α
.Lx979_0:
                        .quad            .Lx979_0_s
.Lx979_0_s:
                        .string          "test_module_2"
#-----------------------------------------------------------------------------------------------------------------------
n949_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx980_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n951_lit_string_α
.Lx980_0:
                        .quad            .Lx980_0_s
.Lx980_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n950_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx981_2]
                                                                                        jmp   .Lx981_3
.Lx981_2:
                        .quad            .Lx981_2_s
.Lx981_2_s:
                        .string          "test_module_2"
.Lx981_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n953_op11_α
                                                                                        jmp   n952_var_ref_α
n950_op11_β:
                                                                                        jmp   n953_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n951_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx982_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n954_var_ref_α
.Lx982_0:
                        .quad            .Lx982_0_s
.Lx982_0_s:
                        .string          "cross"
#-----------------------------------------------------------------------------------------------------------------------
n952_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n955_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n953_op11_α:
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
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   proc_$3A$2F2_ω
n953_op11_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n954_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n956_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n955_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx988_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n957_lit_string_α
.Lx988_0:
                        .quad            .Lx988_0_s
.Lx988_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n956_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   n958_op11_α
n956_op11_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n957_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx990_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n959_lit_string_α
.Lx990_0:
                        .quad            .Lx990_0_s
.Lx990_0_s:
                        .string          "nono"
#-----------------------------------------------------------------------------------------------------------------------
n958_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_$3A$2F2_ω
                                                                                        jmp   n960_lit_string_α
n958_op11_β:
                                                                                        jmp   proc_$3A$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n959_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx992_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n961_op11_α
.Lx992_0:
                        .quad            .Lx992_0_s
.Lx992_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n960_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx993_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n962_op11_α
.Lx993_0:
                        .quad            .Lx993_0_s
.Lx993_0_s:
                        .string          "nono"
#-----------------------------------------------------------------------------------------------------------------------
n961_op11_α:
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
                                                                                        je    n953_op11_α
                                                                                        jmp   n963_op11_α
n961_op11_β:
                                                                                        jmp   n953_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n962_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n944_op11_α
                                                                                        jmp   n964_op11_α
n962_op11_β:
                                                                                        jmp   n944_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n963_op11_α:
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
.Lx996_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx996_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx996_41
                        cmp              esi, 1
                                                                                        jne   .Lx996_55
                        mov              r8, rax
                                                                                        jmp   .Lx996_40
.Lx996_55:
                        cmp              esi, 2
                                                                                        jne   .Lx996_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx996_41
                        mov              r8, rax
                                                                                        jmp   .Lx996_40
.Lx996_56:
                        cmp              eax, 13
                                                                                        jne   .Lx996_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx996_41
                        cmp              rax, r8
                                                                                        je    .Lx996_41
                        mov              r8, rax
                                                                                        jmp   .Lx996_40
.Lx996_41:
                        lea              r9, [rbp + 160]
.Lx996_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx996_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx996_43
                        cmp              esi, 1
                                                                                        jne   .Lx996_57
                        mov              r9, rax
                                                                                        jmp   .Lx996_42
.Lx996_57:
                        cmp              esi, 2
                                                                                        jne   .Lx996_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx996_43
                        mov              r9, rax
                                                                                        jmp   .Lx996_42
.Lx996_58:
                        cmp              eax, 13
                                                                                        jne   .Lx996_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx996_43
                        cmp              rax, r9
                                                                                        je    .Lx996_43
                        mov              r9, rax
                                                                                        jmp   .Lx996_42
.Lx996_43:
                        cmp              r8, r9
                                                                                        je    .Lx996_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx996_44
                        cmp              eax, 99
                                                                                        je    .Lx996_44
                        cmp              eax, 13
                                                                                        jne   .Lx996_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx996_44
                                                                                        jmp   .Lx996_45
.Lx996_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx996_53
                        cmp              eax, 99
                                                                                        je    .Lx996_53
                        cmp              eax, 13
                                                                                        jne   .Lx996_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx996_53
                                                                                        jmp   .Lx996_46
.Lx996_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx996_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx996_53
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
                                                                                        jmp   .Lx996_51
.Lx996_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx996_47
                        cmp              eax, 99
                                                                                        je    .Lx996_47
                        cmp              eax, 13
                                                                                        jne   .Lx996_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx996_47
                                                                                        jmp   .Lx996_48
.Lx996_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx996_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx996_53
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
                                                                                        jmp   .Lx996_51
.Lx996_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx996_49
                        cmp              edx, 14
                                                                                        je    .Lx996_53
                                                                                        jmp   .Lx996_52
.Lx996_49:
                        cmp              edx, 14
                                                                                        je    .Lx996_52
                        cmp              ecx, 7
                                                                                        je    .Lx996_53
                        cmp              edx, 7
                                                                                        je    .Lx996_53
                        cmp              ecx, 6
                                                                                        jne   .Lx996_50
                        cmp              edx, 6
                                                                                        jne   .Lx996_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx996_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx996_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx996_51
                                                                                        jmp   .Lx996_52
.Lx996_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx996_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx996_53
.Lx996_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx996_54
.Lx996_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx996_54
.Lx996_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx996_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n953_op11_α
                                                                                        jmp   n965_suspend_α
n963_op11_β:
                                                                                        jmp   n953_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n964_op11_α:
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
.Lx997_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx997_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx997_41
                        cmp              esi, 1
                                                                                        jne   .Lx997_55
                        mov              r8, rax
                                                                                        jmp   .Lx997_40
.Lx997_55:
                        cmp              esi, 2
                                                                                        jne   .Lx997_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx997_41
                        mov              r8, rax
                                                                                        jmp   .Lx997_40
.Lx997_56:
                        cmp              eax, 13
                                                                                        jne   .Lx997_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx997_41
                        cmp              rax, r8
                                                                                        je    .Lx997_41
                        mov              r8, rax
                                                                                        jmp   .Lx997_40
.Lx997_41:
                        lea              r9, [rbp + 480]
.Lx997_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx997_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx997_43
                        cmp              esi, 1
                                                                                        jne   .Lx997_57
                        mov              r9, rax
                                                                                        jmp   .Lx997_42
.Lx997_57:
                        cmp              esi, 2
                                                                                        jne   .Lx997_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx997_43
                        mov              r9, rax
                                                                                        jmp   .Lx997_42
.Lx997_58:
                        cmp              eax, 13
                                                                                        jne   .Lx997_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx997_43
                        cmp              rax, r9
                                                                                        je    .Lx997_43
                        mov              r9, rax
                                                                                        jmp   .Lx997_42
.Lx997_43:
                        cmp              r8, r9
                                                                                        je    .Lx997_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx997_44
                        cmp              eax, 99
                                                                                        je    .Lx997_44
                        cmp              eax, 13
                                                                                        jne   .Lx997_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx997_44
                                                                                        jmp   .Lx997_45
.Lx997_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx997_53
                        cmp              eax, 99
                                                                                        je    .Lx997_53
                        cmp              eax, 13
                                                                                        jne   .Lx997_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx997_53
                                                                                        jmp   .Lx997_46
.Lx997_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx997_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx997_53
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
                                                                                        jmp   .Lx997_51
.Lx997_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx997_47
                        cmp              eax, 99
                                                                                        je    .Lx997_47
                        cmp              eax, 13
                                                                                        jne   .Lx997_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx997_47
                                                                                        jmp   .Lx997_48
.Lx997_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx997_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx997_53
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
                                                                                        jmp   .Lx997_51
.Lx997_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx997_49
                        cmp              edx, 14
                                                                                        je    .Lx997_53
                                                                                        jmp   .Lx997_52
.Lx997_49:
                        cmp              edx, 14
                                                                                        je    .Lx997_52
                        cmp              ecx, 7
                                                                                        je    .Lx997_53
                        cmp              edx, 7
                                                                                        je    .Lx997_53
                        cmp              ecx, 6
                                                                                        jne   .Lx997_50
                        cmp              edx, 6
                                                                                        jne   .Lx997_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx997_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx997_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx997_51
                                                                                        jmp   .Lx997_52
.Lx997_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx997_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx997_53
.Lx997_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx997_54
.Lx997_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx997_54
.Lx997_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx997_54:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n944_op11_α
                                                                                        jmp   n966_suspend_α
n964_op11_β:
                                                                                        jmp   n944_op11_α
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
                                                                                        jmp   n953_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n966_suspend_α:
                        lea              rax, [rip + n966_suspend_β]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$3A$2F2_γ
n966_suspend_β:
                                                                                        jmp   n944_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_β:
                                                                                        jmp   qword ptr [rbp + 912]
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$3A$2F2_res]
                        push             rax
                        mov              rax, [rbp + 952]
                        mov              rbp, [rbp + 968]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$3A$2F2_ω:
                        mov              rax, [rbp + 960]
                        lea              rsp, [rbp + 976]
                        mov              rbp, [rbp + 968]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_mqual$2F1_α
proc_mqual$2F1_α:
                        .global          proc_mqual$2F1_α
                        .global          proc_mqual$2F1_β
                        .global          proc_mqual$2F1_γ
                        .global          proc_mqual$2F1_ω
                        sub              rsp, 256
                        mov              [rsp + 232], rcx
                        mov              [rsp + 240], rdx
                        mov              [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 224
                        call             rt_jmp_frame_lexprep2@PLT
proc_mqual$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n1002_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1009_101
.Lx1009_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1009_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_mqual$2F1_ω
                                                                                        jmp   n1003_var_ref_α
n1002_op11_β:
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
                                                                                        jmp   n1005_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1005_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx1014_44
                        cmp              eax, 13
                                                                                        jne   .Lx1014_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1014_44
                                                                                        jmp   .Lx1014_45
.Lx1014_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1014_53
                        cmp              eax, 99
                                                                                        je    .Lx1014_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx1014_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx1014_49
                        cmp              edx, 14
                                                                                        je    .Lx1014_53
                                                                                        jmp   .Lx1014_52
.Lx1014_49:
                        cmp              edx, 14
                                                                                        je    .Lx1014_52
                        cmp              ecx, 7
                                                                                        je    .Lx1014_53
                        cmp              edx, 7
                                                                                        je    .Lx1014_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1014_50
                        cmp              edx, 6
                                                                                        jne   .Lx1014_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1014_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1014_54
.Lx1014_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1014_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n1007_op11_α
                                                                                        jmp   n1006_move_label_α
n1005_op11_β:
                                                                                        jmp   n1007_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1006_move_label_α:
                        lea              rax, [rip + n1007_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_mqual$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n1007_op11_α:
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
                                                                                        je    proc_mqual$2F1_ω
                                                                                        jmp   proc_mqual$2F1_ω
n1007_op11_β:
                                                                                        jmp   proc_mqual$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1008_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n1008_disjunction_β:
                                                                                        jmp   proc_mqual$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_β:
                                                                                        jmp   n1008_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 232]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_ω:
                        mov              rax, [rbp + 240]
                        lea              rsp, [rbp + 256]
                        mov              rbp, [rbp + 248]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_mqual$2F1_dcα:
                        pop              r11
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 224], r11
                        lea              rax, [rip + .Lx1020_2]
                        mov              qword ptr [rbp + 232], rax
                        lea              rax, [rip + .Lx1020_3]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 224
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_mqual$2F1_α_body
.Lx1020_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx1020_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
                        lea              rax, [rip + n1024_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1021_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1026_101
.Lx1026_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1026_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n1022_lit_string_α
n1021_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1022_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1029_21:
                        mov              rdi, qword ptr [rip + .Lx1029_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n1025_op11_α
                                                                                        jmp   n1024_suspend_α
n1023_call_proc_staged_β:
                                                                                        jmp   n1025_op11_α
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
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n1024_suspend_β:
                                                                                        jmp   n1023_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1025_op11_α:
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
n1025_op11_β:
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
                        lea              rax, [rip + n1036_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n1033_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1038_101
.Lx1038_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1038_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n1034_lit_string_α
n1033_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1034_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx1041_21:
                        mov              rdi, qword ptr [rip + .Lx1041_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n1037_op11_α
                                                                                        jmp   n1036_suspend_α
n1035_call_proc_staged_β:
                                                                                        jmp   n1037_op11_α
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
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n1036_suspend_β:
                                                                                        jmp   n1035_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n1037_op11_α:
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
n1037_op11_β:
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
                        lea              rax, [rip + n1056_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n1045_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1057_101
.Lx1057_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1057_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n1046_lit_string_α
n1045_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1046_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1058_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1047_lit_string_α
.Lx1058_0:
                        .quad            .Lx1058_0_s
.Lx1058_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n1047_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx1059_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n1048_lit_string_α
.Lx1059_0:
                        .quad            .Lx1059_0_s
.Lx1059_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1048_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx1060_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n1049_lit_string_α
.Lx1060_0:
                        .quad            .Lx1060_0_s
.Lx1060_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n1049_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1061_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1050_lit_integer_α
.Lx1061_0:
                        .quad            .Lx1061_0_s
.Lx1061_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n1050_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx1062_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1051_op11_α
.Lx1062_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1051_op11_α:
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
                                                                                        jmp   n1052_lit_string_α
n1051_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1052_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx1064_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n1053_op11_α
.Lx1064_0:
                        .quad            .Lx1064_0_s
.Lx1064_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1053_op11_α:
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
                                                                                        je    n1055_op11_α
                                                                                        jmp   n1054_call_proc_staged_α
n1053_op11_β:
                                                                                        jmp   n1055_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx1067_23:
                        mov              rdi, qword ptr [rip + .Lx1067_0]
                        mov              esi, 2
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
                        cmp              eax, 99
                                                                                        je    n1055_op11_α
                                                                                        jmp   n1056_suspend_α
n1054_call_proc_staged_β:
                                                                                        jmp   n1055_op11_α
.Lx1067_0:
                        .quad            .Lx1067_0_s
.Lx1067_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n1055_op11_α:
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
n1055_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1056_suspend_α:
                        lea              rax, [rip + n1056_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n1056_suspend_β:
                                                                                        jmp   n1054_call_proc_staged_β
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
                        .globl           proc_t$2F1_α
proc_t$2F1_α:
                        .global          proc_t$2F1_α
                        .global          proc_t$2F1_β
                        .global          proc_t$2F1_γ
                        .global          proc_t$2F1_ω
                        sub              rsp, 800
                        mov              [rsp + 776], rcx
                        mov              [rsp + 784], rdx
                        mov              [rsp + 792], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 736
                        mov              edx, 768
                        call             rt_jmp_frame_lexprep2@PLT
proc_t$2F1_α_body:
                        lea              rax, [rip + n1091_suspend_β]
                        mov              qword ptr [rbp + 736], rax
#-----------------------------------------------------------------------------------------------------------------------
n1071_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1092_101
.Lx1092_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1092_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_t$2F1_ω
                                                                                        jmp   n1072_var_ref_α
n1071_op11_β:
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
                                                                                        jmp   n1074_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1074_op11_α:
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx1097_44
                        cmp              eax, 13
                                                                                        jne   .Lx1097_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx1097_44
                                                                                        jmp   .Lx1097_45
.Lx1097_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx1097_53
                        cmp              eax, 99
                                                                                        je    .Lx1097_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx1097_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx1097_49
                        cmp              edx, 14
                                                                                        je    .Lx1097_53
                                                                                        jmp   .Lx1097_52
.Lx1097_49:
                        cmp              edx, 14
                                                                                        je    .Lx1097_52
                        cmp              ecx, 7
                                                                                        je    .Lx1097_53
                        cmp              edx, 7
                                                                                        je    .Lx1097_53
                        cmp              ecx, 6
                                                                                        jne   .Lx1097_50
                        cmp              edx, 6
                                                                                        jne   .Lx1097_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx1097_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx1097_54
.Lx1097_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx1097_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n1076_op11_α
                                                                                        jmp   n1075_lit_string_α
n1074_op11_β:
                                                                                        jmp   n1076_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1075_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx1098_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n1077_lit_string_α
.Lx1098_0:
                        .quad            .Lx1098_0_s
.Lx1098_0_s:
                        .string          "test_module"
#-----------------------------------------------------------------------------------------------------------------------
n1076_op11_α:
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
                                                                                        je    proc_t$2F1_ω
                                                                                        jmp   proc_t$2F1_ω
n1076_op11_β:
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1077_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx1100_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n1078_lit_string_α
.Lx1100_0:
                        .quad            .Lx1100_0_s
.Lx1100_0_s:
                        .string          ";"
#-----------------------------------------------------------------------------------------------------------------------
n1078_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx1101_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n1079_lit_string_α
.Lx1101_0:
                        .quad            .Lx1101_0_s
.Lx1101_0_s:
                        .string          "->"
#-----------------------------------------------------------------------------------------------------------------------
n1079_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx1102_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n1080_lit_string_α
.Lx1102_0:
                        .quad            .Lx1102_0_s
.Lx1102_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n1080_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx1103_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n1081_var_ref_α
.Lx1103_0:
                        .quad            .Lx1103_0_s
.Lx1103_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n1081_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n1082_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1082_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx1106_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n1083_op11_α
.Lx1106_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n1083_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_t$2F1_ω
                                                                                        jmp   n1084_op11_α
n1083_op11_β:
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1084_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_t$2F1_ω
                                                                                        jmp   n1085_lit_string_α
n1084_op11_β:
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1085_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx1109_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n1086_var_ref_α
.Lx1109_0:
                        .quad            .Lx1109_0_s
.Lx1109_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n1086_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n1087_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n1087_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx1112_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n1088_op11_α
.Lx1112_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n1088_op11_α:
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
                        cmp              eax, 99
                                                                                        je    proc_t$2F1_ω
                                                                                        jmp   n1089_op11_α
n1088_op11_β:
                                                                                        jmp   proc_t$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n1089_op11_α:
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
                        cmp              eax, 99
                                                                                        je    n1076_op11_α
                                                                                        jmp   n1090_call_proc_staged_α
n1089_op11_β:
                                                                                        jmp   n1076_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n1090_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1116_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1116_21
.Lx1116_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx1116_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx1116_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx1116_23
.Lx1116_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx1116_23:
                        mov              edi, 3
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx1116_1
                        lea              rcx, [rip + .Lx1116_3]
                        lea              rdx, [rip + .Lx1116_4]
                                                                                        jmp   rax
.Lx1116_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx1116_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx1116_2
.Lx1116_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx1116_2
.Lx1116_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx1116_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx1116_2
.Lx1116_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx1116_2
.Lx1116_1:
                        call             rt_faildescr@PLT
.Lx1116_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n1076_op11_α
                                                                                        jmp   n1091_suspend_α
n1090_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx1116_0:
                        .quad            .Lx1116_0_s
.Lx1116_0_s:
                        .string          ":/2"
#-----------------------------------------------------------------------------------------------------------------------
n1091_suspend_α:
                        lea              rax, [rip + n1091_suspend_β]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_t$2F1_γ
n1091_suspend_β:
                                                                                        jmp   n1090_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_β:
                                                                                        jmp   qword ptr [rbp + 736]
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_t$2F1_res]
                        push             rax
                        mov              rax, [rbp + 776]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_t$2F1_ω:
                        mov              rax, [rbp + 784]
                        lea              rsp, [rbp + 800]
                        mov              rbp, [rbp + 792]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_module$2F0_α
proc_test_module$2F0_α:
                        .global          proc_test_module$2F0_α
                        .global          proc_test_module$2F0_β
                        .global          proc_test_module$2F0_γ
                        .global          proc_test_module$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_module$2F0_α_body:
                        lea              rax, [rip + n1126_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n1119_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1127_101
.Lx1127_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1127_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_module$2F0_ω
                                                                                        jmp   n1120_lit_string_α
n1119_op11_β:
                                                                                        jmp   proc_test_module$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1120_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx1128_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n1121_lit_string_α
.Lx1128_0:
                        .quad            .Lx1128_0_s
.Lx1128_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n1121_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx1129_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n1122_lit_string_α
.Lx1129_0:
                        .quad            .Lx1129_0_s
.Lx1129_0_s:
                        .string          "module"
#-----------------------------------------------------------------------------------------------------------------------
n1122_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1130_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1123_op11_α
.Lx1130_0:
                        .quad            .Lx1130_0_s
.Lx1130_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n1123_op11_α:
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
                                                                                        je    n1125_op11_α
                                                                                        jmp   n1124_call_proc_staged_α
n1123_op11_β:
                                                                                        jmp   n1125_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx1133_21:
                        mov              rdi, qword ptr [rip + .Lx1133_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n1125_op11_α
                                                                                        jmp   n1126_suspend_α
n1124_call_proc_staged_β:
                                                                                        jmp   n1125_op11_α
.Lx1133_0:
                        .quad            .Lx1133_0_s
.Lx1133_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n1125_op11_α:
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
                                                                                        je    proc_test_module$2F0_ω
                                                                                        jmp   proc_test_module$2F0_ω
n1125_op11_β:
                                                                                        jmp   proc_test_module$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1126_suspend_α:
                        lea              rax, [rip + n1126_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_module$2F0_γ
n1126_suspend_β:
                                                                                        jmp   n1124_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_module$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_module$2F0_ω:
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
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_3$2F0_α_body:
                        lea              rax, [rip + n1143_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1137_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1144_101
.Lx1144_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1144_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n1138_lit_string_α
n1137_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1138_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1145_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1139_lit_string_α
.Lx1145_0:
                        .quad            .Lx1145_0_s
.Lx1145_0_s:
                        .string          "mqual"
#-----------------------------------------------------------------------------------------------------------------------
n1139_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1146_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1140_op11_α
.Lx1146_0:
                        .quad            .Lx1146_0_s
.Lx1146_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n1140_op11_α:
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
                                                                                        je    n1142_op11_α
                                                                                        jmp   n1141_call_proc_staged_α
n1140_op11_β:
                                                                                        jmp   n1142_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1149_21:
                        mov              rdi, qword ptr [rip + .Lx1149_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n1142_op11_α
                                                                                        jmp   n1143_suspend_α
n1141_call_proc_staged_β:
                                                                                        jmp   n1142_op11_α
.Lx1149_0:
                        .quad            .Lx1149_0_s
.Lx1149_0_s:
                        .string          "meta_predicate/1"
#-----------------------------------------------------------------------------------------------------------------------
n1142_op11_α:
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
n1142_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1143_suspend_α:
                        lea              rax, [rip + n1143_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n1143_suspend_β:
                                                                                        jmp   n1141_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_3$2F0_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_3$2F0_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
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
                        lea              rax, [rip + n1159_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n1153_op11_α:
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
                        mov              eax, 6
                                                                                        jmp   .Lx1160_101
.Lx1160_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx1160_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n1154_lit_string_α
n1153_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1154_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx1161_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n1155_lit_string_α
.Lx1161_0:
                        .quad            .Lx1161_0_s
.Lx1161_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n1155_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx1162_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1156_op11_α
.Lx1162_0:
                        .quad            .Lx1162_0_s
.Lx1162_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n1156_op11_α:
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
                                                                                        je    n1158_op11_α
                                                                                        jmp   n1157_call_proc_staged_α
n1156_op11_β:
                                                                                        jmp   n1158_op11_α
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
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx1165_21:
                        mov              rdi, qword ptr [rip + .Lx1165_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    n1158_op11_α
                                                                                        jmp   n1159_suspend_α
n1157_call_proc_staged_β:
                                                                                        jmp   n1158_op11_α
.Lx1165_0:
                        .quad            .Lx1165_0_s
.Lx1165_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n1158_op11_α:
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
n1158_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1159_suspend_α:
                        lea              rax, [rip + n1159_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n1159_suspend_β:
                                                                                        jmp   n1157_call_proc_staged_β
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
n1169_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx1171_0]
                        mov              qword ptr [rsp + 56], rax
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
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx1173_21
.Lx1173_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx1173_21:
                        mov              rdi, qword ptr [rip + .Lx1173_0]
                        mov              esi, 1
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
                        cmp              eax, 99
                                                                                        je    main_ω
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
