                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_op$2F3_α
proc_current_op$2F3_α:
                        .global          proc_current_op$2F3_α
                        .global          proc_current_op$2F3_β
                        .global          proc_current_op$2F3_γ
                        .global          proc_current_op$2F3_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 192
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_op$2F3_α_body:
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
.Lbynamegenfn4:         .string          "$current_op"
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
                                                                                        je    proc_current_op$2F3_ω
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
                                                                                        jmp   proc_current_op$2F3_γ
n4_suspend_β:
                                                                                        jmp   n3_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_op$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_op$2F3_β:
                                                                                        jmp   qword ptr [rbp + 192]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_op$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_op$2F3_res]
                        push             rax
                        mov              rax, [rbp + 216]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_op$2F3_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "current_op/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_current_op$2F3_α]
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
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        .section         .rodata
.Lopn0:                 .string          "==="
.Lopt0:                 .string          "xfx"
.Lopn1:                 .string          "likes"
.Lopt1:                 .string          "xfy"
.Lopn2:                 .string          "myp"
.Lopt2:                 .string          "fy"
.Lopn3:                 .string          "myq"
.Lopt3:                 .string          "yf"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lopn0]
                        mov              esi, 700
                        lea              rdx, [rip + .Lopt0]
                        call             prolog_op_table_add@PLT
                        lea              rdi, [rip + .Lopn1]
                        mov              esi, 200
                        lea              rdx, [rip + .Lopt1]
                        call             prolog_op_table_add@PLT
                        lea              rdi, [rip + .Lopn2]
                        mov              esi, 500
                        lea              rdx, [rip + .Lopt2]
                        call             prolog_op_table_add@PLT
                        lea              rdi, [rip + .Lopn3]
                        mov              esi, 400
                        lea              rdx, [rip + .Lopt3]
                        call             prolog_op_table_add@PLT
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
                        sub              rsp, 3016
                        mov              rdi, rsp
                        mov              ecx, 3016
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3008], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx106_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx106_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx106_101
.Lx106_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx106_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2992]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2976]
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n18_call_proc_staged_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "==="
#-----------------------------------------------------------------------------------------------------------------------
n18_call_proc_staged_α:
                        mov              qword ptr [rbp + 2768], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_20
                        mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx113_21
.Lx113_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        call             rt_arg_stage@PLT
.Lx113_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_22
                        mov              rax, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx113_23
.Lx113_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2816]
                        mov              rdx, qword ptr [rbp + 2824]
                        call             rt_arg_stage@PLT
.Lx113_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx113_24
                        mov              rax, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx113_25
.Lx113_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2832]
                        mov              rdx, qword ptr [rbp + 2840]
                        call             rt_arg_stage@PLT
.Lx113_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx113_1
                        lea              rcx, [rip + .Lx113_3]
                        lea              rdx, [rip + .Lx113_4]
                                                                                        jmp   rax
.Lx113_3:
                        mov              qword ptr [rbp + 2776], rsp
                        mov              rax, qword ptr [rbp + 2768]
                        test             rax, rax
                                                                                        jne   .Lx113_5
                        mov              qword ptr [rbp + 2768], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx113_2
.Lx113_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx113_2
.Lx113_4:
                        mov              rax, qword ptr [rbp + 2768]
                        test             rax, rax
                                                                                        jne   .Lx113_6
                        mov              qword ptr [rbp + 2768], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx113_2
.Lx113_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx113_2
.Lx113_1:
                        call             rt_faildescr@PLT
.Lx113_2:
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n20_lit_string_α
                                                                                        jmp   n19_lit_string_α
n18_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2776]
                                                                                        jmp   qword ptr [rsp]
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "current_op/3"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n21_lit_string_α
.Lx114_0:
                        .quad            .Lx114_0_s
.Lx114_0_s:
                        .string          "~w ~w~n"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n22_op11_α
.Lx115_0:
                        .quad            .Lx115_0_s
.Lx115_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n23_var_ref_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn118:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n24_lit_string_α
n22_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2992]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n27_op11_α
.Lx121_0:
                        .quad            .Lx121_0_s
.Lx121_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
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
n25_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n28_var_ref_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lrkfn125:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rbp + 2624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n29_var_ref_α
n27_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2976]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2960]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n32_op11_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2456], rax
                        lea              rdi, [rbp + 2416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n34_op11_α
n32_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n35_call_proc_staged_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "likes"
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2528]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n36_op11_α
n34_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α:
                        mov              qword ptr [rbp + 2224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx137_20
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx137_21
.Lx137_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        call             rt_arg_stage@PLT
.Lx137_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx137_22
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx137_23
.Lx137_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        call             rt_arg_stage@PLT
.Lx137_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx137_24
                        mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx137_25
.Lx137_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        call             rt_arg_stage@PLT
.Lx137_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx137_1
                        lea              rcx, [rip + .Lx137_3]
                        lea              rdx, [rip + .Lx137_4]
                                                                                        jmp   rax
.Lx137_3:
                        mov              qword ptr [rbp + 2232], rsp
                        mov              rax, qword ptr [rbp + 2224]
                        test             rax, rax
                                                                                        jne   .Lx137_5
                        mov              qword ptr [rbp + 2224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx137_2
.Lx137_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx137_2
.Lx137_4:
                        mov              rax, qword ptr [rbp + 2224]
                        test             rax, rax
                                                                                        jne   .Lx137_6
                        mov              qword ptr [rbp + 2224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx137_2
.Lx137_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx137_2
.Lx137_1:
                        call             rt_faildescr@PLT
.Lx137_2:
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n38_lit_string_α
                                                                                        jmp   n37_lit_string_α
n35_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 2232]
                                                                                        jmp   qword ptr [rsp]
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "current_op/3"
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn139:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 2320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n29_var_ref_α
n36_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1808], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n39_lit_string_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "~w ~w~n"
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 2144], 1
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n40_op11_α
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n41_var_ref_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn144:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn144]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n42_lit_string_α
n40_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2960]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n43_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n44_op11_α
.Lx147_0:
                        .quad            .Lx147_0_s
.Lx147_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 1936], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n45_var_ref_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn150:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n46_var_ref_α
n44_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2944]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2928]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n48_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 1824], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n49_op11_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n50_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1912], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n51_op11_α
n49_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n52_call_proc_staged_α
.Lx159_0:
                        .quad            .Lx159_0_s
.Lx159_0_s:
                        .string          "myp"
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n53_op11_α
n51_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        mov              qword ptr [rbp + 1680], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx162_20
                        mov              rax, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx162_21
.Lx162_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1712]
                        mov              rdx, qword ptr [rbp + 1720]
                        call             rt_arg_stage@PLT
.Lx162_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx162_22
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx162_23
.Lx162_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        call             rt_arg_stage@PLT
.Lx162_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx162_24
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx162_25
.Lx162_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        call             rt_arg_stage@PLT
.Lx162_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx162_1
                        lea              rcx, [rip + .Lx162_3]
                        lea              rdx, [rip + .Lx162_4]
                                                                                        jmp   rax
.Lx162_3:
                        mov              qword ptr [rbp + 1688], rsp
                        mov              rax, qword ptr [rbp + 1680]
                        test             rax, rax
                                                                                        jne   .Lx162_5
                        mov              qword ptr [rbp + 1680], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx162_2
.Lx162_4:
                        mov              rax, qword ptr [rbp + 1680]
                        test             rax, rax
                                                                                        jne   .Lx162_6
                        mov              qword ptr [rbp + 1680], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx162_2
.Lx162_1:
                        call             rt_faildescr@PLT
.Lx162_2:
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              eax, 99
                                                                                        je    n55_lit_string_α
                                                                                        jmp   n54_lit_string_α
n52_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1688]
                                                                                        jmp   qword ptr [rsp]
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "current_op/3"
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn164:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n46_var_ref_α
n53_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n56_lit_string_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "~w ~w~n"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 1600], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n57_op11_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n58_var_ref_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn169:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n59_lit_string_α
n57_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2928]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n61_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n62_var_ref_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn175:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n63_var_ref_α
n61_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2912]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n64_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n66_op11_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n68_op11_α
n66_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n69_call_proc_staged_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "myq"
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n70_op11_α
n68_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_proc_staged_α:
                        mov              qword ptr [rbp + 1136], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx187_20
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx187_21
.Lx187_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        call             rt_arg_stage@PLT
.Lx187_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx187_22
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx187_23
.Lx187_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_arg_stage@PLT
.Lx187_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx187_24
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx187_25
.Lx187_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        call             rt_arg_stage@PLT
.Lx187_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx187_1
                        lea              rcx, [rip + .Lx187_3]
                        lea              rdx, [rip + .Lx187_4]
                                                                                        jmp   rax
.Lx187_3:
                        mov              qword ptr [rbp + 1144], rsp
                        mov              rax, qword ptr [rbp + 1136]
                        test             rax, rax
                                                                                        jne   .Lx187_5
                        mov              qword ptr [rbp + 1136], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx187_2
.Lx187_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx187_2
.Lx187_4:
                        mov              rax, qword ptr [rbp + 1136]
                        test             rax, rax
                                                                                        jne   .Lx187_6
                        mov              qword ptr [rbp + 1136], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx187_2
.Lx187_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx187_2
.Lx187_1:
                        call             rt_faildescr@PLT
.Lx187_2:
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    n72_lit_string_α
                                                                                        jmp   n71_lit_string_α
n69_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1144]
                                                                                        jmp   qword ptr [rsp]
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "current_op/3"
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1256], rax
                        .section         .rodata
.Lrkfn189:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rbp + 1232]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n63_var_ref_α
n70_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n73_lit_string_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "~w ~w~n"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n74_op11_α
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n75_var_ref_α
.Lx192_0:
                        .quad            .Lx192_0_s
.Lx192_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn194:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n76_lit_string_α
n74_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n77_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n78_op11_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx198_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n79_var_ref_α
.Lx198_0:
                        .quad            .Lx198_0_s
.Lx198_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn200:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rbp + 992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n80_lit_integer_α
n78_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2880]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n82_lit_string_α
.Lx203_0:
                        .quad            700
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n83_op11_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n84_lit_string_α
.Lx205_0:
                        .quad            .Lx205_0_s
.Lx205_0_s:
                        .string          "xfx"
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n85_op11_α
n83_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n86_call_proc_staged_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "==="
#-----------------------------------------------------------------------------------------------------------------------
n85_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n87_op11_α
n85_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx210_21
.Lx210_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx210_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx210_23
.Lx210_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx210_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx210_24
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx210_25
.Lx210_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx210_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx210_1
                        lea              rcx, [rip + .Lx210_3]
                        lea              rdx, [rip + .Lx210_4]
                                                                                        jmp   rax
.Lx210_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx210_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx210_2
.Lx210_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx210_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx210_2
.Lx210_1:
                        call             rt_faildescr@PLT
.Lx210_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n89_lit_string_α
                                                                                        jmp   n88_lit_string_α
n86_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "current_op/3"
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn212:              .string          "$format2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n80_lit_integer_α
n87_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n90_op11_α
.Lx213_0:
                        .quad            .Lx213_0_s
.Lx213_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n91_op11_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n90_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn216:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n92_lit_string_α
n90_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n91_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn218:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n92_lit_string_α
n91_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx219_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n93_op11_α
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n93_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn221:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n94_var_ref_α
n93_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2848]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n96_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n97_call_proc_staged_α
.Lx226_0:
                        .quad            .Lx226_0_s
.Lx226_0_s:
                        .string          "nosuchop"
#-----------------------------------------------------------------------------------------------------------------------
n97_call_proc_staged_α:
                        mov              qword ptr [rbp + 304], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_20
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx228_21
.Lx228_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        call             rt_arg_stage@PLT
.Lx228_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_22
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx228_23
.Lx228_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx228_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx228_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx228_25
.Lx228_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx228_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx228_1
                        lea              rcx, [rip + .Lx228_3]
                        lea              rdx, [rip + .Lx228_4]
                                                                                        jmp   rax
.Lx228_3:
                        mov              qword ptr [rbp + 312], rsp
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx228_5
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx228_2
.Lx228_4:
                        mov              rax, qword ptr [rbp + 304]
                        test             rax, rax
                                                                                        jne   .Lx228_6
                        mov              qword ptr [rbp + 304], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx228_2
.Lx228_1:
                        call             rt_faildescr@PLT
.Lx228_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n99_lit_string_α
                                                                                        jmp   n98_lit_string_α
n97_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 312]
                                                                                        jmp   qword ptr [rsp]
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          "current_op/3"
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n100_op11_α
.Lx229_0:
                        .quad            .Lx229_0_s
.Lx229_0_s:
                        .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n101_op11_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn232:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n102_lit_string_α
n100_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn234:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n102_lit_string_α
n101_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n103_op11_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn237:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n104_move_label_α
n103_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_move_label_α:
                        lea              rax, [rip + n25_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n105_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n105_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n105_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3008]
                        add              rsp, 3016
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3008]
                        add              rsp, 3016
                        ret
                        .section         .note.GNU-stack,"",@progbits
