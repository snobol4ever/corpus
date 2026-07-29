                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_retract_loop$2F0_α
proc_retract_loop$2F0_α:
                        .global          proc_retract_loop$2F0_α
                        .global          proc_retract_loop$2F0_β
                        .global          proc_retract_loop$2F0_γ
                        .global          proc_retract_loop$2F0_ω
                        sub              rsp, 368
                        mov              [rsp + 344], rcx
                        mov              [rsp + 352], rdx
                        mov              [rsp + 360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 304
                        mov              edx, 336
                        call             rt_jmp_frame_lexprep2@PLT
proc_retract_loop$2F0_α_body:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 304], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx10_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx10_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx10_101
.Lx10_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx10_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_retract_loop$2F0_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   proc_retract_loop$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx11_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n2_var_ref_α
.Lx11_0:
                        .quad            .Lx11_0_s
.Lx11_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n3_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_op11_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn16:               .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn16]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n6_call_proc_staged_α
n4_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
                                                                                        je    proc_retract_loop$2F0_ω
                                                                                        jmp   n7_suspend_α
n5_op11_β:
                                                                                        jmp   proc_retract_loop$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              edi, 0
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx19_1
                        lea              rcx, [rip + .Lx19_3]
                        lea              rdx, [rip + .Lx19_4]
                                                                                        jmp   rax
.Lx19_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx19_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx19_2
.Lx19_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx19_2
.Lx19_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx19_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx19_2
.Lx19_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx19_2
.Lx19_1:
                        call             rt_faildescr@PLT
.Lx19_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n8_suspend_α
n6_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx19_0:
                        .quad            .Lx19_0_s
.Lx19_0_s:
                        .string          "retract_loop/0"
#-----------------------------------------------------------------------------------------------------------------------
n7_suspend_α:
                        lea              rax, [rip + n7_suspend_β]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_retract_loop$2F0_γ
n7_suspend_β:
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_suspend_α:
                        lea              rax, [rip + n8_suspend_β]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_retract_loop$2F0_γ
n8_suspend_β:
                                                                                        jmp   n6_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
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
                                                                                        je    proc_retract_loop$2F0_ω
                                                                                        jmp   proc_retract_loop$2F0_ω
n9_op11_β:
                                                                                        jmp   proc_retract_loop$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_retract_loop$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_retract_loop$2F0_β:
                                                                                        jmp   qword ptr [rbp + 304]
#-----------------------------------------------------------------------------------------------------------------------
proc_retract_loop$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_retract_loop$2F0_res]
                        push             rax
                        mov              rax, [rbp + 344]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_retract_loop$2F0_ω:
                        mov              rax, [rbp + 352]
                        lea              rsp, [rbp + 368]
                        mov              rbp, [rbp + 360]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_item$2F1_α
proc_item$2F1_α:
                        .global          proc_item$2F1_α
                        .global          proc_item$2F1_β
                        .global          proc_item$2F1_γ
                        .global          proc_item$2F1_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_item$2F1_α_body:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx29_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n26_var_ref_α
.Lx29_0:
                        .quad            .Lx29_0_s
.Lx29_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n27_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              qword ptr [rbp + 80], 0
.Lx32_60:
                        .section         .rodata
.Lbynamegenfn13:        .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn13]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        lea              rcx, [rbp + 80]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_item$2F1_ω
                                                                                        jmp   n28_suspend_α
n27_call_builtin_gen_β:
                                                                                        jmp   .Lx32_60
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_item$2F1_γ
n28_suspend_β:
                                                                                        jmp   n27_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_item$2F1_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_item$2F1_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "retract_loop/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_retract_loop$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 336
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "item/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_item$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 144
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
                        sub              rsp, 776
                        mov              rdi, rsp
                        mov              ecx, 776
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 768], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx60_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx60_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx60_101
.Lx60_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx60_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n36_lit_string_α
n35_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n37_lit_string_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n38_op11_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_op11_α
n38_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn65:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n41_lit_string_α
n39_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
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
n40_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n42_lit_string_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n43_op11_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
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
                                                                                        je    n40_op11_α
                                                                                        jmp   n44_op11_α
n43_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn71:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n45_lit_string_α
n44_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n46_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n47_op11_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n48_op11_α
n47_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lrkfn76:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n49_call_proc_staged_α
n48_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_proc_staged_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              edi, 0
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx78_1
                        lea              rcx, [rip + .Lx78_3]
                        lea              rdx, [rip + .Lx78_4]
                                                                                        jmp   rax
.Lx78_3:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx78_5
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx78_2
.Lx78_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx78_2
.Lx78_4:
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx78_6
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx78_2
.Lx78_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx78_2
.Lx78_1:
                        call             rt_faildescr@PLT
.Lx78_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n50_var_ref_α
n49_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 344]
                                                                                        jmp   qword ptr [rsp]
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "retract_loop/0"
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 752]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n51_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_proc_staged_α:
                        mov              qword ptr [rbp + 272], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx82_20
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx82_21
.Lx82_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx82_21:
                        mov              edi, 1
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx82_1
                        lea              rcx, [rip + .Lx82_3]
                        lea              rdx, [rip + .Lx82_4]
                                                                                        jmp   rax
.Lx82_3:
                        mov              qword ptr [rbp + 280], rsp
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx82_5
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx82_2
.Lx82_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx82_2
.Lx82_4:
                        mov              rax, qword ptr [rbp + 272]
                        test             rax, rax
                                                                                        jne   .Lx82_6
                        mov              qword ptr [rbp + 272], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx82_2
.Lx82_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx82_2
.Lx82_1:
                        call             rt_faildescr@PLT
.Lx82_2:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n53_lit_string_α
                                                                                        jmp   n52_lit_string_α
n51_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 280]
                                                                                        jmp   qword ptr [rsp]
.Lx82_0:
                        .quad            .Lx82_0_s
.Lx82_0_s:
                        .string          "item/1"
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n54_op11_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "notempty"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n55_op11_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "empty"
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn86:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n56_lit_string_α
n54_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n56_lit_string_α
n55_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n57_op11_α
.Lx89_0:
                        .quad            .Lx89_0_s
.Lx89_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n57_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn91:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n49_call_proc_staged_β
                                                                                        jmp   n58_move_label_α
n57_op11_β:
                                                                                        jmp   n49_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n58_move_label_α:
                        lea              rax, [rip + n49_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n59_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n59_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n59_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 768]
                        add              rsp, 776
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 768]
                        add              rsp, 776
                        ret
                        .section         .note.GNU-stack,"",@progbits
