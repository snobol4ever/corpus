                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 1040
                        mov              [rsp + 1016], rcx
                        mov              [rsp + 1024], rdx
                        mov              [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 944
                        mov              edx, 1008
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 944], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx29_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx29_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx29_101
.Lx29_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx29_101:
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 928], 1
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n3_op11_α
.Lx32_0:
                        .quad            .Lx32_0_s
.Lx32_0_s:
                        .string          "long"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              rsi, qword ptr [rip + .Lx33_2]
                                                                                        jmp   .Lx33_3
.Lx33_2:
                        .quad            .Lx33_2_s
.Lx33_2_s:
                        .string          "long"
.Lx33_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_var_ref_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
n5_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n7_var_ref_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
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
                                                                                        je    n5_op11_α
                                                                                        jmp   n10_op11_α
n9_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
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
                        lea              r9, [rbp + 704]
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
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n11_var_ref_α
n10_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n12_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n13_call_proc_staged_α
.Lx46_0:
                        .quad            1100
#-----------------------------------------------------------------------------------------------------------------------
n13_call_proc_staged_α:
                        mov              qword ptr [rbp + 608], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx48_20
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx48_21
.Lx48_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx48_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx48_22
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx48_23
.Lx48_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx48_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx48_1
                        lea              rcx, [rip + .Lx48_3]
                        lea              rdx, [rip + .Lx48_4]
                                                                                        jmp   rax
.Lx48_3:
                        mov              qword ptr [rbp + 616], rsp
                        mov              rax, qword ptr [rbp + 608]
                        test             rax, rax
                                                                                        jne   .Lx48_5
                        mov              qword ptr [rbp + 608], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx48_2
.Lx48_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx48_2
.Lx48_4:
                        mov              rax, qword ptr [rbp + 608]
                        test             rax, rax
                                                                                        jne   .Lx48_6
                        mov              qword ptr [rbp + 608], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx48_2
.Lx48_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx48_2
.Lx48_1:
                        call             rt_faildescr@PLT
.Lx48_2:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n14_lit_string_α
n13_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 616]
                                                                                        jmp   qword ptr [rsp]
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "length/2"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n15_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n16_op11_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n17_var_ref_α
n16_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n18_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx55_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx55_21
.Lx55_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx55_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx55_22
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx55_23
.Lx55_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx55_23:
                        mov              rdi, qword ptr [rip + .Lx55_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx55_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx55_3]
                        lea              rdx, [rip + .Lx55_4]
                                                                                        jmp   rax
.Lx55_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx55_2
.Lx55_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx55_2
.Lx55_1:
                        call             rt_faildescr@PLT
.Lx55_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n13_call_proc_staged_β
                                                                                        jmp   n19_var_ref_α
n18_call_proc_staged_β:
                                                                                        jmp   n13_call_proc_staged_β
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "maplist/2"
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n21_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn61:               .string          "$atom_chars"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn61]
                        lea              rsi, [rbp + 320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n18_call_proc_staged_β
                                                                                        jmp   n22_lit_string_α
n21_op11_β:
                                                                                        jmp   n18_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n23_var_ref_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "tv"
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n24_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx66_21
.Lx66_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx66_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx66_23
.Lx66_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx66_23:
                        mov              rdi, qword ptr [rip + .Lx66_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx66_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_3]
                        lea              rdx, [rip + .Lx66_4]
                                                                                        jmp   rax
.Lx66_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx66_2
.Lx66_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx66_2
.Lx66_1:
                        call             rt_faildescr@PLT
.Lx66_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n18_call_proc_staged_β
                                                                                        jmp   n25_lit_string_α
n24_call_proc_staged_β:
                                                                                        jmp   n18_call_proc_staged_β
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "setenv/2"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n26_var_ref_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "tv"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx71_21
.Lx71_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx71_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx71_23
.Lx71_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx71_23:
                        mov              rdi, qword ptr [rip + .Lx71_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx71_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx71_3]
                        lea              rdx, [rip + .Lx71_4]
                                                                                        jmp   rax
.Lx71_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_1:
                        call             rt_faildescr@PLT
.Lx71_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n24_call_proc_staged_β
                                                                                        jmp   n28_suspend_α
n27_call_proc_staged_β:
                                                                                        jmp   n24_call_proc_staged_β
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "getenv/2"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n28_suspend_β:
                                                                                        jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 944]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1016]
                        mov              rbp, [rbp + 1032]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 1024]
                        lea              rsp, [rbp + 1040]
                        mov              rbp, [rbp + 1032]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_length$2F2_α
proc_length$2F2_α:
                        .global          proc_length$2F2_α
                        .global          proc_length$2F2_β
                        .global          proc_length$2F2_γ
                        .global          proc_length$2F2_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_length$2F2_α_body:
                        lea              rax, [rip + n86_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx87_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx87_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx87_101
.Lx87_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx87_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n75_var_ref_α
n74_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n77_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
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
                        lea              r9, [rbp + 368]
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n78_var_ref_α
n77_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
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
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   proc_length$2F2_ω
n79_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
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
                        lea              r9, [rbp + 288]
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n82_var_ref_α
n81_op11_β:
                                                                                        jmp   n79_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n84_var_ref_α
.Lx101_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n85_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n85_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx105_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx105_21
.Lx105_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx105_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx105_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx105_23
.Lx105_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx105_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx105_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx105_25
.Lx105_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx105_25:
                        mov              edi, 8
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx105_1
                        lea              rcx, [rip + .Lx105_3]
                        lea              rdx, [rip + .Lx105_4]
                                                                                        jmp   rax
.Lx105_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx105_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx105_2
.Lx105_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx105_2
.Lx105_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx105_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx105_2
.Lx105_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx105_2
.Lx105_1:
                        call             rt_faildescr@PLT
.Lx105_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n79_op11_α
                                                                                        jmp   n86_suspend_α
n85_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n86_suspend_α:
                        lea              rax, [rip + n86_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n86_suspend_β:
                                                                                        jmp   n85_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_length$2F2_res]
                        push             rax
                        mov              rax, [rbp + 472]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_length$2F2_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_test$2F4_α
proc_pj_test$2F4_α:
                        .global          proc_pj_test$2F4_α
                        .global          proc_pj_test$2F4_β
                        .global          proc_pj_test$2F4_γ
                        .global          proc_pj_test$2F4_ω
                        sub              rsp, 1776
                        mov              [rsp + 1752], rcx
                        mov              [rsp + 1760], rdx
                        mov              [rsp + 1768], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1696
                        mov              edx, 1744
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx156_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx156_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx156_101
.Lx156_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx156_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n109_var_ref_α
n108_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n109_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n110_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n111_op11_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "env"
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              rsi, qword ptr [rip + .Lx160_2]
                                                                                        jmp   .Lx160_3
.Lx160_2:
                        .quad            .Lx160_2_s
.Lx160_2_s:
                        .string          "env"
.Lx160_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n113_op11_α
                                                                                        jmp   n112_var_ref_α
n111_op11_β:
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n114_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
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
n113_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n115_op11_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "long"
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              rsi, qword ptr [rip + .Lx165_2]
                                                                                        jmp   .Lx165_3
.Lx165_2:
                        .quad            .Lx165_2_s
.Lx165_2_s:
                        .string          "long"
.Lx165_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n113_op11_α
                                                                                        jmp   n116_var_ref_α
n115_op11_β:
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n117_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n118_var_ref_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n113_op11_α
                                                                                        jmp   n121_op11_α
n120_op11_β:
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1360]
                        lea              r8, [rbp + 1360]
.Lx174_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              esi, 1
                                                                                        jne   .Lx174_55
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_55:
                        cmp              esi, 2
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_56:
                        cmp              eax, 13
                                                                                        jne   .Lx174_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_41
                        cmp              rax, r8
                                                                                        je    .Lx174_41
                        mov              r8, rax
                                                                                        jmp   .Lx174_40
.Lx174_41:
                        lea              r9, [rbp + 1376]
.Lx174_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx174_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              esi, 1
                                                                                        jne   .Lx174_57
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_57:
                        cmp              esi, 2
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_58:
                        cmp              eax, 13
                                                                                        jne   .Lx174_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx174_43
                        cmp              rax, r9
                                                                                        je    .Lx174_43
                        mov              r9, rax
                                                                                        jmp   .Lx174_42
.Lx174_43:
                        cmp              r8, r9
                                                                                        je    .Lx174_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_44
                        cmp              eax, 99
                                                                                        je    .Lx174_44
                        cmp              eax, 13
                                                                                        jne   .Lx174_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx174_44
                                                                                        jmp   .Lx174_45
.Lx174_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_53
                        cmp              eax, 99
                                                                                        je    .Lx174_53
                        cmp              eax, 13
                                                                                        jne   .Lx174_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_46
.Lx174_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx174_47
                        cmp              eax, 99
                                                                                        je    .Lx174_47
                        cmp              eax, 13
                                                                                        jne   .Lx174_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx174_47
                                                                                        jmp   .Lx174_48
.Lx174_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx174_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx174_53
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
                                                                                        jmp   .Lx174_51
.Lx174_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx174_49
                        cmp              edx, 14
                                                                                        je    .Lx174_53
                                                                                        jmp   .Lx174_52
.Lx174_49:
                        cmp              edx, 14
                                                                                        je    .Lx174_52
                        cmp              ecx, 7
                                                                                        je    .Lx174_53
                        cmp              edx, 7
                                                                                        je    .Lx174_53
                        cmp              ecx, 6
                                                                                        jne   .Lx174_50
                        cmp              edx, 6
                                                                                        jne   .Lx174_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx174_51
                                                                                        jmp   .Lx174_52
.Lx174_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx174_53
.Lx174_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx174_54
.Lx174_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx174_54
.Lx174_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx174_54:
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n113_op11_α
                                                                                        jmp   n122_var_ref_α
n121_op11_β:
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n123_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n124_lit_string_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n125_var_ref_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          "length"
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n127_op11_α
.Lx181_0:
                        .quad            1100
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
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
                                                                                        jmp   n128_lit_string_α
n127_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n129_lit_string_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n130_lit_string_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "maplist"
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n131_lit_string_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "="
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx186_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n132_op11_α
.Lx186_0:
                        .quad            .Lx186_0_s
.Lx186_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n132_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n133_var_ref_α
n132_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n134_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n134_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 392]
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n135_lit_string_α
n134_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n136_lit_string_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n137_var_ref_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "atom_chars"
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n139_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n139_op11_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n140_lit_string_α
n139_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n141_lit_string_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n142_lit_string_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "setenv"
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n143_var_ref_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "tv"
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n144_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n144_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 712]
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n145_lit_string_α
n144_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n146_lit_string_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "getenv"
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n147_var_ref_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "tv"
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n148_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n148_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n149_op11_α
n148_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n149_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n150_op11_α
n149_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n151_op11_α
n150_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n152_op11_α
n151_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n152_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n113_op11_α
                                                                                        jmp   n153_op11_α
n152_op11_β:
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
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
                        lea              r9, [rbp + 208]
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n113_op11_α
                                                                                        jmp   n154_move_label_α
n153_op11_β:
                                                                                        jmp   n113_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_move_label_α:
                        lea              rax, [rip + n113_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n155_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n155_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1752]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, [rbp + 1768]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 1760]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, [rbp + 1768]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_dcα:
                        pop              r11
                        sub              rsp, 1792
                        mov              qword ptr [rsp + 1768], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1744], r11
                        lea              rax, [rip + .Lx218_2]
                        mov              qword ptr [rbp + 1752], rax
                        lea              rax, [rip + .Lx218_3]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              qword ptr [rbp + 40], r8
                        mov              rdi, rbp
                        mov              esi, 1696
                        mov              edx, 1744
                        mov              ecx, 4
                        mov              r8d, 4
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_pj_test$2F4_α_body
.Lx218_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1776
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx218_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1776
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_env$2F0_α
proc_test_env$2F0_α:
                        .global          proc_test_env$2F0_α
                        .global          proc_test_env$2F0_β
                        .global          proc_test_env$2F0_γ
                        .global          proc_test_env$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_env$2F0_α_body:
                        lea              rax, [rip + n226_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n219_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx227_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx227_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx227_101
.Lx227_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx227_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_env$2F0_ω
                                                                                        jmp   n220_lit_string_α
n219_op11_β:
                                                                                        jmp   proc_test_env$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n221_lit_string_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n222_lit_string_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "env"
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n223_op11_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n223_op11_α:
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
                                                                                        je    n225_op11_α
                                                                                        jmp   n224_call_proc_staged_α
n223_op11_β:
                                                                                        jmp   n225_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx233_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx233_21
.Lx233_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx233_21:
                        mov              rdi, qword ptr [rip + .Lx233_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx233_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx233_3]
                        lea              rdx, [rip + .Lx233_4]
                                                                                        jmp   rax
.Lx233_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx233_2
.Lx233_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx233_2
.Lx233_1:
                        call             rt_faildescr@PLT
.Lx233_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n225_op11_α
                                                                                        jmp   n226_suspend_α
n224_call_proc_staged_β:
                                                                                        jmp   n225_op11_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n225_op11_α:
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
                                                                                        je    proc_test_env$2F0_ω
                                                                                        jmp   proc_test_env$2F0_ω
n225_op11_β:
                                                                                        jmp   proc_test_env$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n226_suspend_α:
                        lea              rax, [rip + n226_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_env$2F0_γ
n226_suspend_β:
                                                                                        jmp   n224_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_env$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_env$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_env$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_env$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_env$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
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
                        lea              rax, [rip + n240_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n237_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx242_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx242_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx242_101
.Lx242_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx242_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n238_lit_string_α
n237_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n238_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n239_call_proc_staged_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "env"
#-----------------------------------------------------------------------------------------------------------------------
n239_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx245_21
.Lx245_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx245_21:
                        mov              rdi, qword ptr [rip + .Lx245_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n241_op11_α
                                                                                        jmp   n240_suspend_α
n239_call_proc_staged_β:
                                                                                        jmp   n241_op11_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n240_suspend_α:
                        lea              rax, [rip + n240_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n240_suspend_β:
                                                                                        jmp   n239_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n241_op11_α:
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
n241_op11_β:
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
                        lea              rax, [rip + n260_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n249_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx261_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx261_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx261_101
.Lx261_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx261_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n250_lit_string_α
n249_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n251_lit_string_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "test_env"
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n252_lit_string_α
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n253_lit_string_α
.Lx264_0:
                        .quad            .Lx264_0_s
.Lx264_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n254_lit_integer_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "test_env"
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n255_op11_α
.Lx266_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n255_op11_α:
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
                                                                                        jmp   n256_lit_string_α
n255_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n257_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n257_op11_α:
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
                                                                                        je    n259_op11_α
                                                                                        jmp   n258_call_proc_staged_α
n257_op11_β:
                                                                                        jmp   n259_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx271_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx271_21
.Lx271_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx271_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx271_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx271_23
.Lx271_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx271_23:
                        mov              rdi, qword ptr [rip + .Lx271_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n259_op11_α
                                                                                        jmp   n260_suspend_α
n258_call_proc_staged_β:
                                                                                        jmp   n259_op11_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n259_op11_α:
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
n259_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n260_suspend_α:
                        lea              rax, [rip + n260_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n260_suspend_β:
                                                                                        jmp   n258_call_proc_staged_β
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
                        lea              rax, [rip + n278_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n275_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx280_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx280_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx280_101
.Lx280_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx280_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n276_lit_string_α
n275_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n277_call_proc_staged_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "env"
#-----------------------------------------------------------------------------------------------------------------------
n277_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx283_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx283_21
.Lx283_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx283_21:
                        mov              rdi, qword ptr [rip + .Lx283_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n279_op11_α
                                                                                        jmp   n278_suspend_α
n277_call_proc_staged_β:
                                                                                        jmp   n279_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n278_suspend_α:
                        lea              rax, [rip + n278_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n278_suspend_β:
                                                                                        jmp   n277_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n279_op11_α:
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
n279_op11_β:
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
                        lea              rax, [rip + n293_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx294_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx294_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx294_101
.Lx294_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx294_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n288_lit_string_α
n287_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n289_lit_string_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n290_op11_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
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
                                                                                        je    n292_op11_α
                                                                                        jmp   n291_call_proc_staged_α
n290_op11_β:
                                                                                        jmp   n292_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n291_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx299_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx299_21
.Lx299_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx299_21:
                        mov              rdi, qword ptr [rip + .Lx299_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx299_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx299_3]
                        lea              rdx, [rip + .Lx299_4]
                                                                                        jmp   rax
.Lx299_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx299_2
.Lx299_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx299_2
.Lx299_1:
                        call             rt_faildescr@PLT
.Lx299_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n292_op11_α
                                                                                        jmp   n293_suspend_α
n291_call_proc_staged_β:
                                                                                        jmp   n292_op11_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n292_op11_α:
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
n292_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n293_suspend_α:
                        lea              rax, [rip + n293_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n293_suspend_β:
                                                                                        jmp   n291_call_proc_staged_β
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
                        .globl           proc_$length_$2F3_α
proc_$length_$2F3_α:
                        .global          proc_$length_$2F3_α
                        .global          proc_$length_$2F3_β
                        .global          proc_$length_$2F3_γ
                        .global          proc_$length_$2F3_ω
                        sub              rsp, 1344
                        mov              [rsp + 1320], rcx
                        mov              [rsp + 1328], rdx
                        mov              [rsp + 1336], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1216
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
proc_$length_$2F3_α_body:
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n303_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx344_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx344_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx344_101
.Lx344_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx344_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n304_var_ref_α
n303_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n305_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n306_lit_string_α
.Lx347_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx348_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n307_op11_α
.Lx348_0:
                        .quad            .Lx348_0_s
.Lx348_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx349_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx349_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx349_111
                        cmp              esi, 1
                                                                                        jne   .Lx349_112
                        mov              r8, rax
                                                                                        jmp   .Lx349_110
.Lx349_112:
                        cmp              esi, 2
                                                                                        jne   .Lx349_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx349_111
                        mov              r8, rax
                                                                                        jmp   .Lx349_110
.Lx349_113:
                        cmp              eax, 13
                                                                                        jne   .Lx349_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx349_111
                        cmp              rax, r8
                                                                                        je    .Lx349_111
                        mov              r8, rax
                                                                                        jmp   .Lx349_110
.Lx349_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx349_114
                        cmp              eax, 99
                                                                                        je    .Lx349_114
                        cmp              eax, 13
                                                                                        jne   .Lx349_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx349_114
                                                                                        jmp   .Lx349_118
.Lx349_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx349_115
                        cmp              eax, 6
                                                                                        je    .Lx349_114
                        cmp              eax, 1
                                                                                        jne   .Lx349_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx349_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx349_114
                                                                                        jmp   .Lx349_116
.Lx349_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx349_117
.Lx349_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx349_117
.Lx349_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx349_117:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n309_var_ref_α
                                                                                        jmp   n308_var_ref_α
n307_op11_β:
                                                                                        jmp   n309_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n310_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n311_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n312_op11_α
.Lx354_0:
                        .quad            .Lx354_0_s
.Lx354_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx355_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n313_lit_integer_α
.Lx355_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx356_2]
                                                                                        jmp   .Lx356_3
.Lx356_2:
                        .quad            .Lx356_2_s
.Lx356_2_s:
                        .string          "[]"
.Lx356_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n314_var_ref_α
n312_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n316_op11_α
.Lx357_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n315_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n309_var_ref_α
n315_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_op11_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx361_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx361_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx361_111
                        cmp              esi, 1
                                                                                        jne   .Lx361_112
                        mov              r8, rax
                                                                                        jmp   .Lx361_110
.Lx361_112:
                        cmp              esi, 2
                                                                                        jne   .Lx361_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx361_111
                        mov              r8, rax
                                                                                        jmp   .Lx361_110
.Lx361_113:
                        cmp              eax, 13
                                                                                        jne   .Lx361_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx361_111
                        cmp              rax, r8
                                                                                        je    .Lx361_111
                        mov              r8, rax
                                                                                        jmp   .Lx361_110
.Lx361_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx361_114
                        cmp              eax, 99
                                                                                        je    .Lx361_114
                        cmp              eax, 13
                                                                                        jne   .Lx361_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx361_114
                                                                                        jmp   .Lx361_118
.Lx361_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx361_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx361_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx361_115
                                                                                        jmp   .Lx361_114
.Lx361_119:
                        cmp              eax, 6
                                                                                        jne   .Lx361_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx361_114
                                                                                        jmp   .Lx361_115
.Lx361_120:
                        cmp              eax, 1
                                                                                        jne   .Lx361_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx361_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx361_114
                                                                                        jmp   .Lx361_115
.Lx361_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx361_117
.Lx361_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx361_117
.Lx361_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx361_117:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n318_var_ref_α
n316_op11_β:
                                                                                        jmp   n319_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n320_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n321_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_op11_α:
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
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   proc_$length_$2F3_ω
n319_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n320_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
.Lx367_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx367_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        cmp              esi, 1
                                                                                        jne   .Lx367_55
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_55:
                        cmp              esi, 2
                                                                                        jne   .Lx367_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_56:
                        cmp              eax, 13
                                                                                        jne   .Lx367_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_41
                        cmp              rax, r8
                                                                                        je    .Lx367_41
                        mov              r8, rax
                                                                                        jmp   .Lx367_40
.Lx367_41:
                        lea              r9, [rbp + 976]
.Lx367_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx367_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        cmp              esi, 1
                                                                                        jne   .Lx367_57
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_57:
                        cmp              esi, 2
                                                                                        jne   .Lx367_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_58:
                        cmp              eax, 13
                                                                                        jne   .Lx367_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx367_43
                        cmp              rax, r9
                                                                                        je    .Lx367_43
                        mov              r9, rax
                                                                                        jmp   .Lx367_42
.Lx367_43:
                        cmp              r8, r9
                                                                                        je    .Lx367_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_44
                        cmp              eax, 99
                                                                                        je    .Lx367_44
                        cmp              eax, 13
                                                                                        jne   .Lx367_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx367_44
                                                                                        jmp   .Lx367_45
.Lx367_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_53
                        cmp              eax, 99
                                                                                        je    .Lx367_53
                        cmp              eax, 13
                                                                                        jne   .Lx367_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx367_53
                                                                                        jmp   .Lx367_46
.Lx367_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx367_53
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
                                                                                        jmp   .Lx367_51
.Lx367_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx367_47
                        cmp              eax, 99
                                                                                        je    .Lx367_47
                        cmp              eax, 13
                                                                                        jne   .Lx367_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx367_47
                                                                                        jmp   .Lx367_48
.Lx367_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx367_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx367_53
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
                                                                                        jmp   .Lx367_51
.Lx367_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx367_49
                        cmp              edx, 14
                                                                                        je    .Lx367_53
                                                                                        jmp   .Lx367_52
.Lx367_49:
                        cmp              edx, 14
                                                                                        je    .Lx367_52
                        cmp              ecx, 7
                                                                                        je    .Lx367_53
                        cmp              edx, 7
                                                                                        je    .Lx367_53
                        cmp              ecx, 6
                                                                                        jne   .Lx367_50
                        cmp              edx, 6
                                                                                        jne   .Lx367_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx367_51
                                                                                        jmp   .Lx367_52
.Lx367_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx367_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx367_53
.Lx367_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx367_54
.Lx367_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx367_54
.Lx367_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx367_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n322_var_ref_α
n320_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n323_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n324_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n325_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n326_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n325_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 624]
                        lea              r8, [rbp + 624]
.Lx376_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx376_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_61
                        cmp              esi, 1
                                                                                        jne   .Lx376_62
                        mov              r8, rax
                                                                                        jmp   .Lx376_60
.Lx376_62:
                        cmp              esi, 2
                                                                                        jne   .Lx376_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_61
                        mov              r8, rax
                                                                                        jmp   .Lx376_60
.Lx376_63:
                        cmp              eax, 13
                                                                                        jne   .Lx376_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_61
                        cmp              rax, r8
                                                                                        je    .Lx376_61
                        mov              r8, rax
                                                                                        jmp   .Lx376_60
.Lx376_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_80
                        cmp              eax, 99
                                                                                        je    .Lx376_80
                        cmp              eax, 13
                                                                                        jne   .Lx376_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx376_80
                                                                                        jmp   .Lx376_74
.Lx376_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx376_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx376_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx376_73
                        lea              r9, [rbp + 640]
.Lx376_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx376_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_65
                        cmp              esi, 1
                                                                                        jne   .Lx376_66
                        mov              r9, rax
                                                                                        jmp   .Lx376_64
.Lx376_66:
                        cmp              esi, 2
                                                                                        jne   .Lx376_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_65
                        mov              r9, rax
                                                                                        jmp   .Lx376_64
.Lx376_67:
                        cmp              eax, 13
                                                                                        jne   .Lx376_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_65
                        cmp              rax, r9
                                                                                        je    .Lx376_65
                        mov              r9, rax
                                                                                        jmp   .Lx376_64
.Lx376_65:
                        lea              rcx, [rbp + 656]
.Lx376_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx376_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx376_69
                        cmp              esi, 1
                                                                                        jne   .Lx376_70
                        mov              rcx, rax
                                                                                        jmp   .Lx376_68
.Lx376_70:
                        cmp              esi, 2
                                                                                        jne   .Lx376_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_69
                        mov              rcx, rax
                                                                                        jmp   .Lx376_68
.Lx376_71:
                        cmp              eax, 13
                                                                                        jne   .Lx376_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx376_69
                        cmp              rax, rcx
                                                                                        je    .Lx376_69
                        mov              rcx, rax
                                                                                        jmp   .Lx376_68
.Lx376_69:
                        cmp              r9, rcx
                                                                                        je    .Lx376_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_75
                        cmp              eax, 99
                                                                                        je    .Lx376_75
                        cmp              eax, 13
                                                                                        jne   .Lx376_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx376_75
                                                                                        jmp   .Lx376_72
.Lx376_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_76
                        cmp              eax, 99
                                                                                        je    .Lx376_76
                        cmp              eax, 13
                                                                                        jne   .Lx376_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx376_76
                                                                                        jmp   .Lx376_72
.Lx376_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx376_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx376_72
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
                                                                                        jmp   .Lx376_77
.Lx376_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx376_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx376_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx376_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx376_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx376_72
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
                        lea              r9, [rbp + 640]
.Lx376_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx376_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_82
                        cmp              esi, 1
                                                                                        jne   .Lx376_83
                        mov              r9, rax
                                                                                        jmp   .Lx376_81
.Lx376_83:
                        cmp              esi, 2
                                                                                        jne   .Lx376_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_82
                        mov              r9, rax
                                                                                        jmp   .Lx376_81
.Lx376_84:
                        cmp              eax, 13
                                                                                        jne   .Lx376_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx376_82
                        cmp              rax, r9
                                                                                        je    .Lx376_82
                        mov              r9, rax
                                                                                        jmp   .Lx376_81
.Lx376_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_85
                        cmp              eax, 99
                                                                                        je    .Lx376_85
                        cmp              eax, 13
                                                                                        jne   .Lx376_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx376_85
                                                                                        jmp   .Lx376_86
.Lx376_85:
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
                                                                                        jmp   .Lx376_87
.Lx376_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx376_87:
                        lea              rcx, [rbp + 656]
.Lx376_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx376_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx376_89
                        cmp              esi, 1
                                                                                        jne   .Lx376_90
                        mov              rcx, rax
                                                                                        jmp   .Lx376_88
.Lx376_90:
                        cmp              esi, 2
                                                                                        jne   .Lx376_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx376_89
                        mov              rcx, rax
                                                                                        jmp   .Lx376_88
.Lx376_91:
                        cmp              eax, 13
                                                                                        jne   .Lx376_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx376_89
                        cmp              rax, rcx
                                                                                        je    .Lx376_89
                        mov              rcx, rax
                                                                                        jmp   .Lx376_88
.Lx376_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx376_92
                        cmp              eax, 99
                                                                                        je    .Lx376_92
                        cmp              eax, 13
                                                                                        jne   .Lx376_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx376_92
                                                                                        jmp   .Lx376_93
.Lx376_92:
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
                                                                                        jmp   .Lx376_94
.Lx376_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx376_94:
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
                                                                                        jmp   .Lx376_77
.Lx376_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx376_77
.Lx376_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx376_77:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n327_var_ref_α
n325_op11_β:
                                                                                        jmp   n319_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n326_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 880]
                        lea              r8, [rbp + 880]
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
                        lea              r9, [rbp + 896]
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
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n315_op11_α
                                                                                        jmp   n328_suspend_α
n326_op11_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n329_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_suspend_α:
                        lea              rax, [rip + n328_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n328_suspend_β:
                                                                                        jmp   n315_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n330_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n330_op11_α:
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
.Lx384_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx384_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx384_41
                        cmp              esi, 1
                                                                                        jne   .Lx384_55
                        mov              r8, rax
                                                                                        jmp   .Lx384_40
.Lx384_55:
                        cmp              esi, 2
                                                                                        jne   .Lx384_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx384_41
                        mov              r8, rax
                                                                                        jmp   .Lx384_40
.Lx384_56:
                        cmp              eax, 13
                                                                                        jne   .Lx384_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx384_41
                        cmp              rax, r8
                                                                                        je    .Lx384_41
                        mov              r8, rax
                                                                                        jmp   .Lx384_40
.Lx384_41:
                        lea              r9, [rbp + 544]
.Lx384_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx384_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx384_43
                        cmp              esi, 1
                                                                                        jne   .Lx384_57
                        mov              r9, rax
                                                                                        jmp   .Lx384_42
.Lx384_57:
                        cmp              esi, 2
                                                                                        jne   .Lx384_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx384_43
                        mov              r9, rax
                                                                                        jmp   .Lx384_42
.Lx384_58:
                        cmp              eax, 13
                                                                                        jne   .Lx384_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx384_43
                        cmp              rax, r9
                                                                                        je    .Lx384_43
                        mov              r9, rax
                                                                                        jmp   .Lx384_42
.Lx384_43:
                        cmp              r8, r9
                                                                                        je    .Lx384_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx384_44
                        cmp              eax, 99
                                                                                        je    .Lx384_44
                        cmp              eax, 13
                                                                                        jne   .Lx384_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx384_44
                                                                                        jmp   .Lx384_45
.Lx384_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx384_53
                        cmp              eax, 99
                                                                                        je    .Lx384_53
                        cmp              eax, 13
                                                                                        jne   .Lx384_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx384_53
                                                                                        jmp   .Lx384_46
.Lx384_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx384_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx384_53
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
                                                                                        jmp   .Lx384_51
.Lx384_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx384_47
                        cmp              eax, 99
                                                                                        je    .Lx384_47
                        cmp              eax, 13
                                                                                        jne   .Lx384_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx384_47
                                                                                        jmp   .Lx384_48
.Lx384_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx384_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx384_53
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
                                                                                        jmp   .Lx384_51
.Lx384_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx384_49
                        cmp              edx, 14
                                                                                        je    .Lx384_53
                                                                                        jmp   .Lx384_52
.Lx384_49:
                        cmp              edx, 14
                                                                                        je    .Lx384_52
                        cmp              ecx, 7
                                                                                        je    .Lx384_53
                        cmp              edx, 7
                                                                                        je    .Lx384_53
                        cmp              ecx, 6
                                                                                        jne   .Lx384_50
                        cmp              edx, 6
                                                                                        jne   .Lx384_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx384_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx384_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx384_51
                                                                                        jmp   .Lx384_52
.Lx384_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx384_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx384_53
.Lx384_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx384_54
.Lx384_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx384_54
.Lx384_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx384_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n331_var_ref_α
n330_op11_β:
                                                                                        jmp   n319_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n333_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n333_op11_α:
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
.Lx389_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx389_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        cmp              esi, 1
                                                                                        jne   .Lx389_55
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_55:
                        cmp              esi, 2
                                                                                        jne   .Lx389_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_56:
                        cmp              eax, 13
                                                                                        jne   .Lx389_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_41
                        cmp              rax, r8
                                                                                        je    .Lx389_41
                        mov              r8, rax
                                                                                        jmp   .Lx389_40
.Lx389_41:
                        lea              r9, [rbp + 464]
.Lx389_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx389_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        cmp              esi, 1
                                                                                        jne   .Lx389_57
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_57:
                        cmp              esi, 2
                                                                                        jne   .Lx389_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_58:
                        cmp              eax, 13
                                                                                        jne   .Lx389_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx389_43
                        cmp              rax, r9
                                                                                        je    .Lx389_43
                        mov              r9, rax
                                                                                        jmp   .Lx389_42
.Lx389_43:
                        cmp              r8, r9
                                                                                        je    .Lx389_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_44
                        cmp              eax, 99
                                                                                        je    .Lx389_44
                        cmp              eax, 13
                                                                                        jne   .Lx389_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx389_44
                                                                                        jmp   .Lx389_45
.Lx389_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_53
                        cmp              eax, 99
                                                                                        je    .Lx389_53
                        cmp              eax, 13
                                                                                        jne   .Lx389_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx389_53
                                                                                        jmp   .Lx389_46
.Lx389_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx389_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx389_53
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
                                                                                        jmp   .Lx389_51
.Lx389_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx389_47
                        cmp              eax, 99
                                                                                        je    .Lx389_47
                        cmp              eax, 13
                                                                                        jne   .Lx389_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx389_47
                                                                                        jmp   .Lx389_48
.Lx389_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx389_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx389_53
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
                                                                                        jmp   .Lx389_51
.Lx389_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx389_49
                        cmp              edx, 14
                                                                                        je    .Lx389_53
                                                                                        jmp   .Lx389_52
.Lx389_49:
                        cmp              edx, 14
                                                                                        je    .Lx389_52
                        cmp              ecx, 7
                                                                                        je    .Lx389_53
                        cmp              edx, 7
                                                                                        je    .Lx389_53
                        cmp              ecx, 6
                                                                                        jne   .Lx389_50
                        cmp              edx, 6
                                                                                        jne   .Lx389_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx389_51
                                                                                        jmp   .Lx389_52
.Lx389_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx389_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx389_53
.Lx389_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx389_54
.Lx389_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx389_54
.Lx389_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx389_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n334_var_ref_α
n333_op11_β:
                                                                                        jmp   n319_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n335_var_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n336_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n337_op11_α
.Lx394_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n337_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n338_op11_α
n337_op11_β:
                                                                                        jmp   n319_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n338_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n339_var_ref_α
n338_op11_β:
                                                                                        jmp   n319_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n339_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n340_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n341_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n342_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n342_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx404_21
.Lx404_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx404_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx404_23
.Lx404_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx404_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx404_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx404_25
.Lx404_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx404_25:
                        mov              edi, 8
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx404_1
                        lea              rcx, [rip + .Lx404_3]
                        lea              rdx, [rip + .Lx404_4]
                                                                                        jmp   rax
.Lx404_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx404_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx404_2
.Lx404_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx404_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx404_2
.Lx404_1:
                        call             rt_faildescr@PLT
.Lx404_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n319_op11_α
                                                                                        jmp   n343_suspend_α
n342_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx404_0:
                        .quad            .Lx404_0_s
.Lx404_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n343_suspend_α:
                        lea              rax, [rip + n343_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n343_suspend_β:
                                                                                        jmp   n342_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1216]
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$length_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1320]
                        mov              rbp, [rbp + 1336]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$length_$2F3_ω:
                        mov              rax, [rbp + 1328]
                        lea              rsp, [rbp + 1344]
                        mov              rbp, [rbp + 1336]
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
                        mov              esi, 1008
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "length/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_length$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 464
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
                        mov              esi, 1744
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "test_env/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_test_env$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "pj_dir_2/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_pj_dir_2$2F0_α]
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
.Lstartup_pname5:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
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
.Lstartup_pname7:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "$length_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_$length_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
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
n407_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx409_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n408_call_proc_staged_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "env"
#-----------------------------------------------------------------------------------------------------------------------
n408_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx411_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx411_21
.Lx411_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx411_21:
                        mov              rdi, qword ptr [rip + .Lx411_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx411_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx411_3]
                        lea              rdx, [rip + .Lx411_4]
                                                                                        jmp   rax
.Lx411_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx411_2
.Lx411_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx411_2
.Lx411_1:
                        call             rt_faildescr@PLT
.Lx411_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n408_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx411_0:
                        .quad            .Lx411_0_s
.Lx411_0_s:
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
