                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stream_property$2F2_α
proc_stream_property$2F2_α:
                        .global          proc_stream_property$2F2_α
                        .global          proc_stream_property$2F2_β
                        .global          proc_stream_property$2F2_γ
                        .global          proc_stream_property$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_stream_property$2F2_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n1_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx8_60:
                        .section         .rodata
.Lbynamegenfn3:         .string          "$stream_property"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_stream_property$2F2_ω
                                                                                        jmp   n3_suspend_α
n2_call_builtin_gen_β:
                                                                                        jmp   .Lx8_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_stream_property$2F2_γ
n3_suspend_β:
                                                                                        jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_stream_property$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_stream_property$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "stream_property/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_stream_property$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
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
                        sub              rsp, 3480
                        mov              rdi, rsp
                        mov              ecx, 3480
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3472], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n12_lit_string_α
n11_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n13_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "/tmp/rung67_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n14_var_ref_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                                                                                        jmp   n15_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3368], rax
                        .section         .rodata
.Lrkfn135:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 3328]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n16_var_ref_α
n15_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
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
n17_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n19_lit_string_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 3216], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n20_op11_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n21_call_proc_staged_α
n20_op11_β:
                                                                                        jmp   n22_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 3168], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_20
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx143_21
.Lx143_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        call             rt_arg_stage@PLT
.Lx143_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx143_22
                        mov              rax, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx143_23
.Lx143_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3232]
                        mov              rdx, qword ptr [rbp + 3240]
                        call             rt_arg_stage@PLT
.Lx143_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx143_1
                        lea              rcx, [rip + .Lx143_3]
                        lea              rdx, [rip + .Lx143_4]
                                                                                        jmp   rax
.Lx143_3:
                        mov              qword ptr [rbp + 3176], rsp
                        mov              rax, qword ptr [rbp + 3168]
                        test             rax, rax
                                                                                        jne   .Lx143_5
                        mov              qword ptr [rbp + 3168], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx143_2
.Lx143_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx143_2
.Lx143_4:
                        mov              rax, qword ptr [rbp + 3168]
                        test             rax, rax
                                                                                        jne   .Lx143_6
                        mov              qword ptr [rbp + 3168], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx143_2
.Lx143_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx143_2
.Lx143_1:
                        call             rt_faildescr@PLT
.Lx143_2:
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    n22_lit_string_α
                                                                                        jmp   n23_lit_string_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 3176]
                                                                                        jmp   qword ptr [rsp]
.Lx143_0:
                        .quad            .Lx143_0_s
.Lx143_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 3104], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n24_op11_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "mode_write_bad"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 3056], 1
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n25_op11_α
.Lx145_0:
                        .quad            .Lx145_0_s
.Lx145_0_s:
                        .string          "mode_write_ok"
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3096], rax
                        .section         .rodata
.Lrkfn147:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 3088]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n26_lit_string_α
n24_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3048], rax
                        .section         .rodata
.Lrkfn149:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rbp + 3040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n26_lit_string_α
n25_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n27_op11_α
.Lx150_0:
                        .quad            .Lx150_0_s
.Lx150_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn152:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n28_var_ref_α
n27_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n30_call_proc_staged_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α:
                        mov              qword ptr [rbp + 2912], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_20
                        mov              rax, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx157_21
.Lx157_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2944]
                        mov              rdx, qword ptr [rbp + 2952]
                        call             rt_arg_stage@PLT
.Lx157_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx157_22
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx157_23
.Lx157_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        call             rt_arg_stage@PLT
.Lx157_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx157_1
                        lea              rcx, [rip + .Lx157_3]
                        lea              rdx, [rip + .Lx157_4]
                                                                                        jmp   rax
.Lx157_3:
                        mov              qword ptr [rbp + 2920], rsp
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx157_5
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx157_2
.Lx157_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx157_2
.Lx157_4:
                        mov              rax, qword ptr [rbp + 2912]
                        test             rax, rax
                                                                                        jne   .Lx157_6
                        mov              qword ptr [rbp + 2912], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx157_2
.Lx157_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx157_2
.Lx157_1:
                        call             rt_faildescr@PLT
.Lx157_2:
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n32_lit_string_α
                                                                                        jmp   n31_lit_string_α
n30_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2920]
                                                                                        jmp   qword ptr [rsp]
.Lx157_0:
                        .quad            .Lx157_0_s
.Lx157_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2800], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 2808], rax
                                                                                        jmp   n33_op11_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "is_output"
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n34_op11_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "not_output"
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2792], rax
                        .section         .rodata
.Lrkfn161:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 2784]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n35_lit_string_α
n33_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lrkfn163:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rbp + 2832]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n35_lit_string_α
n34_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n36_op11_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2744], rax
                        .section         .rodata
.Lrkfn166:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 2736]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n37_var_ref_α
n36_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n39_call_proc_staged_α
.Lx169_0:
                        .quad            .Lx169_0_s
.Lx169_0_s:
                        .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_proc_staged_α:
                        mov              qword ptr [rbp + 2656], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx171_20
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx171_21
.Lx171_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        call             rt_arg_stage@PLT
.Lx171_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx171_22
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx171_23
.Lx171_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        call             rt_arg_stage@PLT
.Lx171_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx171_1
                        lea              rcx, [rip + .Lx171_3]
                        lea              rdx, [rip + .Lx171_4]
                                                                                        jmp   rax
.Lx171_3:
                        mov              qword ptr [rbp + 2664], rsp
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx171_5
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx171_2
.Lx171_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx171_2
.Lx171_4:
                        mov              rax, qword ptr [rbp + 2656]
                        test             rax, rax
                                                                                        jne   .Lx171_6
                        mov              qword ptr [rbp + 2656], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx171_2
.Lx171_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx171_2
.Lx171_1:
                        call             rt_faildescr@PLT
.Lx171_2:
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n41_lit_string_α
                                                                                        jmp   n40_lit_string_α
n39_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2664]
                                                                                        jmp   qword ptr [rsp]
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n42_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "bug_input"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n43_op11_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "correctly_not_input"
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn175:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 2528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n44_lit_string_α
n42_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn177:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 2576]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n44_lit_string_α
n43_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 2496], 1
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n45_op11_α
.Lx178_0:
                        .quad            .Lx178_0_s
.Lx178_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn180:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn180]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n46_var_ref_α
n45_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx183_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n48_lit_string_α
.Lx183_0:
                        .quad            .Lx183_0_s
.Lx183_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n49_op11_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "text"
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n50_call_proc_staged_α
n49_op11_β:
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α:
                        mov              qword ptr [rbp + 2320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx187_20
                        mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx187_21
.Lx187_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        call             rt_arg_stage@PLT
.Lx187_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx187_22
                        mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx187_23
.Lx187_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        call             rt_arg_stage@PLT
.Lx187_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx187_1
                        lea              rcx, [rip + .Lx187_3]
                        lea              rdx, [rip + .Lx187_4]
                                                                                        jmp   rax
.Lx187_3:
                        mov              qword ptr [rbp + 2328], rsp
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx187_5
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx187_2
.Lx187_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx187_2
.Lx187_4:
                        mov              rax, qword ptr [rbp + 2320]
                        test             rax, rax
                                                                                        jne   .Lx187_6
                        mov              qword ptr [rbp + 2320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx187_2
.Lx187_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx187_2
.Lx187_1:
                        call             rt_faildescr@PLT
.Lx187_2:
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 99
                                                                                        je    n51_lit_string_α
                                                                                        jmp   n52_lit_string_α
n50_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2328]
                                                                                        jmp   qword ptr [rsp]
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 2256], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n53_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          "type_text_bad"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n54_op11_α
.Lx189_0:
                        .quad            .Lx189_0_s
.Lx189_0_s:
                        .string          "type_text_ok"
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lrkfn191:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n55_lit_string_α
n53_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                        .section         .rodata
.Lrkfn193:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n55_lit_string_α
n54_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 2160], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n56_op11_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lrkfn196:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n57_var_ref_α
n56_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n58_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n59_var_ref_α
.Lx199_0:
                        .quad            .Lx199_0_s
.Lx199_0_s:
                        .string          "file_name"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n62_lit_string_α
                                                                                        jmp   n61_call_proc_staged_α
n60_op11_β:
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_proc_staged_α:
                        mov              qword ptr [rbp + 1984], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_20
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx204_21
.Lx204_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        call             rt_arg_stage@PLT
.Lx204_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx204_22
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx204_23
.Lx204_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        call             rt_arg_stage@PLT
.Lx204_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx204_1
                        lea              rcx, [rip + .Lx204_3]
                        lea              rdx, [rip + .Lx204_4]
                                                                                        jmp   rax
.Lx204_3:
                        mov              qword ptr [rbp + 1992], rsp
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx204_5
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx204_2
.Lx204_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx204_2
.Lx204_4:
                        mov              rax, qword ptr [rbp + 1984]
                        test             rax, rax
                                                                                        jne   .Lx204_6
                        mov              qword ptr [rbp + 1984], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx204_2
.Lx204_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx204_2
.Lx204_1:
                        call             rt_faildescr@PLT
.Lx204_2:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n62_lit_string_α
                                                                                        jmp   n63_var_ref_α
n61_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1992]
                                                                                        jmp   qword ptr [rsp]
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1872], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n64_op11_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "no_file_name"
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n65_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 1856]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n66_lit_string_α
n64_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn211:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n61_call_proc_staged_β
                                                                                        jmp   n67_lit_string_α
n65_op11_β:
                                                                                        jmp   n61_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n68_op11_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n69_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "has_file_name"
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lrkfn215:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n70_var_ref_α
n68_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lrkfn217:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n66_lit_string_α
n69_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n71_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n72_lit_string_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1648], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n73_op11_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n74_call_proc_staged_α
n73_op11_β:
                                                                                        jmp   n75_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_proc_staged_α:
                        mov              qword ptr [rbp + 1600], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_20
                        mov              rax, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx224_21
.Lx224_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1632]
                        mov              rdx, qword ptr [rbp + 1640]
                        call             rt_arg_stage@PLT
.Lx224_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_22
                        mov              rax, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx224_23
.Lx224_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1664]
                        mov              rdx, qword ptr [rbp + 1672]
                        call             rt_arg_stage@PLT
.Lx224_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx224_1
                        lea              rcx, [rip + .Lx224_3]
                        lea              rdx, [rip + .Lx224_4]
                                                                                        jmp   rax
.Lx224_3:
                        mov              qword ptr [rbp + 1608], rsp
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax
                                                                                        jne   .Lx224_5
                        mov              qword ptr [rbp + 1600], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx224_2
.Lx224_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx224_2
.Lx224_4:
                        mov              rax, qword ptr [rbp + 1600]
                        test             rax, rax
                                                                                        jne   .Lx224_6
                        mov              qword ptr [rbp + 1600], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx224_2
.Lx224_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx224_2
.Lx224_1:
                        call             rt_faildescr@PLT
.Lx224_2:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n75_lit_string_α
                                                                                        jmp   n76_lit_string_α
n74_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1608]
                                                                                        jmp   qword ptr [rsp]
.Lx224_0:
                        .quad            .Lx224_0_s
.Lx224_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 1536], 1
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n77_op11_α
.Lx225_0:
                        .quad            .Lx225_0_s
.Lx225_0_s:
                        .string          "correctly_not_read"
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n78_op11_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "bug_read"
#-----------------------------------------------------------------------------------------------------------------------
n77_op11_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn228:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n79_lit_string_α
n77_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn230:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n79_lit_string_α
n78_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n80_op11_α
.Lx231_0:
                        .quad            .Lx231_0_s
.Lx231_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n80_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn233:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n81_var_α
n80_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n82_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n83_op11_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn238:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n84_var_ref_α
n83_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n85_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn242:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n86_lit_string_α
n85_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n87_lit_string_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          "/tmp/rung67_a.txt"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n88_var_ref_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn248:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n90_var_ref_α
n89_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n91_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n92_lit_string_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "mode"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n93_op11_α
.Lx252_0:
                        .quad            .Lx252_0_s
.Lx252_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n94_call_proc_staged_α
n93_op11_β:
                                                                                        jmp   n95_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_proc_staged_α:
                        mov              qword ptr [rbp + 1024], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx255_20
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx255_21
.Lx255_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx255_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx255_22
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx255_23
.Lx255_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        call             rt_arg_stage@PLT
.Lx255_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx255_1
                        lea              rcx, [rip + .Lx255_3]
                        lea              rdx, [rip + .Lx255_4]
                                                                                        jmp   rax
.Lx255_3:
                        mov              qword ptr [rbp + 1032], rsp
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx255_5
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx255_2
.Lx255_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx255_2
.Lx255_4:
                        mov              rax, qword ptr [rbp + 1024]
                        test             rax, rax
                                                                                        jne   .Lx255_6
                        mov              qword ptr [rbp + 1024], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx255_2
.Lx255_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx255_2
.Lx255_1:
                        call             rt_faildescr@PLT
.Lx255_2:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n95_lit_string_α
                                                                                        jmp   n96_lit_string_α
n94_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1032]
                                                                                        jmp   qword ptr [rsp]
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n97_op11_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "read_mode_bad"
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 912], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n98_op11_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "read_mode_ok"
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn259:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rbp + 944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n99_lit_string_α
n97_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn261:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n99_lit_string_α
n98_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n100_op11_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lrkfn264:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n101_var_ref_α
n100_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n102_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n103_call_proc_staged_α
.Lx267_0:
                        .quad            .Lx267_0_s
.Lx267_0_s:
                        .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_proc_staged_α:
                        mov              qword ptr [rbp + 768], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_20
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx269_21
.Lx269_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        call             rt_arg_stage@PLT
.Lx269_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_22
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx269_23
.Lx269_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        call             rt_arg_stage@PLT
.Lx269_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx269_1
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4]
                                                                                        jmp   rax
.Lx269_3:
                        mov              qword ptr [rbp + 776], rsp
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx269_5
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_4:
                        mov              rax, qword ptr [rbp + 768]
                        test             rax, rax
                                                                                        jne   .Lx269_6
                        mov              qword ptr [rbp + 768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_1:
                        call             rt_faildescr@PLT
.Lx269_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n104_lit_string_α
n103_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 776]
                                                                                        jmp   qword ptr [rsp]
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n106_op11_α
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "read_is_input"
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n107_op11_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          "read_not_input"
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn273:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n108_lit_string_α
n106_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn275:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n108_lit_string_α
n107_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n109_op11_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn278:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n110_var_ref_α
n109_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n112_lit_string_α
.Lx281_0:
                        .quad            .Lx281_0_s
.Lx281_0_s:
                        .string          "end_of_stream"
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n113_op11_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
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
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n114_call_proc_staged_α
n113_op11_β:
                                                                                        jmp   n115_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx285_21
.Lx285_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx285_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx285_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx285_23
.Lx285_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx285_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx285_1
                        lea              rcx, [rip + .Lx285_3]
                        lea              rdx, [rip + .Lx285_4]
                                                                                        jmp   rax
.Lx285_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx285_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx285_2
.Lx285_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx285_2
.Lx285_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx285_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx285_2
.Lx285_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx285_2
.Lx285_1:
                        call             rt_faildescr@PLT
.Lx285_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n115_lit_string_α
                                                                                        jmp   n116_lit_string_α
n114_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          "stream_property/2"
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n117_op11_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "eof_bad"
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n118_op11_α
.Lx287_0:
                        .quad            .Lx287_0_s
.Lx287_0_s:
                        .string          "nonempty_not_eof"
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn289:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn289]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n119_lit_string_α
n117_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn291:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n119_lit_string_α
n118_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n120_op11_α
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn294:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n121_var_ref_α
n120_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n122_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn298:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn298]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n123_lit_string_α
n122_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n124_op11_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n124_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn301:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn301]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n125_lit_string_α
n124_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n126_op11_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n126_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn304:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n17_op11_α
                                                                                        jmp   n127_move_label_α
n126_op11_β:
                                                                                        jmp   n17_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n127_move_label_α:
                        lea              rax, [rip + n17_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n128_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n128_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3472]
                        add              rsp, 3480
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3472]
                        add              rsp, 3480
                        ret
                        .section         .note.GNU-stack,"",@progbits
