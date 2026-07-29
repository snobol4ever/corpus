                        .intel_syntax    noprefix
                        .text
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
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n3_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_gen_α:
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
.Lx11_60:
                        .section         .rodata
.Lbynamegenfn4:         .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn4]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n4_suspend_α
n3_call_builtin_gen_β:
                                                                                        jmp   .Lx11_60
#-----------------------------------------------------------------------------------------------------------------------
n4_suspend_α:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n4_suspend_β:
                                                                                        jmp   n3_call_builtin_gen_β
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
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        .global          proc_test$2F2_α
                        .global          proc_test$2F2_β
                        .global          proc_test$2F2_γ
                        .global          proc_test$2F2_ω
                        sub              rsp, 1424
                        mov              [rsp + 1400], rcx
                        mov              [rsp + 1408], rdx
                        mov              [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1312
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx56_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx56_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx56_101
.Lx56_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx56_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n17_op11_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "nesting"
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              rsi, qword ptr [rip + .Lx60_2]
                                                                                        jmp   .Lx60_3
.Lx60_2:
                        .quad            .Lx60_2_s
.Lx60_2_s:
                        .string          "nesting"
.Lx60_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n18_var_ref_α
n17_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n21_var_ref_α
n19_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n22_op11_α
.Lx64_0:
                        .quad            .Lx64_0_s
.Lx64_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              rsi, qword ptr [rip + .Lx67_2]
                                                                                        jmp   .Lx67_3
.Lx67_2:
                        .quad            .Lx67_2_s
.Lx67_2_s:
                        .string          "true"
.Lx67_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n24_lit_integer_α
n22_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n25_op11_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "retry"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n26_lit_integer_α
.Lx69_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              rsi, qword ptr [rip + .Lx70_2]
                                                                                        jmp   .Lx70_3
.Lx70_2:
                        .quad            .Lx70_2_s
.Lx70_2_s:
                        .string          "retry"
.Lx70_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n27_var_ref_α
n25_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n29_var_ref_α
.Lx71_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
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
n28_op11_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n31_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n32_op11_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_proc_staged_α:
                        mov              qword ptr [rbp + 1072], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_20
                        mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx79_21
.Lx79_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        call             rt_arg_stage@PLT
.Lx79_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_22
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx79_23
.Lx79_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        call             rt_arg_stage@PLT
.Lx79_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx79_24
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx79_25
.Lx79_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        call             rt_arg_stage@PLT
.Lx79_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx79_1
                        lea              rcx, [rip + .Lx79_3]
                        lea              rdx, [rip + .Lx79_4]
                                                                                        jmp   rax
.Lx79_3:
                        mov              qword ptr [rbp + 1080], rsp
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax
                                                                                        jne   .Lx79_5
                        mov              qword ptr [rbp + 1072], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx79_2
.Lx79_4:
                        mov              rax, qword ptr [rbp + 1072]
                        test             rax, rax
                                                                                        jne   .Lx79_6
                        mov              qword ptr [rbp + 1072], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx79_2
.Lx79_1:
                        call             rt_faildescr@PLT
.Lx79_2:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n34_suspend_α
                                                                                        jmp   n33_call_proc_staged_α
n31_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1080]
                                                                                        jmp   qword ptr [rsp]
.Lx79_0:
                        .quad            .Lx79_0_s
.Lx79_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx80_2]
                                                                                        jmp   .Lx80_3
.Lx80_2:
                        .quad            .Lx80_2_s
.Lx80_2_s:
                        .string          "true"
.Lx80_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n35_lit_string_α
n32_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_proc_staged_α:
                        mov              qword ptr [rbp + 976], 0
                        mov              edi, 17
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx82_1
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4]
                                                                                        jmp   rax
.Lx82_3:
                        mov              qword ptr [rbp + 984], rsp
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx82_5
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx82_2
.Lx82_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx82_2
.Lx82_4:
                        mov              rax, qword ptr [rbp + 976]
                        test             rax, rax
                                                                                        jne   .Lx82_6
                        mov              qword ptr [rbp + 976], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx82_2
.Lx82_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx82_2
.Lx82_1:
                        call             rt_faildescr@PLT
.Lx82_2:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n31_call_proc_staged_β
n33_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 984]
                                                                                        jmp   qword ptr [rsp]
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "outer/0"
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n34_suspend_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n36_var_ref_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "length"
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n37_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n39_lit_integer_α
n38_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n40_var_ref_α
.Lx91_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n41_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx95_21
.Lx95_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx95_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_22
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx95_23
.Lx95_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        call             rt_arg_stage@PLT
.Lx95_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_24
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx95_25
.Lx95_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx95_25:
                        mov              rdi, qword ptr [rip + .Lx95_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx95_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx95_3]
                        lea              rdx, [rip + .Lx95_4]
                                                                                        jmp   rax
.Lx95_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx95_2
.Lx95_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx95_2
.Lx95_1:
                        call             rt_faildescr@PLT
.Lx95_2:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n28_op11_α
                                                                                        jmp   n42_lit_integer_α
n41_call_proc_staged_β:
                                                                                        jmp   n28_op11_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "call_with_inference_limit/3"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n43_lit_integer_α
.Lx96_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n44_var_ref_α
.Lx97_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx101_21
.Lx101_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx101_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx101_23
.Lx101_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx101_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx101_24
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx101_25
.Lx101_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx101_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx101_1
                        lea              rcx, [rip + .Lx101_3]
                        lea              rdx, [rip + .Lx101_4]
                                                                                        jmp   rax
.Lx101_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx101_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx101_2
.Lx101_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx101_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx101_2
.Lx101_1:
                        call             rt_faildescr@PLT
.Lx101_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n46_lit_string_α
                                                                                        jmp   n45_call_proc_staged_β
n45_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n47_var_ref_α
.Lx102_0:
                        .quad            .Lx102_0_s
.Lx102_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n49_op11_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
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
                                                                                        je    n28_op11_α
                                                                                        jmp   n50_call_proc_staged_α
n49_op11_β:
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx108_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx108_21
.Lx108_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx108_21:
                        mov              rdi, qword ptr [rip + .Lx108_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx108_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx108_3]
                        lea              rdx, [rip + .Lx108_4]
                                                                                        jmp   rax
.Lx108_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx108_2
.Lx108_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx108_2
.Lx108_1:
                        call             rt_faildescr@PLT
.Lx108_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n41_call_proc_staged_β
                                                                                        jmp   n51_var_α
n50_call_proc_staged_β:
                                                                                        jmp   n41_call_proc_staged_β
.Lx108_0:
                        .quad            .Lx108_0_s
.Lx108_0_s:
                        .string          "assertion/1"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 176], 6
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n53_op11_α
.Lx111_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_eq@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n50_call_proc_staged_β
                                                                                        jmp   n54_op19_α
n53_op11_β:
                                                                                        jmp   n50_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n54_op19_α:
                                                                                        jmp   n55_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n55_suspend_α:
                        lea              rax, [rip + n55_suspend_β]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n55_suspend_β:
                                                                                        jmp   n50_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1312]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1400]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        mov              rax, [rbp + 1408]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
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
                        lea              rax, [rip + n128_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx129_101
.Lx129_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_length$2F2_ω
                                                                                        jmp   n117_var_ref_α
n116_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n118_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n119_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
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
.Lx134_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx134_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        cmp              esi, 1
                                                                                        jne   .Lx134_55
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_55:
                        cmp              esi, 2
                                                                                        jne   .Lx134_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_56:
                        cmp              eax, 13
                                                                                        jne   .Lx134_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        cmp              rax, r8
                                                                                        je    .Lx134_41
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_41:
                        lea              r9, [rbp + 368]
.Lx134_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx134_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        cmp              esi, 1
                                                                                        jne   .Lx134_57
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_57:
                        cmp              esi, 2
                                                                                        jne   .Lx134_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_58:
                        cmp              eax, 13
                                                                                        jne   .Lx134_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        cmp              rax, r9
                                                                                        je    .Lx134_43
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_43:
                        cmp              r8, r9
                                                                                        je    .Lx134_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_44
                        cmp              eax, 99
                                                                                        je    .Lx134_44
                        cmp              eax, 13
                                                                                        jne   .Lx134_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx134_44
                                                                                        jmp   .Lx134_45
.Lx134_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_53
                        cmp              eax, 99
                                                                                        je    .Lx134_53
                        cmp              eax, 13
                                                                                        jne   .Lx134_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx134_53
                                                                                        jmp   .Lx134_46
.Lx134_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx134_53
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
                                                                                        jmp   .Lx134_51
.Lx134_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_47
                        cmp              eax, 99
                                                                                        je    .Lx134_47
                        cmp              eax, 13
                                                                                        jne   .Lx134_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx134_47
                                                                                        jmp   .Lx134_48
.Lx134_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx134_53
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
                                                                                        jmp   .Lx134_51
.Lx134_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx134_49
                        cmp              edx, 14
                                                                                        je    .Lx134_53
                                                                                        jmp   .Lx134_52
.Lx134_49:
                        cmp              edx, 14
                                                                                        je    .Lx134_52
                        cmp              ecx, 7
                                                                                        je    .Lx134_53
                        cmp              edx, 7
                                                                                        je    .Lx134_53
                        cmp              ecx, 6
                                                                                        jne   .Lx134_50
                        cmp              edx, 6
                                                                                        jne   .Lx134_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx134_51
                                                                                        jmp   .Lx134_52
.Lx134_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx134_53
.Lx134_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx134_54
.Lx134_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx134_54
.Lx134_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx134_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n120_var_ref_α
n119_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
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
n121_op11_β:
                                                                                        jmp   proc_length$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n123_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
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
.Lx140_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx140_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_41
                        cmp              esi, 1
                                                                                        jne   .Lx140_55
                        mov              r8, rax
                                                                                        jmp   .Lx140_40
.Lx140_55:
                        cmp              esi, 2
                                                                                        jne   .Lx140_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx140_41
                        mov              r8, rax
                                                                                        jmp   .Lx140_40
.Lx140_56:
                        cmp              eax, 13
                                                                                        jne   .Lx140_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_41
                        cmp              rax, r8
                                                                                        je    .Lx140_41
                        mov              r8, rax
                                                                                        jmp   .Lx140_40
.Lx140_41:
                        lea              r9, [rbp + 288]
.Lx140_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx140_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_43
                        cmp              esi, 1
                                                                                        jne   .Lx140_57
                        mov              r9, rax
                                                                                        jmp   .Lx140_42
.Lx140_57:
                        cmp              esi, 2
                                                                                        jne   .Lx140_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx140_43
                        mov              r9, rax
                                                                                        jmp   .Lx140_42
.Lx140_58:
                        cmp              eax, 13
                                                                                        jne   .Lx140_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx140_43
                        cmp              rax, r9
                                                                                        je    .Lx140_43
                        mov              r9, rax
                                                                                        jmp   .Lx140_42
.Lx140_43:
                        cmp              r8, r9
                                                                                        je    .Lx140_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx140_44
                        cmp              eax, 99
                                                                                        je    .Lx140_44
                        cmp              eax, 13
                                                                                        jne   .Lx140_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx140_44
                                                                                        jmp   .Lx140_45
.Lx140_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx140_53
                        cmp              eax, 99
                                                                                        je    .Lx140_53
                        cmp              eax, 13
                                                                                        jne   .Lx140_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx140_53
                                                                                        jmp   .Lx140_46
.Lx140_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx140_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx140_53
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
                                                                                        jmp   .Lx140_51
.Lx140_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx140_47
                        cmp              eax, 99
                                                                                        je    .Lx140_47
                        cmp              eax, 13
                                                                                        jne   .Lx140_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx140_47
                                                                                        jmp   .Lx140_48
.Lx140_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx140_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx140_53
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
                                                                                        jmp   .Lx140_51
.Lx140_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx140_49
                        cmp              edx, 14
                                                                                        je    .Lx140_53
                                                                                        jmp   .Lx140_52
.Lx140_49:
                        cmp              edx, 14
                                                                                        je    .Lx140_52
                        cmp              ecx, 7
                                                                                        je    .Lx140_53
                        cmp              edx, 7
                                                                                        je    .Lx140_53
                        cmp              ecx, 6
                                                                                        jne   .Lx140_50
                        cmp              edx, 6
                                                                                        jne   .Lx140_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx140_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx140_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx140_51
                                                                                        jmp   .Lx140_52
.Lx140_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx140_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx140_53
.Lx140_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx140_54
.Lx140_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx140_54
.Lx140_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx140_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n124_var_ref_α
n123_op11_β:
                                                                                        jmp   n121_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:
                        mov              qword ptr [rbp + 224], 6
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n126_var_ref_α
.Lx143_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx147_21
.Lx147_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx147_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx147_23
.Lx147_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx147_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx147_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx147_25
.Lx147_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx147_25:
                        mov              edi, 16
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx147_1
                        lea              rcx, [rip + .Lx147_3]
                        lea              rdx, [rip + .Lx147_4]
                                                                                        jmp   rax
.Lx147_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx147_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx147_2
.Lx147_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx147_2
.Lx147_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx147_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx147_2
.Lx147_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx147_2
.Lx147_1:
                        call             rt_faildescr@PLT
.Lx147_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n121_op11_α
                                                                                        jmp   n128_suspend_α
n127_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n128_suspend_α:
                        lea              rax, [rip + n128_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_length$2F2_γ
n128_suspend_β:
                                                                                        jmp   n127_call_proc_staged_β
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
                        sub              rsp, 2480
                        mov              [rsp + 2456], rcx
                        mov              [rsp + 2464], rdx
                        mov              [rsp + 2472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2368
                        mov              edx, 2448
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_test$2F4_α_body:
                        lea              rax, [rip + n187_suspend_β]
                        mov              qword ptr [rbp + 2368], rax
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx220_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx220_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx220_101
.Lx220_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx220_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n151_var_ref_α
n150_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n152_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n153_op11_α
.Lx223_0:
                        .quad            .Lx223_0_s
.Lx223_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        lea              rdi, [rbp + 2304]
                        mov              rsi, qword ptr [rip + .Lx224_2]
                                                                                        jmp   .Lx224_3
.Lx224_2:
                        .quad            .Lx224_2_s
.Lx224_2_s:
                        .string          "call_with_inference_limit"
.Lx224_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n154_var_ref_α
n153_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n156_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n157_var_ref_α
n155_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 2272], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n158_op11_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "nesting"
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        mov              rsi, qword ptr [rip + .Lx231_2]
                                                                                        jmp   .Lx231_3
.Lx231_2:
                        .quad            .Lx231_2_s
.Lx231_2_s:
                        .string          "nesting"
.Lx231_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n160_var_ref_α
n158_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n161_op11_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n162_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n161_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              rsi, qword ptr [rip + .Lx235_2]
                                                                                        jmp   .Lx235_3
.Lx235_2:
                        .quad            .Lx235_2_s
.Lx235_2_s:
                        .string          "call_with_inference_limit"
.Lx235_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n163_var_ref_α
n161_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n165_op11_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n166_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n164_op11_α:
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
n164_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              rsi, qword ptr [rip + .Lx240_2]
                                                                                        jmp   .Lx240_3
.Lx240_2:
                        .quad            .Lx240_2_s
.Lx240_2_s:
                        .string          "true"
.Lx240_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n167_var_ref_α
n165_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n168_op11_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "retry"
#-----------------------------------------------------------------------------------------------------------------------
n167_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n169_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              rsi, qword ptr [rip + .Lx244_2]
                                                                                        jmp   .Lx244_3
.Lx244_2:
                        .quad            .Lx244_2_s
.Lx244_2_s:
                        .string          "retry"
.Lx244_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n170_var_ref_α
n168_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n171_lit_string_α
.Lx245_0:
                        .quad            .Lx245_0_s
.Lx245_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n172_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n173_lit_integer_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:
                        mov              qword ptr [rbp + 1568], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n174_op11_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n175_lit_integer_α
.Lx250_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n174_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              rsi, qword ptr [rip + .Lx251_2]
                                                                                        jmp   .Lx251_3
.Lx251_2:
                        .quad            .Lx251_2_s
.Lx251_2_s:
                        .string          "true"
.Lx251_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n176_var_ref_α
n174_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 6
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n177_var_ref_α
.Lx252_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n178_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n179_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n180_lit_string_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n179_op11_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n181_lit_string_α
n179_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n182_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n181_lit_string_α:
                        mov              qword ptr [rbp + 2016], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n183_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "outer"
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx261_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n184_var_ref_α
.Lx261_0:
                        .quad            .Lx261_0_s
.Lx261_0_s:
                        .string          "length"
#-----------------------------------------------------------------------------------------------------------------------
n183_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n185_op11_α
n183_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2384]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n185_op11_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1808]
                        lea              r8, [rbp + 1808]
.Lx265_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx265_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx265_41
                        cmp              esi, 1
                                                                                        jne   .Lx265_55
                        mov              r8, rax
                                                                                        jmp   .Lx265_40
.Lx265_55:
                        cmp              esi, 2
                                                                                        jne   .Lx265_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx265_41
                        mov              r8, rax
                                                                                        jmp   .Lx265_40
.Lx265_56:
                        cmp              eax, 13
                                                                                        jne   .Lx265_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx265_41
                        cmp              rax, r8
                                                                                        je    .Lx265_41
                        mov              r8, rax
                                                                                        jmp   .Lx265_40
.Lx265_41:
                        lea              r9, [rbp + 1824]
.Lx265_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx265_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx265_43
                        cmp              esi, 1
                                                                                        jne   .Lx265_57
                        mov              r9, rax
                                                                                        jmp   .Lx265_42
.Lx265_57:
                        cmp              esi, 2
                                                                                        jne   .Lx265_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx265_43
                        mov              r9, rax
                                                                                        jmp   .Lx265_42
.Lx265_58:
                        cmp              eax, 13
                                                                                        jne   .Lx265_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx265_43
                        cmp              rax, r9
                                                                                        je    .Lx265_43
                        mov              r9, rax
                                                                                        jmp   .Lx265_42
.Lx265_43:
                        cmp              r8, r9
                                                                                        je    .Lx265_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx265_44
                        cmp              eax, 99
                                                                                        je    .Lx265_44
                        cmp              eax, 13
                                                                                        jne   .Lx265_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx265_44
                                                                                        jmp   .Lx265_45
.Lx265_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx265_53
                        cmp              eax, 99
                                                                                        je    .Lx265_53
                        cmp              eax, 13
                                                                                        jne   .Lx265_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx265_53
                                                                                        jmp   .Lx265_46
.Lx265_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx265_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx265_53
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
                                                                                        jmp   .Lx265_51
.Lx265_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx265_47
                        cmp              eax, 99
                                                                                        je    .Lx265_47
                        cmp              eax, 13
                                                                                        jne   .Lx265_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx265_47
                                                                                        jmp   .Lx265_48
.Lx265_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx265_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx265_53
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
                                                                                        jmp   .Lx265_51
.Lx265_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx265_49
                        cmp              edx, 14
                                                                                        je    .Lx265_53
                                                                                        jmp   .Lx265_52
.Lx265_49:
                        cmp              edx, 14
                                                                                        je    .Lx265_52
                        cmp              ecx, 7
                                                                                        je    .Lx265_53
                        cmp              edx, 7
                                                                                        je    .Lx265_53
                        cmp              ecx, 6
                                                                                        jne   .Lx265_50
                        cmp              edx, 6
                                                                                        jne   .Lx265_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx265_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx265_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx265_51
                                                                                        jmp   .Lx265_52
.Lx265_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx265_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx265_53
.Lx265_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx265_54
.Lx265_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx265_54
.Lx265_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx265_54:
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n187_suspend_α
n185_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n188_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n187_suspend_α:
                        lea              rax, [rip + n187_suspend_β]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n187_suspend_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n188_op11_α:
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
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n189_lit_integer_α
n188_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:
                        mov              qword ptr [rbp + 352], 6
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n190_var_ref_α
.Lx271_0:
                        .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n191_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n191_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n192_lit_string_α
n191_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n193_lit_string_α
.Lx275_0:
                        .quad            .Lx275_0_s
.Lx275_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n194_lit_string_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "forall"
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n195_lit_integer_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "between"
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:
                        mov              qword ptr [rbp + 496], 6
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n196_lit_integer_α
.Lx278_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n197_var_ref_α
.Lx279_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2432]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n198_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n198_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n199_lit_string_α
n198_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n200_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n200_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n201_lit_string_α
n200_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n202_lit_string_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n203_lit_string_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "assertion"
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n204_var_ref_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "=="
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n205_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n206_op11_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n206_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n207_op11_α
n206_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n207_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n208_lit_string_α
n207_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx293_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n209_lit_string_α
.Lx293_0:
                        .quad            .Lx293_0_s
.Lx293_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n210_var_ref_α
.Lx294_0:
                        .quad            .Lx294_0_s
.Lx294_0_s:
                        .string          "=:="
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2400]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n211_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_integer_α:
                        mov              qword ptr [rbp + 992], 6
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n212_op11_α
.Lx297_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n212_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n213_lit_string_α
n212_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n214_op11_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n214_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n215_op11_α
n214_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n215_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n216_op11_α
n215_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n216_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n217_op11_α
n216_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n217_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n218_op11_α
n217_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n218_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 176]
                        lea              r8, [rbp + 176]
.Lx304_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx304_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_41
                        cmp              esi, 1
                                                                                        jne   .Lx304_55
                        mov              r8, rax
                                                                                        jmp   .Lx304_40
.Lx304_55:
                        cmp              esi, 2
                                                                                        jne   .Lx304_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx304_41
                        mov              r8, rax
                                                                                        jmp   .Lx304_40
.Lx304_56:
                        cmp              eax, 13
                                                                                        jne   .Lx304_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_41
                        cmp              rax, r8
                                                                                        je    .Lx304_41
                        mov              r8, rax
                                                                                        jmp   .Lx304_40
.Lx304_41:
                        lea              r9, [rbp + 192]
.Lx304_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx304_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_43
                        cmp              esi, 1
                                                                                        jne   .Lx304_57
                        mov              r9, rax
                                                                                        jmp   .Lx304_42
.Lx304_57:
                        cmp              esi, 2
                                                                                        jne   .Lx304_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx304_43
                        mov              r9, rax
                                                                                        jmp   .Lx304_42
.Lx304_58:
                        cmp              eax, 13
                                                                                        jne   .Lx304_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx304_43
                        cmp              rax, r9
                                                                                        je    .Lx304_43
                        mov              r9, rax
                                                                                        jmp   .Lx304_42
.Lx304_43:
                        cmp              r8, r9
                                                                                        je    .Lx304_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_44
                        cmp              eax, 99
                                                                                        je    .Lx304_44
                        cmp              eax, 13
                                                                                        jne   .Lx304_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx304_44
                                                                                        jmp   .Lx304_45
.Lx304_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_53
                        cmp              eax, 99
                                                                                        je    .Lx304_53
                        cmp              eax, 13
                                                                                        jne   .Lx304_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx304_53
                                                                                        jmp   .Lx304_46
.Lx304_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx304_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx304_53
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
                                                                                        jmp   .Lx304_51
.Lx304_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx304_47
                        cmp              eax, 99
                                                                                        je    .Lx304_47
                        cmp              eax, 13
                                                                                        jne   .Lx304_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx304_47
                                                                                        jmp   .Lx304_48
.Lx304_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx304_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx304_53
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
                                                                                        jmp   .Lx304_51
.Lx304_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx304_49
                        cmp              edx, 14
                                                                                        je    .Lx304_53
                                                                                        jmp   .Lx304_52
.Lx304_49:
                        cmp              edx, 14
                                                                                        je    .Lx304_52
                        cmp              ecx, 7
                                                                                        je    .Lx304_53
                        cmp              edx, 7
                                                                                        je    .Lx304_53
                        cmp              ecx, 6
                                                                                        jne   .Lx304_50
                        cmp              edx, 6
                                                                                        jne   .Lx304_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx304_51
                                                                                        jmp   .Lx304_52
.Lx304_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx304_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx304_53
.Lx304_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx304_54
.Lx304_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx304_54
.Lx304_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx304_54:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n164_op11_α
                                                                                        jmp   n219_suspend_α
n218_op11_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n219_suspend_α:
                        lea              rax, [rip + n219_suspend_β]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_test$2F4_γ
n219_suspend_β:
                                                                                        jmp   n164_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   qword ptr [rbp + 2368]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_test$2F4_res]
                        push             rax
                        mov              rax, [rbp + 2456]
                        mov              rbp, [rbp + 2472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_ω:
                        mov              rax, [rbp + 2464]
                        lea              rsp, [rbp + 2480]
                        mov              rbp, [rbp + 2472]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_inner$2F0_α
proc_inner$2F0_α:
                        .global          proc_inner$2F0_α
                        .global          proc_inner$2F0_β
                        .global          proc_inner$2F0_γ
                        .global          proc_inner$2F0_ω
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 576
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
proc_inner$2F0_α_body:
                        lea              rax, [rip + n325_suspend_β]
                        mov              qword ptr [rbp + 576], rax
#-----------------------------------------------------------------------------------------------------------------------
n307_op11_α:
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
                                                                                        je    proc_inner$2F0_ω
                                                                                        jmp   n308_var_ref_α
n307_op11_β:
                                                                                        jmp   proc_inner$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n309_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n310_lit_integer_α
.Lx329_0:
                        .quad            .Lx329_0_s
.Lx329_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx330_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n311_op11_α
.Lx330_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n311_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n313_op11_α
                                                                                        jmp   n312_op11_α
n311_op11_β:
                                                                                        jmp   n313_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n312_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n313_op11_α
                                                                                        jmp   n314_lit_string_α
n312_op11_β:
                                                                                        jmp   n313_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n313_op11_α:
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
                                                                                        je    proc_inner$2F0_ω
                                                                                        jmp   proc_inner$2F0_ω
n313_op11_β:
                                                                                        jmp   proc_inner$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n315_var_ref_α
.Lx334_0:
                        .quad            .Lx334_0_s
.Lx334_0_s:
                        .string          "goal"
#-----------------------------------------------------------------------------------------------------------------------
n315_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n317_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n317_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx340_21
.Lx340_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx340_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx340_23
.Lx340_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx340_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx340_24
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx340_25
.Lx340_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        call             rt_arg_stage@PLT
.Lx340_25:
                        mov              rdi, qword ptr [rip + .Lx340_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx340_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx340_3]
                        lea              rdx, [rip + .Lx340_4]
                                                                                        jmp   rax
.Lx340_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx340_2
.Lx340_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx340_2
.Lx340_1:
                        call             rt_faildescr@PLT
.Lx340_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n313_op11_α
                                                                                        jmp   n318_var_ref_α
n317_call_proc_staged_β:
                                                                                        jmp   n313_op11_α
.Lx340_0:
                        .quad            .Lx340_0_s
.Lx340_0_s:
                        .string          "call_with_inference_limit/3"
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx343_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n320_op11_α
.Lx343_0:
                        .quad            .Lx343_0_s
.Lx343_0_s:
                        .string          "inference_limit_exceeded"
#-----------------------------------------------------------------------------------------------------------------------
n320_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn345:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n322_lit_string_α
                                                                                        jmp   n321_lit_string_α
n320_op11_β:
                                                                                        jmp   n322_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n323_call_proc_staged_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "?"
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx347_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n324_call_proc_staged_α
.Lx347_0:
                        .quad            .Lx347_0_s
.Lx347_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n323_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_p$2F1_dcα
                                                                                        jmp   .Lx349_2
.Lx349_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n317_call_proc_staged_β
                                                                                        jmp   n325_suspend_α
n323_call_proc_staged_β:
                                                                                        jmp   n317_call_proc_staged_β
.Lx349_0:
                        .quad            .Lx349_0_s
.Lx349_0_s:
                        .string          "p/1"
#-----------------------------------------------------------------------------------------------------------------------
n324_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_p$2F1_dcα
                                                                                        jmp   .Lx351_2
.Lx351_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n317_call_proc_staged_β
                                                                                        jmp   n325_suspend_α
n324_call_proc_staged_β:
                                                                                        jmp   n317_call_proc_staged_β
.Lx351_0:
                        .quad            .Lx351_0_s
.Lx351_0_s:
                        .string          "p/1"
#-----------------------------------------------------------------------------------------------------------------------
n325_suspend_α:
                        lea              rax, [rip + n325_suspend_β]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_inner$2F0_γ
n325_suspend_β:
                                                                                        jmp   n317_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F0_β:
                                                                                        jmp   qword ptr [rbp + 576]
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_inner$2F0_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F0_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_inner$2F1_α
proc_inner$2F1_α:
                        .global          proc_inner$2F1_α
                        .global          proc_inner$2F1_β
                        .global          proc_inner$2F1_γ
                        .global          proc_inner$2F1_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 384
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_inner$2F1_α_body:
                        lea              rax, [rip + n364_suspend_β]
                        mov              qword ptr [rbp + 384], rax
#-----------------------------------------------------------------------------------------------------------------------
n354_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx365_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_inner$2F1_ω
                                                                                        jmp   n355_var_ref_α
n354_op11_β:
                                                                                        jmp   proc_inner$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n356_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n357_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n357_op11_α:
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
                        lea              r9, [rbp + 336]
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
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n359_op11_α
                                                                                        jmp   n358_lit_integer_α
n357_op11_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 256], 6
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n360_var_ref_α
.Lx371_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n359_op11_α:
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
                                                                                        je    proc_inner$2F1_ω
                                                                                        jmp   proc_inner$2F1_ω
n359_op11_β:
                                                                                        jmp   proc_inner$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n362_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_proc_staged_α:
                        mov              qword ptr [rbp + 224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx378_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx378_21
.Lx378_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx378_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx378_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx378_23
.Lx378_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx378_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx378_24
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx378_25
.Lx378_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx378_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx378_1
                        lea              rcx, [rip + .Lx378_3]
                        lea              rdx, [rip + .Lx378_4]
                                                                                        jmp   rax
.Lx378_3:
                        mov              qword ptr [rbp + 232], rsp
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx378_5
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx378_2
.Lx378_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx378_2
.Lx378_4:
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx378_6
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx378_2
.Lx378_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx378_2
.Lx378_1:
                        call             rt_faildescr@PLT
.Lx378_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n364_suspend_α
                                                                                        jmp   n363_call_proc_staged_α
n362_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 232]
                                                                                        jmp   qword ptr [rsp]
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n363_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              edi, 4
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx380_1
                        lea              rcx, [rip + .Lx380_3]
                        lea              rdx, [rip + .Lx380_4]
                                                                                        jmp   rax
.Lx380_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx380_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx380_2
.Lx380_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx380_2
.Lx380_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx380_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx380_2
.Lx380_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx380_2
.Lx380_1:
                        call             rt_faildescr@PLT
.Lx380_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n362_call_proc_staged_β
                                                                                        jmp   n363_call_proc_staged_β
n363_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "inner/0"
#-----------------------------------------------------------------------------------------------------------------------
n364_suspend_α:
                        lea              rax, [rip + n364_suspend_β]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_inner$2F1_γ
n364_suspend_β:
                                                                                        jmp   n359_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F1_β:
                                                                                        jmp   qword ptr [rbp + 384]
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_inner$2F1_res]
                        push             rax
                        mov              rax, [rbp + 440]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_inner$2F1_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_inflimit$2F0_α
proc_test_inflimit$2F0_α:
                        .global          proc_test_inflimit$2F0_α
                        .global          proc_test_inflimit$2F0_β
                        .global          proc_test_inflimit$2F0_γ
                        .global          proc_test_inflimit$2F0_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_inflimit$2F0_α_body:
                        lea              rax, [rip + n392_suspend_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n383_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx393_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx393_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx393_101
.Lx393_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx393_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_inflimit$2F0_ω
                                                                                        jmp   n384_lit_integer_α
n383_op11_β:
                                                                                        jmp   proc_test_inflimit$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n385_call_proc_staged_α
.Lx394_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n385_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx396_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx396_21
.Lx396_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx396_21:
                        mov              rdi, qword ptr [rip + .Lx396_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx396_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx396_3]
                        lea              rdx, [rip + .Lx396_4]
                                                                                        jmp   rax
.Lx396_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx396_2
.Lx396_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx396_2
.Lx396_1:
                        call             rt_faildescr@PLT
.Lx396_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n387_op11_α
                                                                                        jmp   n386_lit_string_α
n385_call_proc_staged_β:
                                                                                        jmp   n387_op11_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "maybe/1"
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n388_lit_string_α
.Lx397_0:
                        .quad            .Lx397_0_s
.Lx397_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
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
                                                                                        je    proc_test_inflimit$2F0_ω
                                                                                        jmp   proc_test_inflimit$2F0_ω
n387_op11_β:
                                                                                        jmp   proc_test_inflimit$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n389_lit_string_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n390_op11_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n390_op11_α:
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
                                                                                        je    n387_op11_α
                                                                                        jmp   n391_call_proc_staged_α
n390_op11_β:
                                                                                        jmp   n387_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n391_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx403_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx403_21
.Lx403_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx403_21:
                        mov              rdi, qword ptr [rip + .Lx403_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx403_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx403_3]
                        lea              rdx, [rip + .Lx403_4]
                                                                                        jmp   rax
.Lx403_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx403_2
.Lx403_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx403_2
.Lx403_1:
                        call             rt_faildescr@PLT
.Lx403_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n385_call_proc_staged_β
                                                                                        jmp   n392_suspend_α
n391_call_proc_staged_β:
                                                                                        jmp   n385_call_proc_staged_β
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n392_suspend_α:
                        lea              rax, [rip + n392_suspend_β]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_inflimit$2F0_γ
n392_suspend_β:
                                                                                        jmp   n391_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_inflimit$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_inflimit$2F0_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_inflimit$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_inflimit$2F0_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_inflimit$2F0_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F0_α
proc_$disj0$2F0_α:
                        .global          proc_$disj0$2F0_α
                        .global          proc_$disj0$2F0_β
                        .global          proc_$disj0$2F0_γ
                        .global          proc_$disj0$2F0_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F0_α_body:
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n406_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx413_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx413_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx413_101
.Lx413_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx413_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n407_lit_real_α
n406_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_real_α:
                        mov              qword ptr [rbp + 176], 7
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n408_call_proc_staged_α
.Lx414_0:
                        .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n408_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx416_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx416_21
.Lx416_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx416_21:
                        mov              rdi, qword ptr [rip + .Lx416_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx416_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx416_3]
                        lea              rdx, [rip + .Lx416_4]
                                                                                        jmp   rax
.Lx416_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx416_2
.Lx416_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx416_2
.Lx416_1:
                        call             rt_faildescr@PLT
.Lx416_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n410_op11_α
                                                                                        jmp   n409_suspend_α
n408_call_proc_staged_β:
                                                                                        jmp   n410_op11_α
.Lx416_0:
                        .quad            .Lx416_0_s
.Lx416_0_s:
                        .string          "maybe/1"
#-----------------------------------------------------------------------------------------------------------------------
n409_suspend_α:
                        lea              rax, [rip + n409_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n409_suspend_β:
                                                                                        jmp   n408_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n410_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F0_ω
                                                                                        jmp   n411_suspend_α
n410_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n411_suspend_α:
                        lea              rax, [rip + n411_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F0_γ
n411_suspend_β:
                                                                                        jmp   n412_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n412_op11_α:
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
n412_op11_β:
                                                                                        jmp   proc_$disj0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F0_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
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
                        lea              rax, [rip + n426_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n423_op11_α:
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
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx428_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_4$2F0_ω
                                                                                        jmp   n424_lit_string_α
n423_op11_β:
                                                                                        jmp   proc_pj_dir_4$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n425_call_proc_staged_α
.Lx429_0:
                        .quad            .Lx429_0_s
.Lx429_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n425_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx431_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx431_21
.Lx431_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx431_21:
                        mov              rdi, qword ptr [rip + .Lx431_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx431_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx431_3]
                        lea              rdx, [rip + .Lx431_4]
                                                                                        jmp   rax
.Lx431_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx431_2
.Lx431_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx431_2
.Lx431_1:
                        call             rt_faildescr@PLT
.Lx431_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n427_op11_α
                                                                                        jmp   n426_suspend_α
n425_call_proc_staged_β:
                                                                                        jmp   n427_op11_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n426_suspend_α:
                        lea              rax, [rip + n426_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_4$2F0_γ
n426_suspend_β:
                                                                                        jmp   n425_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n427_op11_α:
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
n427_op11_β:
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
                        lea              rax, [rip + n441_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n435_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx442_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx442_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx442_101
.Lx442_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx442_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n436_lit_string_α
n435_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n436_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n437_lit_string_α
.Lx443_0:
                        .quad            .Lx443_0_s
.Lx443_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n437_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n438_op11_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n438_op11_α:
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
                                                                                        je    n440_op11_α
                                                                                        jmp   n439_call_proc_staged_α
n438_op11_β:
                                                                                        jmp   n440_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx447_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx447_21
.Lx447_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx447_21:
                        mov              rdi, qword ptr [rip + .Lx447_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx447_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx447_3]
                        lea              rdx, [rip + .Lx447_4]
                                                                                        jmp   rax
.Lx447_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx447_2
.Lx447_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx447_2
.Lx447_1:
                        call             rt_faildescr@PLT
.Lx447_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n440_op11_α
                                                                                        jmp   n441_suspend_α
n439_call_proc_staged_β:
                                                                                        jmp   n440_op11_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n440_op11_α:
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
n440_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_suspend_α:
                        lea              rax, [rip + n441_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n441_suspend_β:
                                                                                        jmp   n439_call_proc_staged_β
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
                        lea              rax, [rip + n462_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n451_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx463_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx463_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx463_101
.Lx463_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx463_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n452_lit_string_α
n451_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n453_lit_string_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "test_inflimit"
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n454_lit_string_α
.Lx465_0:
                        .quad            .Lx465_0_s
.Lx465_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n455_lit_string_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n455_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n456_lit_integer_α
.Lx467_0:
                        .quad            .Lx467_0_s
.Lx467_0_s:
                        .string          "test_inflimit"
#-----------------------------------------------------------------------------------------------------------------------
n456_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n457_op11_α
.Lx468_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n457_op11_α:
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
                                                                                        jmp   n458_lit_string_α
n457_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n458_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n459_op11_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n459_op11_α:
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
                                                                                        je    n461_op11_α
                                                                                        jmp   n460_call_proc_staged_α
n459_op11_β:
                                                                                        jmp   n461_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n460_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx473_21
.Lx473_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx473_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx473_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx473_23
.Lx473_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx473_23:
                        mov              rdi, qword ptr [rip + .Lx473_0]
                        mov              esi, 2
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n461_op11_α
                                                                                        jmp   n462_suspend_α
n460_call_proc_staged_β:
                                                                                        jmp   n461_op11_α
.Lx473_0:
                        .quad            .Lx473_0_s
.Lx473_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n461_op11_α:
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
n461_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_suspend_α:
                        lea              rax, [rip + n462_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n462_suspend_β:
                                                                                        jmp   n460_call_proc_staged_β
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
                        .globl           proc_p$2F1_α
proc_p$2F1_α:
                        .global          proc_p$2F1_α
                        .global          proc_p$2F1_β
                        .global          proc_p$2F1_γ
                        .global          proc_p$2F1_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_p$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n477_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx493_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx493_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx493_101
.Lx493_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx493_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_p$2F1_ω
                                                                                        jmp   n478_var_ref_α
n477_op11_β:
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n479_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n479_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n480_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n480_op11_α:
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
.Lx498_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_41
                        cmp              esi, 1
                                                                                        jne   .Lx498_55
                        mov              r8, rax
                                                                                        jmp   .Lx498_40
.Lx498_55:
                        cmp              esi, 2
                                                                                        jne   .Lx498_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_41
                        mov              r8, rax
                                                                                        jmp   .Lx498_40
.Lx498_56:
                        cmp              eax, 13
                                                                                        jne   .Lx498_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_41
                        cmp              rax, r8
                                                                                        je    .Lx498_41
                        mov              r8, rax
                                                                                        jmp   .Lx498_40
.Lx498_41:
                        lea              r9, [rbp + 352]
.Lx498_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx498_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_43
                        cmp              esi, 1
                                                                                        jne   .Lx498_57
                        mov              r9, rax
                                                                                        jmp   .Lx498_42
.Lx498_57:
                        cmp              esi, 2
                                                                                        jne   .Lx498_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx498_43
                        mov              r9, rax
                                                                                        jmp   .Lx498_42
.Lx498_58:
                        cmp              eax, 13
                                                                                        jne   .Lx498_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx498_43
                        cmp              rax, r9
                                                                                        je    .Lx498_43
                        mov              r9, rax
                                                                                        jmp   .Lx498_42
.Lx498_43:
                        cmp              r8, r9
                                                                                        je    .Lx498_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_44
                        cmp              eax, 99
                                                                                        je    .Lx498_44
                        cmp              eax, 13
                                                                                        jne   .Lx498_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx498_44
                                                                                        jmp   .Lx498_45
.Lx498_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_53
                        cmp              eax, 99
                                                                                        je    .Lx498_53
                        cmp              eax, 13
                                                                                        jne   .Lx498_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx498_53
                                                                                        jmp   .Lx498_46
.Lx498_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx498_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx498_53
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
                                                                                        jmp   .Lx498_51
.Lx498_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx498_47
                        cmp              eax, 99
                                                                                        je    .Lx498_47
                        cmp              eax, 13
                                                                                        jne   .Lx498_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx498_47
                                                                                        jmp   .Lx498_48
.Lx498_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx498_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx498_53
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
                                                                                        jmp   .Lx498_51
.Lx498_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx498_49
                        cmp              edx, 14
                                                                                        je    .Lx498_53
                                                                                        jmp   .Lx498_52
.Lx498_49:
                        cmp              edx, 14
                                                                                        je    .Lx498_52
                        cmp              ecx, 7
                                                                                        je    .Lx498_53
                        cmp              edx, 7
                                                                                        je    .Lx498_53
                        cmp              ecx, 6
                                                                                        jne   .Lx498_50
                        cmp              edx, 6
                                                                                        jne   .Lx498_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx498_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx498_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx498_51
                                                                                        jmp   .Lx498_52
.Lx498_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx498_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx498_53
.Lx498_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx498_54
.Lx498_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx498_54
.Lx498_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx498_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n482_op11_α
                                                                                        jmp   n481_op19_α
n480_op11_β:
                                                                                        jmp   n482_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n481_op19_α:
                                                                                        jmp   n483_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_p$2F1_ω
                                                                                        jmp   n484_var_ref_α
n482_op11_β:
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n483_move_label_α:
                        lea              rax, [rip + n482_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_p$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n484_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n486_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n485_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n485_disjunction_β:
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n486_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n487_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n487_op11_α:
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
.Lx509_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx509_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx509_41
                        cmp              esi, 1
                                                                                        jne   .Lx509_55
                        mov              r8, rax
                                                                                        jmp   .Lx509_40
.Lx509_55:
                        cmp              esi, 2
                                                                                        jne   .Lx509_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx509_41
                        mov              r8, rax
                                                                                        jmp   .Lx509_40
.Lx509_56:
                        cmp              eax, 13
                                                                                        jne   .Lx509_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx509_41
                        cmp              rax, r8
                                                                                        je    .Lx509_41
                        mov              r8, rax
                                                                                        jmp   .Lx509_40
.Lx509_41:
                        lea              r9, [rbp + 240]
.Lx509_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx509_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx509_43
                        cmp              esi, 1
                                                                                        jne   .Lx509_57
                        mov              r9, rax
                                                                                        jmp   .Lx509_42
.Lx509_57:
                        cmp              esi, 2
                                                                                        jne   .Lx509_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx509_43
                        mov              r9, rax
                                                                                        jmp   .Lx509_42
.Lx509_58:
                        cmp              eax, 13
                                                                                        jne   .Lx509_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx509_43
                        cmp              rax, r9
                                                                                        je    .Lx509_43
                        mov              r9, rax
                                                                                        jmp   .Lx509_42
.Lx509_43:
                        cmp              r8, r9
                                                                                        je    .Lx509_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx509_44
                        cmp              eax, 99
                                                                                        je    .Lx509_44
                        cmp              eax, 13
                                                                                        jne   .Lx509_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx509_44
                                                                                        jmp   .Lx509_45
.Lx509_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx509_53
                        cmp              eax, 99
                                                                                        je    .Lx509_53
                        cmp              eax, 13
                                                                                        jne   .Lx509_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx509_53
                                                                                        jmp   .Lx509_46
.Lx509_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx509_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx509_53
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
                                                                                        jmp   .Lx509_51
.Lx509_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx509_47
                        cmp              eax, 99
                                                                                        je    .Lx509_47
                        cmp              eax, 13
                                                                                        jne   .Lx509_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx509_47
                                                                                        jmp   .Lx509_48
.Lx509_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx509_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx509_53
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
                                                                                        jmp   .Lx509_51
.Lx509_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx509_49
                        cmp              edx, 14
                                                                                        je    .Lx509_53
                                                                                        jmp   .Lx509_52
.Lx509_49:
                        cmp              edx, 14
                                                                                        je    .Lx509_52
                        cmp              ecx, 7
                                                                                        je    .Lx509_53
                        cmp              edx, 7
                                                                                        je    .Lx509_53
                        cmp              ecx, 6
                                                                                        jne   .Lx509_50
                        cmp              edx, 6
                                                                                        jne   .Lx509_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx509_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx509_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx509_51
                                                                                        jmp   .Lx509_52
.Lx509_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx509_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx509_53
.Lx509_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx509_54
.Lx509_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx509_54
.Lx509_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx509_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n488_lit_string_α
n487_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n490_var_ref_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n489_op11_α:
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
                                                                                        je    proc_p$2F1_ω
                                                                                        jmp   proc_p$2F1_ω
n489_op11_β:
                                                                                        jmp   proc_p$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n490_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n491_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n491_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn515:              .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn515]
                        lea              rsi, [rbp + 144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n489_op11_α
                                                                                        jmp   n492_move_label_α
n491_op11_β:
                                                                                        jmp   n489_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n492_move_label_α:
                        lea              rax, [rip + n489_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_p$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_β:
                                                                                        jmp   n485_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_p$2F1_dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx518_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx518_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_p$2F1_α_body
.Lx518_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx518_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_goal$2F0_α
proc_goal$2F0_α:
                        .global          proc_goal$2F0_α
                        .global          proc_goal$2F0_β
                        .global          proc_goal$2F0_γ
                        .global          proc_goal$2F0_ω
                        sub              rsp, 400
                        mov              [rsp + 376], rcx
                        mov              [rsp + 384], rdx
                        mov              [rsp + 392], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 336
                        mov              edx, 368
                        call             rt_jmp_frame_lexprep2@PLT
proc_goal$2F0_α_body:
                        lea              rax, [rip + n528_suspend_β]
                        mov              qword ptr [rbp + 336], rax
#-----------------------------------------------------------------------------------------------------------------------
n519_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx529_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx529_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx529_101
.Lx529_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx529_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_goal$2F0_ω
                                                                                        jmp   n520_lit_integer_α
n519_op11_β:
                                                                                        jmp   proc_goal$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n521_lit_integer_α
.Lx530_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n522_var_ref_α
.Lx531_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n523_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n523_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx535_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx535_21
.Lx535_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx535_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx535_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx535_23
.Lx535_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx535_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx535_24
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx535_25
.Lx535_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        call             rt_arg_stage@PLT
.Lx535_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx535_1
                        lea              rcx, [rip + .Lx535_3]
                        lea              rdx, [rip + .Lx535_4]
                                                                                        jmp   rax
.Lx535_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx535_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx535_2
.Lx535_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx535_2
.Lx535_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx535_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx535_2
.Lx535_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx535_2
.Lx535_1:
                        call             rt_faildescr@PLT
.Lx535_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n524_lit_real_α
                                                                                        jmp   n523_call_proc_staged_β
n523_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx535_0:
                        .quad            .Lx535_0_s
.Lx535_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_real_α:
                        mov              qword ptr [rbp + 176], 7
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n525_call_proc_staged_α
.Lx536_0:
                        .quad            4599075939470750515
#-----------------------------------------------------------------------------------------------------------------------
n525_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx538_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx538_21
.Lx538_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx538_21:
                        mov              rdi, qword ptr [rip + .Lx538_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx538_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx538_3]
                        lea              rdx, [rip + .Lx538_4]
                                                                                        jmp   rax
.Lx538_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx538_2
.Lx538_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx538_2
.Lx538_1:
                        call             rt_faildescr@PLT
.Lx538_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n527_op11_α
                                                                                        jmp   n526_call_proc_staged_α
n525_call_proc_staged_β:
                                                                                        jmp   n527_op11_α
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "maybe/1"
#-----------------------------------------------------------------------------------------------------------------------
n526_call_proc_staged_α:
                        mov              qword ptr [rbp + 96], 0
                        mov              edi, 7
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx540_1
                        lea              rcx, [rip + .Lx540_3]
                        lea              rdx, [rip + .Lx540_4]
                                                                                        jmp   rax
.Lx540_3:
                        mov              qword ptr [rbp + 104], rsp
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx540_5
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx540_2
.Lx540_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx540_2
.Lx540_4:
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax
                                                                                        jne   .Lx540_6
                        mov              qword ptr [rbp + 96], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx540_2
.Lx540_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx540_2
.Lx540_1:
                        call             rt_faildescr@PLT
.Lx540_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n525_call_proc_staged_β
                                                                                        jmp   n528_suspend_α
n526_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 104]
                                                                                        jmp   qword ptr [rsp]
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "$disj0/0"
#-----------------------------------------------------------------------------------------------------------------------
n527_op11_α:
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
                                                                                        je    proc_goal$2F0_ω
                                                                                        jmp   proc_goal$2F0_ω
n527_op11_β:
                                                                                        jmp   proc_goal$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n528_suspend_α:
                        lea              rax, [rip + n528_suspend_β]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_goal$2F0_γ
n528_suspend_β:
                                                                                        jmp   n526_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_goal$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_goal$2F0_β:
                                                                                        jmp   qword ptr [rbp + 336]
#-----------------------------------------------------------------------------------------------------------------------
proc_goal$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_goal$2F0_res]
                        push             rax
                        mov              rax, [rbp + 376]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_goal$2F0_ω:
                        mov              rax, [rbp + 384]
                        lea              rsp, [rbp + 400]
                        mov              rbp, [rbp + 392]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_5$2F0_α
proc_pj_dir_5$2F0_α:
                        .global          proc_pj_dir_5$2F0_α
                        .global          proc_pj_dir_5$2F0_β
                        .global          proc_pj_dir_5$2F0_γ
                        .global          proc_pj_dir_5$2F0_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_5$2F0_α_body:
                        lea              rax, [rip + n547_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n544_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx549_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx549_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx549_101
.Lx549_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx549_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   n545_lit_string_α
n544_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n545_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n546_call_proc_staged_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n546_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx552_21
.Lx552_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx552_21:
                        mov              rdi, qword ptr [rip + .Lx552_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n548_op11_α
                                                                                        jmp   n547_suspend_α
n546_call_proc_staged_β:
                                                                                        jmp   n548_op11_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n547_suspend_α:
                        lea              rax, [rip + n547_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_5$2F0_γ
n547_suspend_β:
                                                                                        jmp   n546_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n548_op11_α:
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
                                                                                        je    proc_pj_dir_5$2F0_ω
                                                                                        jmp   proc_pj_dir_5$2F0_ω
n548_op11_β:
                                                                                        jmp   proc_pj_dir_5$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_5$2F0_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_5$2F0_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
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
                        lea              rax, [rip + n562_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n556_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx563_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx563_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx563_101
.Lx563_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx563_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n557_lit_string_α
n556_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n558_lit_string_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n558_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n559_op11_α
.Lx565_0:
                        .quad            .Lx565_0_s
.Lx565_0_s:
                        .string          "debug"
#-----------------------------------------------------------------------------------------------------------------------
n559_op11_α:
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
                                                                                        je    n561_op11_α
                                                                                        jmp   n560_call_proc_staged_α
n559_op11_β:
                                                                                        jmp   n561_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx568_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx568_21
.Lx568_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx568_21:
                        mov              rdi, qword ptr [rip + .Lx568_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx568_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx568_3]
                        lea              rdx, [rip + .Lx568_4]
                                                                                        jmp   rax
.Lx568_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx568_2
.Lx568_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx568_2
.Lx568_1:
                        call             rt_faildescr@PLT
.Lx568_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n561_op11_α
                                                                                        jmp   n562_suspend_α
n560_call_proc_staged_β:
                                                                                        jmp   n561_op11_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n561_op11_α:
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
n561_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n562_suspend_α:
                        lea              rax, [rip + n562_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n562_suspend_β:
                                                                                        jmp   n560_call_proc_staged_β
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
                        lea              rax, [rip + n578_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n572_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx579_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx579_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx579_101
.Lx579_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx579_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n573_lit_string_α
n572_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx580_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n574_lit_string_α
.Lx580_0:
                        .quad            .Lx580_0_s
.Lx580_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n574_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n575_op11_α
.Lx581_0:
                        .quad            .Lx581_0_s
.Lx581_0_s:
                        .string          "random"
#-----------------------------------------------------------------------------------------------------------------------
n575_op11_α:
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
                                                                                        je    n577_op11_α
                                                                                        jmp   n576_call_proc_staged_α
n575_op11_β:
                                                                                        jmp   n577_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n576_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx584_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx584_21
.Lx584_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx584_21:
                        mov              rdi, qword ptr [rip + .Lx584_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx584_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx584_3]
                        lea              rdx, [rip + .Lx584_4]
                                                                                        jmp   rax
.Lx584_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx584_2
.Lx584_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx584_2
.Lx584_1:
                        call             rt_faildescr@PLT
.Lx584_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n577_op11_α
                                                                                        jmp   n578_suspend_α
n576_call_proc_staged_β:
                                                                                        jmp   n577_op11_α
.Lx584_0:
                        .quad            .Lx584_0_s
.Lx584_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n577_op11_α:
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
n577_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n578_suspend_α:
                        lea              rax, [rip + n578_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n578_suspend_β:
                                                                                        jmp   n576_call_proc_staged_β
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
                        lea              rax, [rip + n613_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
#-----------------------------------------------------------------------------------------------------------------------
n588_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx629_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx629_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx629_101
.Lx629_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx629_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$length_$2F3_ω
                                                                                        jmp   n589_var_ref_α
n588_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n590_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n590_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n591_lit_string_α
.Lx632_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n592_op11_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n592_op11_α:
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
.Lx634_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx634_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_111
                        cmp              esi, 1
                                                                                        jne   .Lx634_112
                        mov              r8, rax
                                                                                        jmp   .Lx634_110
.Lx634_112:
                        cmp              esi, 2
                                                                                        jne   .Lx634_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx634_111
                        mov              r8, rax
                                                                                        jmp   .Lx634_110
.Lx634_113:
                        cmp              eax, 13
                                                                                        jne   .Lx634_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx634_111
                        cmp              rax, r8
                                                                                        je    .Lx634_111
                        mov              r8, rax
                                                                                        jmp   .Lx634_110
.Lx634_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx634_114
                        cmp              eax, 99
                                                                                        je    .Lx634_114
                        cmp              eax, 13
                                                                                        jne   .Lx634_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx634_114
                                                                                        jmp   .Lx634_118
.Lx634_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx634_115
                        cmp              eax, 6
                                                                                        je    .Lx634_114
                        cmp              eax, 1
                                                                                        jne   .Lx634_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx634_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx634_114
                                                                                        jmp   .Lx634_116
.Lx634_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx634_117
.Lx634_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx634_117
.Lx634_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx634_117:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n594_var_ref_α
                                                                                        jmp   n593_var_ref_α
n592_op11_β:
                                                                                        jmp   n594_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n595_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n594_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n596_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_string_α:
                        mov              qword ptr [rbp + 1088], 1
                        mov              rax, qword ptr [rip + .Lx639_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n597_op11_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n596_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx640_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n598_lit_integer_α
.Lx640_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n597_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              rsi, qword ptr [rip + .Lx641_2]
                                                                                        jmp   .Lx641_3
.Lx641_2:
                        .quad            .Lx641_2_s
.Lx641_2_s:
                        .string          "[]"
.Lx641_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n600_op11_α
                                                                                        jmp   n599_var_ref_α
n597_op11_β:
                                                                                        jmp   n600_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n598_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx642_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n601_op11_α
.Lx642_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n602_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n600_op11_α:
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
                                                                                        jmp   n594_var_ref_α
n600_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n601_op11_α:
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
.Lx646_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx646_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_111
                        cmp              esi, 1
                                                                                        jne   .Lx646_112
                        mov              r8, rax
                                                                                        jmp   .Lx646_110
.Lx646_112:
                        cmp              esi, 2
                                                                                        jne   .Lx646_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx646_111
                        mov              r8, rax
                                                                                        jmp   .Lx646_110
.Lx646_113:
                        cmp              eax, 13
                                                                                        jne   .Lx646_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx646_111
                        cmp              rax, r8
                                                                                        je    .Lx646_111
                        mov              r8, rax
                                                                                        jmp   .Lx646_110
.Lx646_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx646_114
                        cmp              eax, 99
                                                                                        je    .Lx646_114
                        cmp              eax, 13
                                                                                        jne   .Lx646_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx646_114
                                                                                        jmp   .Lx646_118
.Lx646_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx646_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx646_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx646_115
                                                                                        jmp   .Lx646_114
.Lx646_119:
                        cmp              eax, 6
                                                                                        jne   .Lx646_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx646_114
                                                                                        jmp   .Lx646_115
.Lx646_120:
                        cmp              eax, 1
                                                                                        jne   .Lx646_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx646_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx646_114
                                                                                        jmp   .Lx646_115
.Lx646_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx646_117
.Lx646_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx646_117
.Lx646_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx646_117:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n604_op11_α
                                                                                        jmp   n603_var_ref_α
n601_op11_β:
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n605_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n606_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n604_op11_α:
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
n604_op11_β:
                                                                                        jmp   proc_$length_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n605_op11_α:
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
.Lx652_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_41
                        cmp              esi, 1
                                                                                        jne   .Lx652_55
                        mov              r8, rax
                                                                                        jmp   .Lx652_40
.Lx652_55:
                        cmp              esi, 2
                                                                                        jne   .Lx652_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_41
                        mov              r8, rax
                                                                                        jmp   .Lx652_40
.Lx652_56:
                        cmp              eax, 13
                                                                                        jne   .Lx652_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_41
                        cmp              rax, r8
                                                                                        je    .Lx652_41
                        mov              r8, rax
                                                                                        jmp   .Lx652_40
.Lx652_41:
                        lea              r9, [rbp + 976]
.Lx652_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx652_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_43
                        cmp              esi, 1
                                                                                        jne   .Lx652_57
                        mov              r9, rax
                                                                                        jmp   .Lx652_42
.Lx652_57:
                        cmp              esi, 2
                                                                                        jne   .Lx652_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx652_43
                        mov              r9, rax
                                                                                        jmp   .Lx652_42
.Lx652_58:
                        cmp              eax, 13
                                                                                        jne   .Lx652_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx652_43
                        cmp              rax, r9
                                                                                        je    .Lx652_43
                        mov              r9, rax
                                                                                        jmp   .Lx652_42
.Lx652_43:
                        cmp              r8, r9
                                                                                        je    .Lx652_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_44
                        cmp              eax, 99
                                                                                        je    .Lx652_44
                        cmp              eax, 13
                                                                                        jne   .Lx652_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx652_44
                                                                                        jmp   .Lx652_45
.Lx652_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_53
                        cmp              eax, 99
                                                                                        je    .Lx652_53
                        cmp              eax, 13
                                                                                        jne   .Lx652_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx652_53
                                                                                        jmp   .Lx652_46
.Lx652_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx652_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx652_53
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
                                                                                        jmp   .Lx652_51
.Lx652_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx652_47
                        cmp              eax, 99
                                                                                        je    .Lx652_47
                        cmp              eax, 13
                                                                                        jne   .Lx652_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx652_47
                                                                                        jmp   .Lx652_48
.Lx652_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx652_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx652_53
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
                                                                                        jmp   .Lx652_51
.Lx652_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx652_49
                        cmp              edx, 14
                                                                                        je    .Lx652_53
                                                                                        jmp   .Lx652_52
.Lx652_49:
                        cmp              edx, 14
                                                                                        je    .Lx652_52
                        cmp              ecx, 7
                                                                                        je    .Lx652_53
                        cmp              edx, 7
                                                                                        je    .Lx652_53
                        cmp              ecx, 6
                                                                                        jne   .Lx652_50
                        cmp              edx, 6
                                                                                        jne   .Lx652_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx652_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx652_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx652_51
                                                                                        jmp   .Lx652_52
.Lx652_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx652_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx652_53
.Lx652_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx652_54
.Lx652_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx652_54
.Lx652_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx652_54:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n600_op11_α
                                                                                        jmp   n607_var_ref_α
n605_op11_β:
                                                                                        jmp   n600_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n608_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n609_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n608_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n610_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n609_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n611_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n610_op11_α:
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
.Lx661_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_61
                        cmp              esi, 1
                                                                                        jne   .Lx661_62
                        mov              r8, rax
                                                                                        jmp   .Lx661_60
.Lx661_62:
                        cmp              esi, 2
                                                                                        jne   .Lx661_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_61
                        mov              r8, rax
                                                                                        jmp   .Lx661_60
.Lx661_63:
                        cmp              eax, 13
                                                                                        jne   .Lx661_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_61
                        cmp              rax, r8
                                                                                        je    .Lx661_61
                        mov              r8, rax
                                                                                        jmp   .Lx661_60
.Lx661_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_80
                        cmp              eax, 99
                                                                                        je    .Lx661_80
                        cmp              eax, 13
                                                                                        jne   .Lx661_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx661_80
                                                                                        jmp   .Lx661_74
.Lx661_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx661_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx661_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx661_73
                        lea              r9, [rbp + 640]
.Lx661_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_65
                        cmp              esi, 1
                                                                                        jne   .Lx661_66
                        mov              r9, rax
                                                                                        jmp   .Lx661_64
.Lx661_66:
                        cmp              esi, 2
                                                                                        jne   .Lx661_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_65
                        mov              r9, rax
                                                                                        jmp   .Lx661_64
.Lx661_67:
                        cmp              eax, 13
                                                                                        jne   .Lx661_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_65
                        cmp              rax, r9
                                                                                        je    .Lx661_65
                        mov              r9, rax
                                                                                        jmp   .Lx661_64
.Lx661_65:
                        lea              rcx, [rbp + 656]
.Lx661_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx661_69
                        cmp              esi, 1
                                                                                        jne   .Lx661_70
                        mov              rcx, rax
                                                                                        jmp   .Lx661_68
.Lx661_70:
                        cmp              esi, 2
                                                                                        jne   .Lx661_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_69
                        mov              rcx, rax
                                                                                        jmp   .Lx661_68
.Lx661_71:
                        cmp              eax, 13
                                                                                        jne   .Lx661_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx661_69
                        cmp              rax, rcx
                                                                                        je    .Lx661_69
                        mov              rcx, rax
                                                                                        jmp   .Lx661_68
.Lx661_69:
                        cmp              r9, rcx
                                                                                        je    .Lx661_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_75
                        cmp              eax, 99
                                                                                        je    .Lx661_75
                        cmp              eax, 13
                                                                                        jne   .Lx661_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_75
                                                                                        jmp   .Lx661_72
.Lx661_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_76
                        cmp              eax, 99
                                                                                        je    .Lx661_76
                        cmp              eax, 13
                                                                                        jne   .Lx661_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx661_76
                                                                                        jmp   .Lx661_72
.Lx661_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx661_72
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
                                                                                        jmp   .Lx661_77
.Lx661_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx661_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx661_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx661_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx661_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx661_72
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
.Lx661_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_82
                        cmp              esi, 1
                                                                                        jne   .Lx661_83
                        mov              r9, rax
                                                                                        jmp   .Lx661_81
.Lx661_83:
                        cmp              esi, 2
                                                                                        jne   .Lx661_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_82
                        mov              r9, rax
                                                                                        jmp   .Lx661_81
.Lx661_84:
                        cmp              eax, 13
                                                                                        jne   .Lx661_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx661_82
                        cmp              rax, r9
                                                                                        je    .Lx661_82
                        mov              r9, rax
                                                                                        jmp   .Lx661_81
.Lx661_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_85
                        cmp              eax, 99
                                                                                        je    .Lx661_85
                        cmp              eax, 13
                                                                                        jne   .Lx661_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx661_85
                                                                                        jmp   .Lx661_86
.Lx661_85:
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
                                                                                        jmp   .Lx661_87
.Lx661_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx661_87:
                        lea              rcx, [rbp + 656]
.Lx661_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx661_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx661_89
                        cmp              esi, 1
                                                                                        jne   .Lx661_90
                        mov              rcx, rax
                                                                                        jmp   .Lx661_88
.Lx661_90:
                        cmp              esi, 2
                                                                                        jne   .Lx661_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx661_89
                        mov              rcx, rax
                                                                                        jmp   .Lx661_88
.Lx661_91:
                        cmp              eax, 13
                                                                                        jne   .Lx661_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx661_89
                        cmp              rax, rcx
                                                                                        je    .Lx661_89
                        mov              rcx, rax
                                                                                        jmp   .Lx661_88
.Lx661_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx661_92
                        cmp              eax, 99
                                                                                        je    .Lx661_92
                        cmp              eax, 13
                                                                                        jne   .Lx661_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx661_92
                                                                                        jmp   .Lx661_93
.Lx661_92:
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
                                                                                        jmp   .Lx661_94
.Lx661_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx661_94:
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
                                                                                        jmp   .Lx661_77
.Lx661_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx661_77
.Lx661_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx661_77:
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n604_op11_α
                                                                                        jmp   n612_var_ref_α
n610_op11_β:
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n611_op11_α:
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
.Lx662_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx662_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_41
                        cmp              esi, 1
                                                                                        jne   .Lx662_55
                        mov              r8, rax
                                                                                        jmp   .Lx662_40
.Lx662_55:
                        cmp              esi, 2
                                                                                        jne   .Lx662_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx662_41
                        mov              r8, rax
                                                                                        jmp   .Lx662_40
.Lx662_56:
                        cmp              eax, 13
                                                                                        jne   .Lx662_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_41
                        cmp              rax, r8
                                                                                        je    .Lx662_41
                        mov              r8, rax
                                                                                        jmp   .Lx662_40
.Lx662_41:
                        lea              r9, [rbp + 896]
.Lx662_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx662_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_43
                        cmp              esi, 1
                                                                                        jne   .Lx662_57
                        mov              r9, rax
                                                                                        jmp   .Lx662_42
.Lx662_57:
                        cmp              esi, 2
                                                                                        jne   .Lx662_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx662_43
                        mov              r9, rax
                                                                                        jmp   .Lx662_42
.Lx662_58:
                        cmp              eax, 13
                                                                                        jne   .Lx662_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx662_43
                        cmp              rax, r9
                                                                                        je    .Lx662_43
                        mov              r9, rax
                                                                                        jmp   .Lx662_42
.Lx662_43:
                        cmp              r8, r9
                                                                                        je    .Lx662_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx662_44
                        cmp              eax, 99
                                                                                        je    .Lx662_44
                        cmp              eax, 13
                                                                                        jne   .Lx662_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx662_44
                                                                                        jmp   .Lx662_45
.Lx662_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx662_53
                        cmp              eax, 99
                                                                                        je    .Lx662_53
                        cmp              eax, 13
                                                                                        jne   .Lx662_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx662_53
                                                                                        jmp   .Lx662_46
.Lx662_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx662_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx662_53
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
                                                                                        jmp   .Lx662_51
.Lx662_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx662_47
                        cmp              eax, 99
                                                                                        je    .Lx662_47
                        cmp              eax, 13
                                                                                        jne   .Lx662_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx662_47
                                                                                        jmp   .Lx662_48
.Lx662_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx662_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx662_53
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
                                                                                        jmp   .Lx662_51
.Lx662_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx662_49
                        cmp              edx, 14
                                                                                        je    .Lx662_53
                                                                                        jmp   .Lx662_52
.Lx662_49:
                        cmp              edx, 14
                                                                                        je    .Lx662_52
                        cmp              ecx, 7
                                                                                        je    .Lx662_53
                        cmp              edx, 7
                                                                                        je    .Lx662_53
                        cmp              ecx, 6
                                                                                        jne   .Lx662_50
                        cmp              edx, 6
                                                                                        jne   .Lx662_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx662_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx662_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx662_51
                                                                                        jmp   .Lx662_52
.Lx662_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx662_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx662_53
.Lx662_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx662_54
.Lx662_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx662_54
.Lx662_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx662_54:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n600_op11_α
                                                                                        jmp   n613_suspend_α
n611_op11_β:
                                                                                        jmp   n600_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n614_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n613_suspend_α:
                        lea              rax, [rip + n613_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n613_suspend_β:
                                                                                        jmp   n600_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n615_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n615_op11_α:
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
.Lx669_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx669_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_41
                        cmp              esi, 1
                                                                                        jne   .Lx669_55
                        mov              r8, rax
                                                                                        jmp   .Lx669_40
.Lx669_55:
                        cmp              esi, 2
                                                                                        jne   .Lx669_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx669_41
                        mov              r8, rax
                                                                                        jmp   .Lx669_40
.Lx669_56:
                        cmp              eax, 13
                                                                                        jne   .Lx669_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_41
                        cmp              rax, r8
                                                                                        je    .Lx669_41
                        mov              r8, rax
                                                                                        jmp   .Lx669_40
.Lx669_41:
                        lea              r9, [rbp + 544]
.Lx669_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx669_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_43
                        cmp              esi, 1
                                                                                        jne   .Lx669_57
                        mov              r9, rax
                                                                                        jmp   .Lx669_42
.Lx669_57:
                        cmp              esi, 2
                                                                                        jne   .Lx669_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx669_43
                        mov              r9, rax
                                                                                        jmp   .Lx669_42
.Lx669_58:
                        cmp              eax, 13
                                                                                        jne   .Lx669_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx669_43
                        cmp              rax, r9
                                                                                        je    .Lx669_43
                        mov              r9, rax
                                                                                        jmp   .Lx669_42
.Lx669_43:
                        cmp              r8, r9
                                                                                        je    .Lx669_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx669_44
                        cmp              eax, 99
                                                                                        je    .Lx669_44
                        cmp              eax, 13
                                                                                        jne   .Lx669_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx669_44
                                                                                        jmp   .Lx669_45
.Lx669_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx669_53
                        cmp              eax, 99
                                                                                        je    .Lx669_53
                        cmp              eax, 13
                                                                                        jne   .Lx669_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx669_53
                                                                                        jmp   .Lx669_46
.Lx669_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx669_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx669_53
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
                                                                                        jmp   .Lx669_51
.Lx669_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx669_47
                        cmp              eax, 99
                                                                                        je    .Lx669_47
                        cmp              eax, 13
                                                                                        jne   .Lx669_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx669_47
                                                                                        jmp   .Lx669_48
.Lx669_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx669_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx669_53
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
                                                                                        jmp   .Lx669_51
.Lx669_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx669_49
                        cmp              edx, 14
                                                                                        je    .Lx669_53
                                                                                        jmp   .Lx669_52
.Lx669_49:
                        cmp              edx, 14
                                                                                        je    .Lx669_52
                        cmp              ecx, 7
                                                                                        je    .Lx669_53
                        cmp              edx, 7
                                                                                        je    .Lx669_53
                        cmp              ecx, 6
                                                                                        jne   .Lx669_50
                        cmp              edx, 6
                                                                                        jne   .Lx669_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx669_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx669_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx669_51
                                                                                        jmp   .Lx669_52
.Lx669_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx669_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx669_53
.Lx669_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx669_54
.Lx669_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx669_54
.Lx669_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx669_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n604_op11_α
                                                                                        jmp   n616_var_ref_α
n615_op11_β:
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n616_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n617_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n617_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n618_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n618_op11_α:
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
.Lx674_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_41
                        cmp              esi, 1
                                                                                        jne   .Lx674_55
                        mov              r8, rax
                                                                                        jmp   .Lx674_40
.Lx674_55:
                        cmp              esi, 2
                                                                                        jne   .Lx674_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_41
                        mov              r8, rax
                                                                                        jmp   .Lx674_40
.Lx674_56:
                        cmp              eax, 13
                                                                                        jne   .Lx674_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_41
                        cmp              rax, r8
                                                                                        je    .Lx674_41
                        mov              r8, rax
                                                                                        jmp   .Lx674_40
.Lx674_41:
                        lea              r9, [rbp + 464]
.Lx674_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx674_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_43
                        cmp              esi, 1
                                                                                        jne   .Lx674_57
                        mov              r9, rax
                                                                                        jmp   .Lx674_42
.Lx674_57:
                        cmp              esi, 2
                                                                                        jne   .Lx674_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx674_43
                        mov              r9, rax
                                                                                        jmp   .Lx674_42
.Lx674_58:
                        cmp              eax, 13
                                                                                        jne   .Lx674_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx674_43
                        cmp              rax, r9
                                                                                        je    .Lx674_43
                        mov              r9, rax
                                                                                        jmp   .Lx674_42
.Lx674_43:
                        cmp              r8, r9
                                                                                        je    .Lx674_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_44
                        cmp              eax, 99
                                                                                        je    .Lx674_44
                        cmp              eax, 13
                                                                                        jne   .Lx674_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx674_44
                                                                                        jmp   .Lx674_45
.Lx674_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_53
                        cmp              eax, 99
                                                                                        je    .Lx674_53
                        cmp              eax, 13
                                                                                        jne   .Lx674_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx674_53
                                                                                        jmp   .Lx674_46
.Lx674_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx674_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx674_53
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
                                                                                        jmp   .Lx674_51
.Lx674_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx674_47
                        cmp              eax, 99
                                                                                        je    .Lx674_47
                        cmp              eax, 13
                                                                                        jne   .Lx674_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx674_47
                                                                                        jmp   .Lx674_48
.Lx674_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx674_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx674_53
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
                                                                                        jmp   .Lx674_51
.Lx674_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx674_49
                        cmp              edx, 14
                                                                                        je    .Lx674_53
                                                                                        jmp   .Lx674_52
.Lx674_49:
                        cmp              edx, 14
                                                                                        je    .Lx674_52
                        cmp              ecx, 7
                                                                                        je    .Lx674_53
                        cmp              edx, 7
                                                                                        je    .Lx674_53
                        cmp              ecx, 6
                                                                                        jne   .Lx674_50
                        cmp              edx, 6
                                                                                        jne   .Lx674_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx674_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx674_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx674_51
                                                                                        jmp   .Lx674_52
.Lx674_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx674_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx674_53
.Lx674_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx674_54
.Lx674_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx674_54
.Lx674_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx674_54:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n604_op11_α
                                                                                        jmp   n619_var_ref_α
n618_op11_β:
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n620_var_α
#-----------------------------------------------------------------------------------------------------------------------
n620_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n621_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n621_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx679_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n622_op11_α
.Lx679_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n622_op11_α:
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
                                                                                        je    n604_op11_α
                                                                                        jmp   n623_op11_α
n622_op11_β:
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n623_op11_α:
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
                                                                                        je    n604_op11_α
                                                                                        jmp   n624_var_ref_α
n623_op11_β:
                                                                                        jmp   n604_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n624_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n625_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n625_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n626_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n626_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n627_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n627_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx689_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx689_21
.Lx689_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx689_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx689_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx689_23
.Lx689_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx689_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx689_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx689_25
.Lx689_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx689_25:
                        mov              edi, 16
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx689_1
                        lea              rcx, [rip + .Lx689_3]
                        lea              rdx, [rip + .Lx689_4]
                                                                                        jmp   rax
.Lx689_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx689_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx689_2
.Lx689_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx689_2
.Lx689_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx689_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx689_2
.Lx689_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx689_2
.Lx689_1:
                        call             rt_faildescr@PLT
.Lx689_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n604_op11_α
                                                                                        jmp   n628_suspend_α
n627_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx689_0:
                        .quad            .Lx689_0_s
.Lx689_0_s:
                        .string          "$length_/3"
#-----------------------------------------------------------------------------------------------------------------------
n628_suspend_α:
                        lea              rax, [rip + n628_suspend_β]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$length_$2F3_γ
n628_suspend_β:
                                                                                        jmp   n627_call_proc_staged_β
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
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_outer$2F0_α
proc_outer$2F0_α:
                        .global          proc_outer$2F0_α
                        .global          proc_outer$2F0_β
                        .global          proc_outer$2F0_γ
                        .global          proc_outer$2F0_ω
                        sub              rsp, 720
                        mov              [rsp + 696], rcx
                        mov              [rsp + 704], rdx
                        mov              [rsp + 712], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 688
                        call             rt_jmp_frame_lexprep2@PLT
proc_outer$2F0_α_body:
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n692_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx713_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx713_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx713_101
.Lx713_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx713_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_outer$2F0_ω
                                                                                        jmp   n693_lit_string_α
n692_op11_β:
                                                                                        jmp   proc_outer$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n693_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx714_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n694_lit_integer_α
.Lx714_0:
                        .quad            .Lx714_0_s
.Lx714_0_s:
                        .string          "inner"
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx715_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n695_op11_α
.Lx715_0:
                        .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n695_op11_α:
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
                                                                                        je    n697_op11_α
                                                                                        jmp   n696_lit_integer_α
n695_op11_β:
                                                                                        jmp   n697_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n696_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n698_var_ref_α
.Lx717_0:
                        .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n697_op11_α:
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
                                                                                        je    proc_outer$2F0_ω
                                                                                        jmp   proc_outer$2F0_ω
n697_op11_β:
                                                                                        jmp   proc_outer$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n698_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n699_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n699_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx722_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx722_21
.Lx722_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx722_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx722_22
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx722_23
.Lx722_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx722_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx722_24
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx722_25
.Lx722_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx722_25:
                        mov              rdi, qword ptr [rip + .Lx722_0]
                        mov              esi, 3
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx722_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx722_3]
                        lea              rdx, [rip + .Lx722_4]
                                                                                        jmp   rax
.Lx722_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx722_2
.Lx722_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx722_2
.Lx722_1:
                        call             rt_faildescr@PLT
.Lx722_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n697_op11_α
                                                                                        jmp   n700_var_ref_α
n699_call_proc_staged_β:
                                                                                        jmp   n697_op11_α
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "call_with_inference_limit/3"
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n701_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n701_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx725_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n702_op11_α
.Lx725_0:
                        .quad            .Lx725_0_s
.Lx725_0_s:
                        .string          "inference_limit_exceeded"
#-----------------------------------------------------------------------------------------------------------------------
n702_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn727:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn727]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n704_lit_string_α
                                                                                        jmp   n703_lit_string_α
n702_op11_β:
                                                                                        jmp   n704_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx728_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n705_call_proc_staged_α
.Lx728_0:
                        .quad            .Lx728_0_s
.Lx728_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n704_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx729_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n706_lit_string_α
.Lx729_0:
                        .quad            .Lx729_0_s
.Lx729_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n705_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        call             proc_p$2F1_dcα
                                                                                        jmp   .Lx731_2
.Lx731_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n699_call_proc_staged_β
                                                                                        jmp   n707_suspend_α
n705_call_proc_staged_β:
                                                                                        jmp   n699_call_proc_staged_β
.Lx731_0:
                        .quad            .Lx731_0_s
.Lx731_0_s:
                        .string          "p/1"
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx732_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n708_lit_string_α
.Lx732_0:
                        .quad            .Lx732_0_s
.Lx732_0_s:
                        .string          "~NOops, no timeout (~w)!!~n"
#-----------------------------------------------------------------------------------------------------------------------
n707_suspend_α:
                        lea              rax, [rip + n707_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_outer$2F0_γ
n707_suspend_β:
                                                                                        jmp   n699_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n708_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx735_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n709_var_ref_α
.Lx735_0:
                        .quad            .Lx735_0_s
.Lx735_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n709_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n710_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx738_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n711_op11_α
.Lx738_0:
                        .quad            .Lx738_0_s
.Lx738_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n711_op11_α:
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
                                                                                        je    n699_call_proc_staged_β
                                                                                        jmp   n712_op11_α
n711_op11_β:
                                                                                        jmp   n699_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n712_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn741:              .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn741]
                        lea              rsi, [rbp + 160]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n699_call_proc_staged_β
                                                                                        jmp   n699_call_proc_staged_β
n712_op11_β:
                                                                                        jmp   n699_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_outer$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_outer$2F0_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_outer$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_outer$2F0_res]
                        push             rax
                        mov              rax, [rbp + 696]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_outer$2F0_ω:
                        mov              rax, [rbp + 704]
                        lea              rsp, [rbp + 720]
                        mov              rbp, [rbp + 712]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1392
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "length/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_length$2F2_α]
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
.Lstartup_pname3:       .string          "pj_test/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_pj_test$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2448
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "inner/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_inner$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 624
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "inner/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_inner$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "test_inflimit/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_test_inflimit$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "$disj0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_$disj0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 208
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
.Lstartup_pname11:      .string          "p/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_p$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_p$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "goal/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_goal$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 368
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "pj_dir_5/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_pj_dir_5$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "$length_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_$length_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1312
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "outer/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_outer$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 688
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
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
n742_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx744_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n743_call_proc_staged_α
.Lx744_0:
                        .quad            .Lx744_0_s
.Lx744_0_s:
                        .string          "call_with_inference_limit"
#-----------------------------------------------------------------------------------------------------------------------
n743_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx746_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx746_21
.Lx746_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx746_21:
                        mov              rdi, qword ptr [rip + .Lx746_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx746_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx746_3]
                        lea              rdx, [rip + .Lx746_4]
                                                                                        jmp   rax
.Lx746_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx746_2
.Lx746_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx746_2
.Lx746_1:
                        call             rt_faildescr@PLT
.Lx746_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n743_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx746_0:
                        .quad            .Lx746_0_s
.Lx746_0_s:
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
