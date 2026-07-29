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
                        .globl           proc_color$2F1_α
proc_color$2F1_α:
                        .global          proc_color$2F1_α
                        .global          proc_color$2F1_β
                        .global          proc_color$2F1_γ
                        .global          proc_color$2F1_ω
                        sub              rsp, 496
                        mov              [rsp + 472], rcx
                        mov              [rsp + 480], rdx
                        mov              [rsp + 488], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 464
                        call             rt_jmp_frame_lexprep2@PLT
proc_color$2F1_α_body:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 448], rax
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx24_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx24_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx24_101
.Lx24_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx24_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_color$2F1_ω
                                                                                        jmp   n9_var_ref_α
n8_op11_β:
                                                                                        jmp   proc_color$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n10_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n11_op11_α
.Lx27_0:
                        .quad            .Lx27_0_s
.Lx27_0_s:
                        .string          "red"
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              rsi, qword ptr [rip + .Lx28_2]
                                                                                        jmp   .Lx28_3
.Lx28_2:
                        .quad            .Lx28_2_s
.Lx28_2_s:
                        .string          "red"
.Lx28_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n13_op11_α
                                                                                        jmp   n12_suspend_α
n11_op11_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_suspend_α:
                        lea              rax, [rip + n12_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_color$2F1_γ
n12_suspend_β:
                                                                                        jmp   n13_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    proc_color$2F1_ω
                                                                                        jmp   n14_var_ref_α
n13_op11_β:
                                                                                        jmp   proc_color$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx34_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n16_op11_α
.Lx34_0:
                        .quad            .Lx34_0_s
.Lx34_0_s:
                        .string          "green"
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx35_2]
                                                                                        jmp   .Lx35_3
.Lx35_2:
                        .quad            .Lx35_2_s
.Lx35_2_s:
                        .string          "green"
.Lx35_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n18_op11_α
                                                                                        jmp   n17_suspend_α
n16_op11_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_suspend_α:
                        lea              rax, [rip + n17_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_color$2F1_γ
n17_suspend_β:
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    proc_color$2F1_ω
                                                                                        jmp   n19_var_ref_α
n18_op11_β:
                                                                                        jmp   proc_color$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n21_op11_α
.Lx41_0:
                        .quad            .Lx41_0_s
.Lx41_0_s:
                        .string          "blue"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              rsi, qword ptr [rip + .Lx42_2]
                                                                                        jmp   .Lx42_3
.Lx42_2:
                        .quad            .Lx42_2_s
.Lx42_2_s:
                        .string          "blue"
.Lx42_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n23_op11_α
                                                                                        jmp   n22_suspend_α
n21_op11_β:
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_suspend_α:
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_color$2F1_γ
n22_suspend_β:
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
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
                                                                                        je    proc_color$2F1_ω
                                                                                        jmp   proc_color$2F1_ω
n23_op11_β:
                                                                                        jmp   proc_color$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_color$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_color$2F1_β:
                                                                                        jmp   qword ptr [rbp + 448]
#-----------------------------------------------------------------------------------------------------------------------
proc_color$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_color$2F1_res]
                        push             rax
                        mov              rax, [rbp + 472]
                        mov              rbp, [rbp + 488]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_color$2F1_ω:
                        mov              rax, [rbp + 480]
                        lea              rsp, [rbp + 496]
                        mov              rbp, [rbp + 488]
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
.Lstartup_pname1:       .string          "color/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_color$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
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
                        sub              rsp, 696
                        mov              rdi, rsp
                        mov              ecx, 696
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 688], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx67_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx67_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx67_101
.Lx67_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx67_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n47_var_ref_α
n46_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n48_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n49_var_ref_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "color"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n51_op11_α
n50_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx74_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx74_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_41
                        cmp              esi, 1
                                                                                        jne   .Lx74_55
                        mov              r8, rax
                                                                                        jmp   .Lx74_40
.Lx74_55:
                        cmp              esi, 2
                                                                                        jne   .Lx74_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx74_41
                        mov              r8, rax
                                                                                        jmp   .Lx74_40
.Lx74_56:
                        cmp              eax, 13
                                                                                        jne   .Lx74_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_41
                        cmp              rax, r8
                                                                                        je    .Lx74_41
                        mov              r8, rax
                                                                                        jmp   .Lx74_40
.Lx74_41:
                        lea              r9, [rbp + 512]
.Lx74_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx74_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_43
                        cmp              esi, 1
                                                                                        jne   .Lx74_57
                        mov              r9, rax
                                                                                        jmp   .Lx74_42
.Lx74_57:
                        cmp              esi, 2
                                                                                        jne   .Lx74_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx74_43
                        mov              r9, rax
                                                                                        jmp   .Lx74_42
.Lx74_58:
                        cmp              eax, 13
                                                                                        jne   .Lx74_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_43
                        cmp              rax, r9
                                                                                        je    .Lx74_43
                        mov              r9, rax
                                                                                        jmp   .Lx74_42
.Lx74_43:
                        cmp              r8, r9
                                                                                        je    .Lx74_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_44
                        cmp              eax, 99
                                                                                        je    .Lx74_44
                        cmp              eax, 13
                                                                                        jne   .Lx74_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx74_44
                                                                                        jmp   .Lx74_45
.Lx74_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_53
                        cmp              eax, 99
                                                                                        je    .Lx74_53
                        cmp              eax, 13
                                                                                        jne   .Lx74_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx74_53
                                                                                        jmp   .Lx74_46
.Lx74_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx74_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx74_53
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
                                                                                        jmp   .Lx74_51
.Lx74_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_47
                        cmp              eax, 99
                                                                                        je    .Lx74_47
                        cmp              eax, 13
                                                                                        jne   .Lx74_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx74_47
                                                                                        jmp   .Lx74_48
.Lx74_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx74_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx74_53
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
                                                                                        jmp   .Lx74_51
.Lx74_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx74_49
                        cmp              edx, 14
                                                                                        je    .Lx74_53
                                                                                        jmp   .Lx74_52
.Lx74_49:
                        cmp              edx, 14
                                                                                        je    .Lx74_52
                        cmp              ecx, 7
                                                                                        je    .Lx74_53
                        cmp              edx, 7
                                                                                        je    .Lx74_53
                        cmp              ecx, 6
                                                                                        jne   .Lx74_50
                        cmp              edx, 6
                                                                                        jne   .Lx74_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx74_51
                                                                                        jmp   .Lx74_52
.Lx74_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx74_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx74_53
.Lx74_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx74_54
.Lx74_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx74_54
.Lx74_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx74_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n53_op11_α
n51_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
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
n52_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        .section         .rodata
.Lrkfn77:               .string          "$findall_new"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rbp + 208]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n54_var_ref_α
n53_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n55_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx81_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx81_21
.Lx81_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx81_21:
                        mov              edi, 0
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx81_1
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4]
                                                                                        jmp   rax
.Lx81_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx81_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx81_2
.Lx81_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx81_2
.Lx81_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx81_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx81_2
.Lx81_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx81_2
.Lx81_1:
                        call             rt_faildescr@PLT
.Lx81_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n57_op11_α
                                                                                        jmp   n56_var_α
n55_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "$call/1"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn85:               .string          "$findall_result"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n59_var_ref_α
n57_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn87:               .string          "$findall_add"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rbp + 352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n55_call_proc_staged_β
n58_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx90_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx90_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_41
                        cmp              esi, 1
                                                                                        jne   .Lx90_55
                        mov              r8, rax
                                                                                        jmp   .Lx90_40
.Lx90_55:
                        cmp              esi, 2
                                                                                        jne   .Lx90_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx90_41
                        mov              r8, rax
                                                                                        jmp   .Lx90_40
.Lx90_56:
                        cmp              eax, 13
                                                                                        jne   .Lx90_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_41
                        cmp              rax, r8
                                                                                        je    .Lx90_41
                        mov              r8, rax
                                                                                        jmp   .Lx90_40
.Lx90_41:
                        lea              r9, [rbp + 304]
.Lx90_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx90_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_43
                        cmp              esi, 1
                                                                                        jne   .Lx90_57
                        mov              r9, rax
                                                                                        jmp   .Lx90_42
.Lx90_57:
                        cmp              esi, 2
                                                                                        jne   .Lx90_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx90_43
                        mov              r9, rax
                                                                                        jmp   .Lx90_42
.Lx90_58:
                        cmp              eax, 13
                                                                                        jne   .Lx90_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_43
                        cmp              rax, r9
                                                                                        je    .Lx90_43
                        mov              r9, rax
                                                                                        jmp   .Lx90_42
.Lx90_43:
                        cmp              r8, r9
                                                                                        je    .Lx90_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_44
                        cmp              eax, 99
                                                                                        je    .Lx90_44
                        cmp              eax, 13
                                                                                        jne   .Lx90_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx90_44
                                                                                        jmp   .Lx90_45
.Lx90_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_53
                        cmp              eax, 99
                                                                                        je    .Lx90_53
                        cmp              eax, 13
                                                                                        jne   .Lx90_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx90_53
                                                                                        jmp   .Lx90_46
.Lx90_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx90_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx90_53
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
                                                                                        jmp   .Lx90_51
.Lx90_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_47
                        cmp              eax, 99
                                                                                        je    .Lx90_47
                        cmp              eax, 13
                                                                                        jne   .Lx90_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx90_47
                                                                                        jmp   .Lx90_48
.Lx90_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx90_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx90_53
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
                                                                                        jmp   .Lx90_51
.Lx90_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx90_49
                        cmp              edx, 14
                                                                                        je    .Lx90_53
                                                                                        jmp   .Lx90_52
.Lx90_49:
                        cmp              edx, 14
                                                                                        je    .Lx90_52
                        cmp              ecx, 7
                                                                                        je    .Lx90_53
                        cmp              edx, 7
                                                                                        je    .Lx90_53
                        cmp              ecx, 6
                                                                                        jne   .Lx90_50
                        cmp              edx, 6
                                                                                        jne   .Lx90_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx90_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx90_51
                                                                                        jmp   .Lx90_52
.Lx90_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx90_53
.Lx90_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx90_54
.Lx90_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx90_54
.Lx90_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx90_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n61_var_α
n60_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn94:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn94]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n63_lit_string_α
n62_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n64_op11_α
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn97:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n65_move_label_α
n64_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_move_label_α:
                        lea              rax, [rip + n52_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n66_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n66_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n66_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 688]
                        add              rsp, 696
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 688]
                        add              rsp, 696
                        ret
                        .section         .note.GNU-stack,"",@progbits
