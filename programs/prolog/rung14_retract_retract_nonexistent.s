                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_ghost$2F1_α
proc_ghost$2F1_α:
                        .global          proc_ghost$2F1_α
                        .global          proc_ghost$2F1_β
                        .global          proc_ghost$2F1_γ
                        .global          proc_ghost$2F1_ω
                        sub              rsp, 176
                        mov              [rsp + 152], rcx
                        mov              [rsp + 160], rdx
                        mov              [rsp + 168], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 128
                        mov              edx, 144
                        call             rt_jmp_frame_lexprep2@PLT
proc_ghost$2F1_α_body:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 128], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 96], 1
                        mov              rax, qword ptr [rip + .Lx4_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n1_var_ref_α
.Lx4_0:
                        .quad            .Lx4_0_s
.Lx4_0_s:
                        .string          "ghost"
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n2_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              qword ptr [rbp + 80], 0
.Lx7_60:
                        .section         .rodata
.Lbynamegenfn3:         .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn3]
                        lea              rsi, [rbp + 48]
                        mov              edx, 2
                        lea              rcx, [rbp + 80]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_ghost$2F1_ω
                                                                                        jmp   n3_suspend_α
n2_call_builtin_gen_β:
                                                                                        jmp   .Lx7_60
#-----------------------------------------------------------------------------------------------------------------------
n3_suspend_α:
                        lea              rax, [rip + n3_suspend_β]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_ghost$2F1_γ
n3_suspend_β:
                                                                                        jmp   n2_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_ghost$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_ghost$2F1_β:
                                                                                        jmp   qword ptr [rbp + 128]
#-----------------------------------------------------------------------------------------------------------------------
proc_ghost$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_ghost$2F1_res]
                        push             rax
                        mov              rax, [rbp + 152]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_ghost$2F1_ω:
                        mov              rax, [rbp + 160]
                        lea              rsp, [rbp + 176]
                        mov              rbp, [rbp + 168]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "ghost/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_ghost$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 144
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
                        sub              rsp, 376
                        mov              rdi, rsp
                        mov              ecx, 376
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 368], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   n11_lit_string_α
n10_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n12_lit_string_α
.Lx25_0:
                        .quad            .Lx25_0_s
.Lx25_0_s:
                        .string          "ghost"
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n13_op11_α
.Lx26_0:
                        .quad            .Lx26_0_s
.Lx26_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n14_op11_α
n13_op11_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn29:               .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn29]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n15_lit_string_α
                                                                                        jmp   n16_lit_string_α
n14_op11_β:
                                                                                        jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx30_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n17_op11_α
.Lx30_0:
                        .quad            .Lx30_0_s
.Lx30_0_s:
                        .string          "notfound"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx31_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n18_op11_α
.Lx31_0:
                        .quad            .Lx31_0_s
.Lx31_0_s:
                        .string          "found"
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn33:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn33]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n19_lit_string_α
n17_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn35:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn35]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n19_lit_string_α
n18_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx36_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n21_op11_α
.Lx36_0:
                        .quad            .Lx36_0_s
.Lx36_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
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
n20_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn39:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn39]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n20_op11_α
                                                                                        jmp   n22_move_label_α
n21_op11_β:
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_move_label_α:
                        lea              rax, [rip + n20_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n23_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 368]
                        add              rsp, 376
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 368]
                        add              rsp, 376
                        ret
                        .section         .note.GNU-stack,"",@progbits
