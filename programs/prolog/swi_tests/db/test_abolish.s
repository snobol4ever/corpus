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
                        .string          "abolish_cgc"
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
                        .string          "abolish_cgc"
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
                        .quad            50000
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
                        mov              edi, 4
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
                        .string          "run_abolish_test/1"
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
                        .globl           proc_create_delete$2F0_α
proc_create_delete$2F0_α:
                        .global          proc_create_delete$2F0_α
                        .global          proc_create_delete$2F0_β
                        .global          proc_create_delete$2F0_γ
                        .global          proc_create_delete$2F0_ω
                        sub              rsp, 3712
                        mov              [rsp + 3688], rcx
                        mov              [rsp + 3696], rdx
                        mov              [rsp + 3704], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 3040
                        mov              edx, 3680
                        call             rt_jmp_frame_lexprep2@PLT
proc_create_delete$2F0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx120_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx120_101
.Lx120_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx120_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_create_delete$2F0_ω
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   proc_create_delete$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n21_var_ref_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3616]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3000], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n26_op11_α
n25_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn132:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rbp + 2832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n28_lit_string_α
n26_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
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
                                                                                        je    proc_create_delete$2F0_ω
                                                                                        jmp   proc_create_delete$2F0_ω
n27_op11_β:
                                                                                        jmp   proc_create_delete$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n29_var_ref_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3536]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3552]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3584]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n35_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2760], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2776], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 7
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n36_op11_α
n35_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2552], rax
                        .section         .rodata
.Lrkfn149:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n37_lit_string_α
n36_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n38_var_ref_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3472]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3488]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2432]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n42_op11_α
n41_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn159:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n43_lit_string_α
n42_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n44_var_ref_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n49_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2208]
                        mov              esi, 6
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n50_op11_α
n49_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2104], rax
                        .section         .rodata
.Lrkfn173:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 2096]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n51_lit_string_α
n50_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n52_var_ref_α
.Lx174_0:
                        .quad            .Lx174_0_s
.Lx174_0_s:
                        .string          "$xpto#0._super"
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n56_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n57_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 1952]
                        mov              esi, 6
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n58_op11_α
n57_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1848], rax
                        .section         .rodata
.Lrkfn187:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n59_lit_string_α
n58_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n60_var_ref_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3216]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3232]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3248]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3264]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3280]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3296]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 7
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n67_op11_α
n66_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn203:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 1552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n68_lit_string_α
n67_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n69_var_ref_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3136]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3152]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n71_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3168]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n72_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3184]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n73_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3200]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 6
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n75_op11_α
n74_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn217:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n76_lit_string_α
n75_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n77_var_ref_α
.Lx218_0:
                        .quad            .Lx218_0_s
.Lx218_0_s:
                        .string          "$xpto#0._ddef"
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3088]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3104]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n79_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3120]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n80_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n81_op11_α
n80_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn227:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n82_lit_string_α
n81_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n83_var_ref_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "$xpto#0._alias"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3040]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n84_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3056]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3072]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n87_op11_α
n86_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn237:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 912]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n88_lit_string_α
n87_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n89_lit_integer_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n90_op11_α
.Lx239_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn241:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rbp + 832]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n91_lit_string_α
n90_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n92_lit_integer_α
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n93_op11_α
.Lx243_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn245:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn245]
                        lea              rsi, [rbp + 752]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n94_lit_string_α
n93_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n95_lit_integer_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n96_op11_α
.Lx247_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn249:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]
                        lea              rsi, [rbp + 672]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n97_lit_string_α
n96_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n98_lit_integer_α
.Lx250_0:
                        .quad            .Lx250_0_s
.Lx250_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n99_op11_α
.Lx251_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn253:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n100_lit_string_α
n99_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n101_lit_integer_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "$xpto#0._super"
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n102_op11_α
.Lx255_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn257:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n103_lit_string_α
n102_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n104_lit_integer_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n105_op11_α
.Lx259_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn261:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n106_lit_string_α
n105_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n107_lit_integer_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n108_op11_α
.Lx263_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn265:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn265]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n109_lit_string_α
n108_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n110_lit_integer_α
.Lx266_0:
                        .quad            .Lx266_0_s
.Lx266_0_s:
                        .string          "$xpto#0._ddcl"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n111_op11_α
.Lx267_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n111_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn269:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rbp + 272]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n112_lit_string_α
n111_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n113_lit_integer_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "$xpto#0._ddef"
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n114_op11_α
.Lx271_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n114_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn273:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 192]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n115_lit_string_α
n114_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n116_lit_integer_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          "$xpto#0._alias"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:
                        mov              qword ptr [rbp + 160], 6
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n117_op11_α
.Lx275_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn277:              .string          "$abolish"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n27_op11_α
                                                                                        jmp   n118_move_label_α
n117_op11_β:
                                                                                        jmp   n27_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_move_label_α:
                        lea              rax, [rip + n27_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   proc_create_delete$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
n119_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n119_disjunction_β:
                                                                                        jmp   proc_create_delete$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_create_delete$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_create_delete$2F0_β:
                                                                                        jmp   n119_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_create_delete$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 3688]
                        lea              rsp, [rbp + 3712]
                        mov              rbp, [rbp + 3704]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_create_delete$2F0_ω:
                        mov              rax, [rbp + 3696]
                        lea              rsp, [rbp + 3712]
                        mov              rbp, [rbp + 3704]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_create_delete$2F0_dcα:
                        pop              r11
                        sub              rsp, 3728
                        mov              qword ptr [rsp + 3704], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 3680], r11
                        lea              rax, [rip + .Lx282_2]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rax, [rip + .Lx282_3]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rdi, rbp
                        mov              esi, 3040
                        mov              edx, 3680
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_create_delete$2F0_α_body
.Lx282_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -3712
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx282_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -3712
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
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
n283_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx301_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx301_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx301_101
.Lx301_100:
                        lea              rdi, [rbp + 128]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx301_101:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_test$2F4_ω
                                                                                        jmp   n284_var_ref_α
n283_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n284_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n285_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n286_op11_α
.Lx304_0:
                        .quad            .Lx304_0_s
.Lx304_0_s:
                        .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n286_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              rsi, qword ptr [rip + .Lx305_2]
                                                                                        jmp   .Lx305_3
.Lx305_2:
                        .quad            .Lx305_2_s
.Lx305_2_s:
                        .string          "abolish_cgc"
.Lx305_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n287_var_ref_α
n286_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n289_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n288_op11_α:
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
n288_op11_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n290_op11_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              rsi, qword ptr [rip + .Lx310_2]
                                                                                        jmp   .Lx310_3
.Lx310_2:
                        .quad            .Lx310_2_s
.Lx310_2_s:
                        .string          "abolish_cgc"
.Lx310_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n291_var_ref_α
n290_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n292_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n293_op11_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n293_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              rsi, qword ptr [rip + .Lx314_2]
                                                                                        jmp   .Lx314_3
.Lx314_2:
                        .quad            .Lx314_2_s
.Lx314_2_s:
                        .string          "[]"
.Lx314_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n294_var_ref_α
n293_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n296_lit_integer_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          "run_abolish_test"
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx318_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n297_op11_α
.Lx318_0:
                        .quad            50000
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
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
                                                                                        je    n288_op11_α
                                                                                        jmp   n298_op11_α
n297_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n298_op11_α:
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
.Lx320_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              esi, 1
                                                                                        jne   .Lx320_55
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_55:
                        cmp              esi, 2
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_56:
                        cmp              eax, 13
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              rax, r8
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_41:
                        lea              r9, [rbp + 208]
.Lx320_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              esi, 1
                                                                                        jne   .Lx320_57
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_57:
                        cmp              esi, 2
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_58:
                        cmp              eax, 13
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              rax, r9
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_43:
                        cmp              r8, r9
                                                                                        je    .Lx320_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_44
                        cmp              eax, 99
                                                                                        je    .Lx320_44
                        cmp              eax, 13
                                                                                        jne   .Lx320_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx320_44
                                                                                        jmp   .Lx320_45
.Lx320_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_53
                        cmp              eax, 99
                                                                                        je    .Lx320_53
                        cmp              eax, 13
                                                                                        jne   .Lx320_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_46
.Lx320_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
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
                                                                                        jmp   .Lx320_51
.Lx320_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_47
                        cmp              eax, 99
                                                                                        je    .Lx320_47
                        cmp              eax, 13
                                                                                        jne   .Lx320_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_47
                                                                                        jmp   .Lx320_48
.Lx320_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
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
                                                                                        jmp   .Lx320_51
.Lx320_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx320_49
                        cmp              edx, 14
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_52
.Lx320_49:
                        cmp              edx, 14
                                                                                        je    .Lx320_52
                        cmp              ecx, 7
                                                                                        je    .Lx320_53
                        cmp              edx, 7
                                                                                        je    .Lx320_53
                        cmp              ecx, 6
                                                                                        jne   .Lx320_50
                        cmp              edx, 6
                                                                                        jne   .Lx320_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx320_51
                                                                                        jmp   .Lx320_52
.Lx320_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
.Lx320_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx320_54
.Lx320_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx320_54
.Lx320_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx320_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n288_op11_α
                                                                                        jmp   n299_move_label_α
n298_op11_β:
                                                                                        jmp   n288_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n299_move_label_α:
                        lea              rax, [rip + n288_op11_α]
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   proc_pj_test$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n300_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 96]
n300_disjunction_β:
                                                                                        jmp   proc_pj_test$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_test$2F4_β:
                                                                                        jmp   n300_disjunction_α
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
                        lea              rax, [rip + .Lx325_2]
                        mov              qword ptr [rbp + 584], rax
                        lea              rax, [rip + .Lx325_3]
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
.Lx325_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -608
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx325_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -608
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
                        lea              rax, [rip + n330_suspend_β]
                        mov              qword ptr [rbp + 192], rax
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n328_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n328_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n329_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_gen_α:
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
.Lx337_60:
                        .section         .rodata
.Lbynamegenfn131:       .string          "$between"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn131]
                        lea              rsi, [rbp + 80]
                        mov              edx, 3
                        lea              rcx, [rbp + 128]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_between$2F3_ω
                                                                                        jmp   n330_suspend_α
n329_call_builtin_gen_β:
                                                                                        jmp   .Lx337_60
#-----------------------------------------------------------------------------------------------------------------------
n330_suspend_α:
                        lea              rax, [rip + n330_suspend_β]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_between$2F3_γ
n330_suspend_β:
                                                                                        jmp   n329_call_builtin_gen_β
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
                        .globl           proc_run_abolish_test$2F1_α
proc_run_abolish_test$2F1_α:
                        .global          proc_run_abolish_test$2F1_α
                        .global          proc_run_abolish_test$2F1_β
                        .global          proc_run_abolish_test$2F1_γ
                        .global          proc_run_abolish_test$2F1_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_run_abolish_test$2F1_α_body:
                        lea              rax, [rip + n350_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n340_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx351_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx351_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx351_101
.Lx351_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx351_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_run_abolish_test$2F1_ω
                                                                                        jmp   n341_var_ref_α
n340_op11_β:
                                                                                        jmp   proc_run_abolish_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n341_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n342_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n343_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
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
                        lea              r9, [rbp + 320]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n344_lit_integer_α
n343_op11_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx357_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n346_var_ref_α
.Lx357_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n345_op11_α:
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
                                                                                        je    proc_run_abolish_test$2F1_ω
                                                                                        jmp   proc_run_abolish_test$2F1_ω
n345_op11_β:
                                                                                        jmp   proc_run_abolish_test$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n347_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n347_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n348_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n348_call_proc_staged_α:
                        mov              qword ptr [rbp + 208], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx364_20
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx364_21
.Lx364_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx364_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx364_22
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx364_23
.Lx364_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx364_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx364_24
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx364_25
.Lx364_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx364_25:
                        mov              edi, 3
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx364_1
                        lea              rcx, [rip + .Lx364_3]
                        lea              rdx, [rip + .Lx364_4]
                                                                                        jmp   rax
.Lx364_3:
                        mov              qword ptr [rbp + 216], rsp
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx364_5
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx364_2
.Lx364_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx364_2
.Lx364_4:
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax
                                                                                        jne   .Lx364_6
                        mov              qword ptr [rbp + 208], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx364_2
.Lx364_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx364_2
.Lx364_1:
                        call             rt_faildescr@PLT
.Lx364_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n350_suspend_α
                                                                                        jmp   n349_call_proc_staged_α
n348_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 216]
                                                                                        jmp   qword ptr [rsp]
.Lx364_0:
                        .quad            .Lx364_0_s
.Lx364_0_s:
                        .string          "between/3"
#-----------------------------------------------------------------------------------------------------------------------
n349_call_proc_staged_α:
                        call             proc_create_delete$2F0_dcα
                                                                                        jmp   .Lx366_2
.Lx366_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n345_op11_α
                                                                                        jmp   n348_call_proc_staged_β
n349_call_proc_staged_β:
                                                                                        jmp   n345_op11_α
.Lx366_0:
                        .quad            .Lx366_0_s
.Lx366_0_s:
                        .string          "create_delete/0"
#-----------------------------------------------------------------------------------------------------------------------
n350_suspend_α:
                        lea              rax, [rip + n350_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_run_abolish_test$2F1_γ
n350_suspend_β:
                                                                                        jmp   n345_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_run_abolish_test$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_run_abolish_test$2F1_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_run_abolish_test$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_run_abolish_test$2F1_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_run_abolish_test$2F1_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test_abolish$2F0_α
proc_test_abolish$2F0_α:
                        .global          proc_test_abolish$2F0_α
                        .global          proc_test_abolish$2F0_β
                        .global          proc_test_abolish$2F0_γ
                        .global          proc_test_abolish$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_test_abolish$2F0_α_body:
                        lea              rax, [rip + n376_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n369_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx377_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx377_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx377_101
.Lx377_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx377_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_test_abolish$2F0_ω
                                                                                        jmp   n370_lit_string_α
n369_op11_β:
                                                                                        jmp   proc_test_abolish$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx378_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n371_lit_string_α
.Lx378_0:
                        .quad            .Lx378_0_s
.Lx378_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n372_lit_string_α
.Lx379_0:
                        .quad            .Lx379_0_s
.Lx379_0_s:
                        .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n373_op11_α
.Lx380_0:
                        .quad            .Lx380_0_s
.Lx380_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n373_op11_α:
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
                                                                                        je    n375_op11_α
                                                                                        jmp   n374_call_proc_staged_α
n373_op11_β:
                                                                                        jmp   n375_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n374_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx383_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx383_21
.Lx383_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx383_21:
                        mov              rdi, qword ptr [rip + .Lx383_0]
                        mov              esi, 1
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n375_op11_α
                                                                                        jmp   n376_suspend_α
n374_call_proc_staged_β:
                                                                                        jmp   n375_op11_α
.Lx383_0:
                        .quad            .Lx383_0_s
.Lx383_0_s:
                        .string          "run_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
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
                                                                                        je    proc_test_abolish$2F0_ω
                                                                                        jmp   proc_test_abolish$2F0_ω
n375_op11_β:
                                                                                        jmp   proc_test_abolish$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n376_suspend_α:
                        lea              rax, [rip + n376_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test_abolish$2F0_γ
n376_suspend_β:
                                                                                        jmp   n374_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_test_abolish$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test_abolish$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_test_abolish$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_test_abolish$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_test_abolish$2F0_ω:
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
                        lea              rax, [rip + n390_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n387_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx392_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx392_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx392_101
.Lx392_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx392_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_2$2F0_ω
                                                                                        jmp   n388_lit_string_α
n387_op11_β:
                                                                                        jmp   proc_pj_dir_2$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx393_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n389_call_proc_staged_α
.Lx393_0:
                        .quad            .Lx393_0_s
.Lx393_0_s:
                        .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n389_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx395_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx395_21
.Lx395_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx395_21:
                        mov              rdi, qword ptr [rip + .Lx395_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx395_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx395_3]
                        lea              rdx, [rip + .Lx395_4]
                                                                                        jmp   rax
.Lx395_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx395_2
.Lx395_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx395_2
.Lx395_1:
                        call             rt_faildescr@PLT
.Lx395_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n391_op11_α
                                                                                        jmp   n390_suspend_α
n389_call_proc_staged_β:
                                                                                        jmp   n391_op11_α
.Lx395_0:
                        .quad            .Lx395_0_s
.Lx395_0_s:
                        .string          "begin_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n390_suspend_α:
                        lea              rax, [rip + n390_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_2$2F0_γ
n390_suspend_β:
                                                                                        jmp   n389_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n391_op11_α:
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
n391_op11_β:
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
                        lea              rax, [rip + n410_suspend_β]
                        mov              qword ptr [rbp + 400], rax
#-----------------------------------------------------------------------------------------------------------------------
n399_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx411_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx411_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx411_101
.Lx411_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx411_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n400_lit_string_α
n399_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 144], 1
                        mov              rax, qword ptr [rip + .Lx412_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n401_lit_string_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "test_abolish"
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n402_lit_string_α
.Lx413_0:
                        .quad            .Lx413_0_s
.Lx413_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n403_lit_string_α
.Lx414_0:
                        .quad            .Lx414_0_s
.Lx414_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n404_lit_integer_α
.Lx415_0:
                        .quad            .Lx415_0_s
.Lx415_0_s:
                        .string          "test_abolish"
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx416_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n405_op11_α
.Lx416_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n405_op11_α:
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
                                                                                        jmp   n406_lit_string_α
n405_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n407_op11_α
.Lx418_0:
                        .quad            .Lx418_0_s
.Lx418_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n407_op11_α:
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
                                                                                        je    n409_op11_α
                                                                                        jmp   n408_call_proc_staged_α
n407_op11_β:
                                                                                        jmp   n409_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx421_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx421_21
.Lx421_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx421_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx421_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx421_23
.Lx421_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx421_23:
                        mov              rdi, qword ptr [rip + .Lx421_0]
                        mov              esi, 2
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx421_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx421_3]
                        lea              rdx, [rip + .Lx421_4]
                                                                                        jmp   rax
.Lx421_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx421_2
.Lx421_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx421_2
.Lx421_1:
                        call             rt_faildescr@PLT
.Lx421_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n409_op11_α
                                                                                        jmp   n410_suspend_α
n408_call_proc_staged_β:
                                                                                        jmp   n409_op11_α
.Lx421_0:
                        .quad            .Lx421_0_s
.Lx421_0_s:
                        .string          "module/2"
#-----------------------------------------------------------------------------------------------------------------------
n409_op11_α:
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
n409_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n410_suspend_α:
                        lea              rax, [rip + n410_suspend_β]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n410_suspend_β:
                                                                                        jmp   n408_call_proc_staged_β
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
                        lea              rax, [rip + n428_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx430_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx430_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx430_101
.Lx430_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx430_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_3$2F0_ω
                                                                                        jmp   n426_lit_string_α
n425_op11_β:
                                                                                        jmp   proc_pj_dir_3$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n427_call_proc_staged_α
.Lx431_0:
                        .quad            .Lx431_0_s
.Lx431_0_s:
                        .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n427_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx433_20
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx433_21
.Lx433_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        call             rt_arg_stage@PLT
.Lx433_21:
                        mov              rdi, qword ptr [rip + .Lx433_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx433_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx433_3]
                        lea              rdx, [rip + .Lx433_4]
                                                                                        jmp   rax
.Lx433_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx433_2
.Lx433_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx433_2
.Lx433_1:
                        call             rt_faildescr@PLT
.Lx433_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n429_op11_α
                                                                                        jmp   n428_suspend_α
n427_call_proc_staged_β:
                                                                                        jmp   n429_op11_α
.Lx433_0:
                        .quad            .Lx433_0_s
.Lx433_0_s:
                        .string          "end_tests/1"
#-----------------------------------------------------------------------------------------------------------------------
n428_suspend_α:
                        lea              rax, [rip + n428_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_3$2F0_γ
n428_suspend_β:
                                                                                        jmp   n427_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n429_op11_α:
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
n429_op11_β:
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
                        lea              rax, [rip + n443_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n437_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx444_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx444_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx444_101
.Lx444_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx444_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_1$2F0_ω
                                                                                        jmp   n438_lit_string_α
n437_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n439_lit_string_α
.Lx445_0:
                        .quad            .Lx445_0_s
.Lx445_0_s:
                        .string          "library"
#-----------------------------------------------------------------------------------------------------------------------
n439_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n440_op11_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "plunit"
#-----------------------------------------------------------------------------------------------------------------------
n440_op11_α:
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
                                                                                        je    n442_op11_α
                                                                                        jmp   n441_call_proc_staged_α
n440_op11_β:
                                                                                        jmp   n442_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx449_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx449_21
.Lx449_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx449_21:
                        mov              rdi, qword ptr [rip + .Lx449_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx449_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx449_3]
                        lea              rdx, [rip + .Lx449_4]
                                                                                        jmp   rax
.Lx449_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx449_2
.Lx449_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx449_2
.Lx449_1:
                        call             rt_faildescr@PLT
.Lx449_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n442_op11_α
                                                                                        jmp   n443_suspend_α
n441_call_proc_staged_β:
                                                                                        jmp   n442_op11_α
.Lx449_0:
                        .quad            .Lx449_0_s
.Lx449_0_s:
                        .string          "use_module/1"
#-----------------------------------------------------------------------------------------------------------------------
n442_op11_α:
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
n442_op11_β:
                                                                                        jmp   proc_pj_dir_1$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_suspend_α:
                        lea              rax, [rip + n443_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_1$2F0_γ
n443_suspend_β:
                                                                                        jmp   n441_call_proc_staged_β
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
                        .globl           proc_$xpto$230._dcl$2F4_α
proc_$xpto$230._dcl$2F4_α:
                        .global          proc_$xpto$230._dcl$2F4_α
                        .global          proc_$xpto$230._dcl$2F4_β
                        .global          proc_$xpto$230._dcl$2F4_γ
                        .global          proc_$xpto$230._dcl$2F4_ω
                        sub              rsp, 320
                        mov              [rsp + 296], rcx
                        mov              [rsp + 304], rdx
                        mov              [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 272
                        mov              edx, 288
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._dcl$2F4_α_body:
                        lea              rax, [rip + n459_suspend_β]
                        mov              qword ptr [rbp + 272], rax
#-----------------------------------------------------------------------------------------------------------------------
n453_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n454_var_ref_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n454_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n455_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n455_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n456_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n456_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n457_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n457_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n458_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 168], rax
                        mov              qword ptr [rbp + 176], 0
.Lx469_60:
                        .section         .rodata
.Lbynamegenfn186:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn186]
                        lea              rsi, [rbp + 96]
                        mov              edx, 5
                        lea              rcx, [rbp + 176]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._dcl$2F4_ω
                                                                                        jmp   n459_suspend_α
n458_call_builtin_gen_β:
                                                                                        jmp   .Lx469_60
#-----------------------------------------------------------------------------------------------------------------------
n459_suspend_α:
                        lea              rax, [rip + n459_suspend_β]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._dcl$2F4_γ
n459_suspend_β:
                                                                                        jmp   n458_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F4_β:
                                                                                        jmp   qword ptr [rbp + 272]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._dcl$2F4_res]
                        push             rax
                        mov              rax, [rbp + 296]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F4_ω:
                        mov              rax, [rbp + 304]
                        lea              rsp, [rbp + 320]
                        mov              rbp, [rbp + 312]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._dcl$2F6_α
proc_$xpto$230._dcl$2F6_α:
                        .global          proc_$xpto$230._dcl$2F6_α
                        .global          proc_$xpto$230._dcl$2F6_β
                        .global          proc_$xpto$230._dcl$2F6_γ
                        .global          proc_$xpto$230._dcl$2F6_ω
                        sub              rsp, 416
                        mov              [rsp + 392], rcx
                        mov              [rsp + 400], rdx
                        mov              [rsp + 408], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 384
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._dcl$2F6_α_body:
                        lea              rax, [rip + n480_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n473_var_ref_α
.Lx481_0:
                        .quad            .Lx481_0_s
.Lx481_0_s:
                        .string          "$xpto#0._dcl"
#-----------------------------------------------------------------------------------------------------------------------
n473_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n474_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n474_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n475_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n475_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n476_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n476_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n477_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n477_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n478_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n479_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 232], rax
                        mov              qword ptr [rbp + 240], 0
.Lx494_60:
                        .section         .rodata
.Lbynamegenfn195:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn195]
                        lea              rsi, [rbp + 128]
                        mov              edx, 7
                        lea              rcx, [rbp + 240]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._dcl$2F6_ω
                                                                                        jmp   n480_suspend_α
n479_call_builtin_gen_β:
                                                                                        jmp   .Lx494_60
#-----------------------------------------------------------------------------------------------------------------------
n480_suspend_α:
                        lea              rax, [rip + n480_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._dcl$2F6_γ
n480_suspend_β:
                                                                                        jmp   n479_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F6_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F6_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F6_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._dcl$2F6_res]
                        push             rax
                        mov              rax, [rbp + 392]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._dcl$2F6_ω:
                        mov              rax, [rbp + 400]
                        lea              rsp, [rbp + 416]
                        mov              rbp, [rbp + 408]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._def$2F3_α
proc_$xpto$230._def$2F3_α:
                        .global          proc_$xpto$230._def$2F3_α
                        .global          proc_$xpto$230._def$2F3_β
                        .global          proc_$xpto$230._def$2F3_γ
                        .global          proc_$xpto$230._def$2F3_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._def$2F3_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n498_var_ref_α
.Lx503_0:
                        .quad            .Lx503_0_s
.Lx503_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n498_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n499_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n500_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n501_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              qword ptr [rbp + 144], 0
.Lx510_60:
                        .section         .rodata
.Lbynamegenfn201:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn201]
                        lea              rsi, [rbp + 80]
                        mov              edx, 4
                        lea              rcx, [rbp + 144]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._def$2F3_ω
                                                                                        jmp   n502_suspend_α
n501_call_builtin_gen_β:
                                                                                        jmp   .Lx510_60
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._def$2F3_γ
n502_suspend_β:
                                                                                        jmp   n501_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F3_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._def$2F3_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F3_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._def$2F5_α
proc_$xpto$230._def$2F5_α:
                        .global          proc_$xpto$230._def$2F5_α
                        .global          proc_$xpto$230._def$2F5_β
                        .global          proc_$xpto$230._def$2F5_γ
                        .global          proc_$xpto$230._def$2F5_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._def$2F5_α_body:
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n513_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n514_var_ref_α
.Lx521_0:
                        .quad            .Lx521_0_s
.Lx521_0_s:
                        .string          "$xpto#0._def"
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n515_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n516_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n517_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n517_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n518_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n519_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 200], rax
                        mov              qword ptr [rbp + 208], 0
.Lx532_60:
                        .section         .rodata
.Lbynamegenfn209:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn209]
                        lea              rsi, [rbp + 112]
                        mov              edx, 6
                        lea              rcx, [rbp + 208]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._def$2F5_ω
                                                                                        jmp   n520_suspend_α
n519_call_builtin_gen_β:
                                                                                        jmp   .Lx532_60
#-----------------------------------------------------------------------------------------------------------------------
n520_suspend_α:
                        lea              rax, [rip + n520_suspend_β]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._def$2F5_γ
n520_suspend_β:
                                                                                        jmp   n519_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F5_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._def$2F5_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._def$2F5_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._super$2F5_α
proc_$xpto$230._super$2F5_α:
                        .global          proc_$xpto$230._super$2F5_α
                        .global          proc_$xpto$230._super$2F5_β
                        .global          proc_$xpto$230._super$2F5_γ
                        .global          proc_$xpto$230._super$2F5_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 320
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._super$2F5_α_body:
                        lea              rax, [rip + n542_suspend_β]
                        mov              qword ptr [rbp + 320], rax
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n536_var_ref_α
.Lx543_0:
                        .quad            .Lx543_0_s
.Lx543_0_s:
                        .string          "$xpto#0._super"
#-----------------------------------------------------------------------------------------------------------------------
n536_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n537_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n537_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n538_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n539_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n539_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n540_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n540_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n541_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n541_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 200], rax
                        mov              qword ptr [rbp + 208], 0
.Lx554_60:
                        .section         .rodata
.Lbynamegenfn217:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn217]
                        lea              rsi, [rbp + 112]
                        mov              edx, 6
                        lea              rcx, [rbp + 208]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._super$2F5_ω
                                                                                        jmp   n542_suspend_α
n541_call_builtin_gen_β:
                                                                                        jmp   .Lx554_60
#-----------------------------------------------------------------------------------------------------------------------
n542_suspend_α:
                        lea              rax, [rip + n542_suspend_β]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._super$2F5_γ
n542_suspend_β:
                                                                                        jmp   n541_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._super$2F5_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._super$2F5_β:
                                                                                        jmp   qword ptr [rbp + 320]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._super$2F5_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._super$2F5_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._super$2F5_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._ddcl$2F2_α
proc_$xpto$230._ddcl$2F2_α:
                        .global          proc_$xpto$230._ddcl$2F2_α
                        .global          proc_$xpto$230._ddcl$2F2_β
                        .global          proc_$xpto$230._ddcl$2F2_γ
                        .global          proc_$xpto$230._ddcl$2F2_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._ddcl$2F2_α_body:
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n557_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n558_var_ref_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "$xpto#0._ddcl"
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n559_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n559_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n560_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n560_call_builtin_gen_α:
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
.Lx567_60:
                        .section         .rodata
.Lbynamegenfn222:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn222]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._ddcl$2F2_ω
                                                                                        jmp   n561_suspend_α
n560_call_builtin_gen_β:
                                                                                        jmp   .Lx567_60
#-----------------------------------------------------------------------------------------------------------------------
n561_suspend_α:
                        lea              rax, [rip + n561_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._ddcl$2F2_γ
n561_suspend_β:
                                                                                        jmp   n560_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddcl$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddcl$2F2_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddcl$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._ddcl$2F2_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddcl$2F2_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._ddef$2F3_α
proc_$xpto$230._ddef$2F3_α:
                        .global          proc_$xpto$230._ddef$2F3_α
                        .global          proc_$xpto$230._ddef$2F3_β
                        .global          proc_$xpto$230._ddef$2F3_γ
                        .global          proc_$xpto$230._ddef$2F3_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._ddef$2F3_α_body:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n571_var_ref_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "$xpto#0._ddef"
#-----------------------------------------------------------------------------------------------------------------------
n571_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n572_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n573_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n574_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              qword ptr [rbp + 144], 0
.Lx583_60:
                        .section         .rodata
.Lbynamegenfn228:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn228]
                        lea              rsi, [rbp + 80]
                        mov              edx, 4
                        lea              rcx, [rbp + 144]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._ddef$2F3_ω
                                                                                        jmp   n575_suspend_α
n574_call_builtin_gen_β:
                                                                                        jmp   .Lx583_60
#-----------------------------------------------------------------------------------------------------------------------
n575_suspend_α:
                        lea              rax, [rip + n575_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._ddef$2F3_γ
n575_suspend_β:
                                                                                        jmp   n574_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddef$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddef$2F3_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddef$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._ddef$2F3_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._ddef$2F3_ω:
                        mov              rax, [rbp + 256]
                        lea              rsp, [rbp + 272]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$xpto$230._alias$2F3_α
proc_$xpto$230._alias$2F3_α:
                        .global          proc_$xpto$230._alias$2F3_α
                        .global          proc_$xpto$230._alias$2F3_β
                        .global          proc_$xpto$230._alias$2F3_γ
                        .global          proc_$xpto$230._alias$2F3_ω
                        sub              rsp, 272
                        mov              [rsp + 248], rcx
                        mov              [rsp + 256], rdx
                        mov              [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 224
                        mov              edx, 240
                        call             rt_jmp_frame_lexprep2@PLT
proc_$xpto$230._alias$2F3_α_body:
                        lea              rax, [rip + n591_suspend_β]
                        mov              qword ptr [rbp + 224], rax
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx592_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n587_var_ref_α
.Lx592_0:
                        .quad            .Lx592_0_s
.Lx592_0_s:
                        .string          "$xpto#0._alias"
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n588_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n588_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n589_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n589_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n590_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n590_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 136], rax
                        mov              qword ptr [rbp + 144], 0
.Lx599_60:
                        .section         .rodata
.Lbynamegenfn234:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn234]
                        lea              rsi, [rbp + 80]
                        mov              edx, 4
                        lea              rcx, [rbp + 144]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$xpto$230._alias$2F3_ω
                                                                                        jmp   n591_suspend_α
n590_call_builtin_gen_β:
                                                                                        jmp   .Lx599_60
#-----------------------------------------------------------------------------------------------------------------------
n591_suspend_α:
                        lea              rax, [rip + n591_suspend_β]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$xpto$230._alias$2F3_γ
n591_suspend_β:
                                                                                        jmp   n590_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._alias$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._alias$2F3_β:
                                                                                        jmp   qword ptr [rbp + 224]
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._alias$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$xpto$230._alias$2F3_res]
                        push             rax
                        mov              rax, [rbp + 248]
                        mov              rbp, [rbp + 264]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$xpto$230._alias$2F3_ω:
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
.Lstartup_pname1:       .string          "create_delete/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_create_delete$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3680
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_create_delete$2F0_dcα]
                        call             rt_proc_set_dcfn@PLT
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
                        mov              esi, 576
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_pj_test$2F4_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "between/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_between$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "run_abolish_test/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_run_abolish_test$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "test_abolish/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_test_abolish$2F0_α]
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
.Lstartup_pname8:       .string          "pj_dir_3/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_pj_dir_3$2F0_α]
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
.Lstartup_pname9:       .string          "pj_dir_1/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_1$2F0_α]
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
.Lstartup_pname10:      .string          "$xpto#0._dcl/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_$xpto$230._dcl$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 288
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "$xpto#0._dcl/6"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_$xpto$230._dcl$2F6_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 6
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 384
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "$xpto#0._def/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_$xpto$230._def$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 3
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
.Lstartup_pname13:      .string          "$xpto#0._def/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_$xpto$230._def$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "$xpto#0._super/5"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_$xpto$230._super$2F5_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 5
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "$xpto#0._ddcl/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_$xpto$230._ddcl$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname16:      .string          "$xpto#0._ddef/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname16]
                        lea              rsi, [rip + proc_$xpto$230._ddef$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 240
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname16]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname17:      .string          "$xpto#0._alias/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname17]
                        lea              rsi, [rip + proc_$xpto$230._alias$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname17]
                        mov              esi, 3
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
n602_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx604_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n603_call_proc_staged_α
.Lx604_0:
                        .quad            .Lx604_0_s
.Lx604_0_s:
                        .string          "abolish_cgc"
#-----------------------------------------------------------------------------------------------------------------------
n603_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx606_20
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx606_21
.Lx606_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        call             rt_arg_stage@PLT
.Lx606_21:
                        mov              rdi, qword ptr [rip + .Lx606_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx606_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx606_3]
                        lea              rdx, [rip + .Lx606_4]
                                                                                        jmp   rax
.Lx606_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx606_2
.Lx606_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx606_2
.Lx606_1:
                        call             rt_faildescr@PLT
.Lx606_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n603_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx606_0:
                        .quad            .Lx606_0_s
.Lx606_0_s:
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
