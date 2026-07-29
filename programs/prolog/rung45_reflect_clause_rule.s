                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$call$2F1_α
proc_$call$2F1_α:
                        .global          proc_$call$2F1_α
                        .global          proc_$call$2F1_β
                        .global          proc_$call$2F1_γ
                        .global          proc_$call$2F1_ω
                        sub              rsp, 144
                        mov              [rsp + 120], rcx
                        mov              [rsp + 128], rdx
                        mov              [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 96
                        mov              edx, 112
                        call             rt_jmp_frame_lexprep2@PLT
proc_$call$2F1_α_body:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n1_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        mov              qword ptr [rbp + 64], 0
.Lx5_60:
                        .section         .rodata
.Lbynamegenfn2:         .string          "$call"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn2]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        lea              rcx, [rbp + 64]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_$call$2F1_ω
                                                                                        jmp   n2_suspend_α
n1_call_builtin_gen_β:
                                                                                        jmp   .Lx5_60
#-----------------------------------------------------------------------------------------------------------------------
n2_suspend_α:
                        lea              rax, [rip + n2_suspend_β]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$call$2F1_γ
n2_suspend_β:
                                                                                        jmp   n1_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_β:
                                                                                        jmp   qword ptr [rbp + 96]
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$call$2F1_res]
                        push             rax
                        mov              rax, [rbp + 120]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$call$2F1_ω:
                        mov              rax, [rbp + 128]
                        lea              rsp, [rbp + 144]
                        mov              rbp, [rbp + 136]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_clause$2F2_α
proc_clause$2F2_α:
                        .global          proc_clause$2F2_α
                        .global          proc_clause$2F2_β
                        .global          proc_clause$2F2_γ
                        .global          proc_clause$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_clause$2F2_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n10_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx16_60:
                        .section         .rodata
.Lbynamegenfn6:         .string          "$clause"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn6]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_clause$2F2_ω
                                                                                        jmp   n11_suspend_α
n10_call_builtin_gen_β:
                                                                                        jmp   .Lx16_60
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_clause$2F2_γ
n11_suspend_β:
                                                                                        jmp   n10_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_clause$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_clause$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_greet$2F0_α
proc_greet$2F0_α:
                        .global          proc_greet$2F0_α
                        .global          proc_greet$2F0_β
                        .global          proc_greet$2F0_γ
                        .global          proc_greet$2F0_ω
                        sub              rsp, 128
                        mov              [rsp + 104], rcx
                        mov              [rsp + 112], rdx
                        mov              [rsp + 120], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 80
                        mov              edx, 96
                        call             rt_jmp_frame_lexprep2@PLT
proc_greet$2F0_α_body:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 80], rax
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx22_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n20_call_builtin_gen_α
.Lx22_0:
                        .quad            .Lx22_0_s
.Lx22_0_s:
                        .string          "greet"
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              qword ptr [rbp + 48], 0
.Lx23_60:
                        .section         .rodata
.Lbynamegenfn9:         .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn9]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        lea              rcx, [rbp + 48]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_greet$2F0_ω
                                                                                        jmp   n21_suspend_α
n20_call_builtin_gen_β:
                                                                                        jmp   .Lx23_60
#-----------------------------------------------------------------------------------------------------------------------
n21_suspend_α:
                        lea              rax, [rip + n21_suspend_β]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_greet$2F0_γ
n21_suspend_β:
                                                                                        jmp   n20_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_greet$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_greet$2F0_β:
                                                                                        jmp   qword ptr [rbp + 80]
#-----------------------------------------------------------------------------------------------------------------------
proc_greet$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_greet$2F0_res]
                        push             rax
                        mov              rax, [rbp + 104]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_greet$2F0_ω:
                        mov              rax, [rbp + 112]
                        lea              rsp, [rbp + 128]
                        mov              rbp, [rbp + 120]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "$call/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_$call$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 112
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "clause/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_clause$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "greet/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_greet$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 96
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
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
                        sub              rsp, 760
                        mov              rdi, rsp
                        mov              ecx, 760
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 752], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx49_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n27_lit_string_α
n26_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n28_lit_string_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          ":-"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n29_lit_string_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "greet"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx52_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n30_lit_string_α
.Lx52_0:
                        .quad            .Lx52_0_s
.Lx52_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n31_lit_string_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n32_op11_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n34_op11_α
.Lx56_0:
                        .quad            .Lx56_0_s
.Lx56_0_s:
                        .string          "nl"
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n35_op11_α
n34_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n36_op11_α
n35_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn60:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n38_lit_string_α
n36_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
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
n37_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n39_var_ref_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "greet"
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n40_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx66_21
.Lx66_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx66_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx66_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx66_23
.Lx66_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx66_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx66_1
                        lea              rcx, [rip + .Lx66_3]
                        lea              rdx, [rip + .Lx66_4]
                                                                                        jmp   rax
.Lx66_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx66_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx66_2
.Lx66_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx66_2
.Lx66_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx66_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx66_2
.Lx66_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx66_2
.Lx66_1:
                        call             rt_faildescr@PLT
.Lx66_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n42_lit_string_α
                                                                                        jmp   n41_var_ref_α
n40_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "clause/2"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 736]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n43_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n44_op11_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "noclause"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_proc_staged_α:
                        mov              qword ptr [rbp + 128], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx71_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx71_21
.Lx71_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx71_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx71_1
                        lea              rcx, [rip + .Lx71_3]
                        lea              rdx, [rip + .Lx71_4]
                                                                                        jmp   rax
.Lx71_3:
                        mov              qword ptr [rbp + 136], rsp
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx71_5
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx71_2
.Lx71_4:
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax
                                                                                        jne   .Lx71_6
                        mov              qword ptr [rbp + 128], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx71_2
.Lx71_1:
                        call             rt_faildescr@PLT
.Lx71_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n45_move_label_α
n43_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 136]
                                                                                        jmp   qword ptr [rsp]
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn73:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n46_lit_string_α
n44_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_move_label_α:
                        lea              rax, [rip + n37_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n48_op11_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n47_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn80:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n37_op11_α
                                                                                        jmp   n45_move_label_α
n48_op11_β:
                                                                                        jmp   n37_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 752]
                        add              rsp, 760
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 752]
                        add              rsp, 760
                        ret
                        .section         .note.GNU-stack,"",@progbits
