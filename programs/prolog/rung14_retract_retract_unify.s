                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_age$2F2_α
proc_age$2F2_α:
                        .global          proc_age$2F2_α
                        .global          proc_age$2F2_β
                        .global          proc_age$2F2_γ
                        .global          proc_age$2F2_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_age$2F2_α_body:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx5_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n1_var_ref_α
.Lx5_0:
                        .quad            .Lx5_0_s
.Lx5_0_s:
                        .string          "age"
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n3_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_gen_α:
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
.Lx10_60:
                        .section         .rodata
.Lbynamegenfn4:         .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn4]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_age$2F2_ω
                                                                                        jmp   n4_suspend_α
n3_call_builtin_gen_β:
                                                                                        jmp   .Lx10_60
#-----------------------------------------------------------------------------------------------------------------------
n4_suspend_α:
                        lea              rax, [rip + n4_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_age$2F2_γ
n4_suspend_β:
                                                                                        jmp   n3_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_age$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_age$2F2_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_age$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_age$2F2_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_age$2F2_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "age/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_age$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 192
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
                        sub              rsp, 696
                        mov              rdi, rsp
                        mov              ecx, 696
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 688], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx36_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx36_101
.Lx36_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx36_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n14_lit_string_α
n13_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx37_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n15_lit_string_α
.Lx37_0:
                        .quad            .Lx37_0_s
.Lx37_0_s:
                        .string          "age"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx38_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n16_lit_integer_α
.Lx38_0:
                        .quad            .Lx38_0_s
.Lx38_0_s:
                        .string          "alice"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n17_op11_α
.Lx39_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n18_op11_α
n17_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn42:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn42]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n20_lit_string_α
n18_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
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
n19_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx44_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n21_lit_string_α
.Lx44_0:
                        .quad            .Lx44_0_s
.Lx44_0_s:
                        .string          "age"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n22_lit_integer_α
.Lx45_0:
                        .quad            .Lx45_0_s
.Lx45_0_s:
                        .string          "bob"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n23_op11_α
.Lx46_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n24_op11_α
n23_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn49:               .string          "$dyn_assertz"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn49]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n26_lit_string_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "age"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n27_var_ref_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "bob"
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
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
                                                                                        je    n19_op11_α
                                                                                        jmp   n29_op11_α
n28_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn56:               .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n30_var_α
n29_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn60:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn60]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n32_lit_string_α
n31_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n33_op11_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn63:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn63]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n19_op11_α
                                                                                        jmp   n34_move_label_α
n33_op11_β:
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_move_label_α:
                        lea              rax, [rip + n19_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n35_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n35_disjunction_α
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
