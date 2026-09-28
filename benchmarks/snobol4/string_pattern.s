                        .intel_syntax    noprefix
                        .text
                        .file            1 "string_pattern.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -144], rax
                        mov              dword ptr [rbp + -152], 160
                        mov              dword ptr [rbp + -148], 152
                        mov              eax, 0
                        lea              rdi, [rbp + -136]
                        xor              eax, eax
                        mov              ecx, 136
                        rep              stosb
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_assign_save_bx, @function
n0_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_assign_save_bx, .-n0_match_assign_save_bx
                        .type            n1_match_break_bx, @function
n1_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        mov              r11, 2
                        movsxd           rcx, r14d
.Lmatch_break_α_14_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_14_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_break_α_14_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_14_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_14_0
.Lmatch_break_α_14_1:   mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r11, 2
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n1_match_break_bx, .-n1_match_break_bx
                        .type            n2_match_assign_cond_bx, @function
n2_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              r11, 3
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_lit_α
n2_match_assign_cond_β: mov              r11, 3
                        sub              r12, 24;                             jmp   n1_match_break_β
                        .size            n2_match_assign_cond_bx, .-n2_match_assign_cond_bx
                        .type            n3_match_lit_bx, @function
n3_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n2_match_assign_cond_β
                        add              r14d, 1;                             jmp   n4_match_assign_save_α
n3_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n2_match_assign_cond_β
                        .size            n3_match_lit_bx, .-n3_match_lit_bx
                        .type            n4_match_assign_save_bx, @function
n4_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_save_α: sub              rsp, 16
                        mov              r11, 5
                        mov              dword ptr [rsp + 0], r14d;           jmp   n5_match_break_α
n4_match_assign_save_β: mov              r11, 5
                        add              rsp, 16;                             jmp   n3_match_lit_β
                        .size            n4_match_assign_save_bx, .-n4_match_assign_save_bx
                        .type            n5_match_break_bx, @function
n5_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_break_α:       sub              rsp, 16
                        mov              r11, 6
                        movsxd           rcx, r14d
.Lmatch_break_α_22_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_22_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
.Lmatch_break_α_22_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_22_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_22_0
.Lmatch_break_α_22_1:   mov              dword ptr [rbp + -96], r14d
                        mov              r14d, ecx;                           jmp   n6_match_assign_cond_α
n5_match_break_β:       mov              r11, 6
                        mov              r14d, dword ptr [rbp + -96]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
                        .size            n5_match_break_bx, .-n5_match_break_bx
                        .type            n6_match_assign_cond_bx, @function
n6_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_cond_α: mov              r11, 7
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n7_match_lit_α
n6_match_assign_cond_β: mov              r11, 7
                        sub              r12, 24;                             jmp   n5_match_break_β
                        .size            n6_match_assign_cond_bx, .-n6_match_assign_cond_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n6_match_assign_cond_β
                        add              r14d, 1;                             jmp   n8_match_assign_save_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_assign_cond_β
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_assign_save_bx, @function
n8_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: sub              rsp, 16
                        mov              r11, 9
                        mov              dword ptr [rsp + 0], r14d;           jmp   n9_match_break_α
n8_match_assign_save_β: mov              r11, 9
                        add              rsp, 16;                             jmp   n7_match_lit_β
                        .size            n8_match_assign_save_bx, .-n8_match_assign_save_bx
                        .type            n9_match_break_bx, @function
n9_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:       sub              rsp, 16
                        mov              r11, 10
                        movsxd           rcx, r14d
.Lmatch_break_α_30_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_30_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lmatch_break_α_30_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_30_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_30_0
.Lmatch_break_α_30_1:   mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n10_match_assign_cond_α
n9_match_break_β:       mov              r11, 10
                        mov              r14d, dword ptr [rbp + -128]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
                        .size            n9_match_break_bx, .-n9_match_break_bx
                        .type            n10_match_assign_cond_bx, @function
n10_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
                        mov              r11, 11
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n10_match_assign_cond_β:
                        mov              r11, 11
                        sub              r12, 24;                             jmp   n9_match_break_β
                        .size            n10_match_assign_cond_bx, .-n10_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n10_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$0:
                        .quad            654181485914
                        .quad            17179869208
                        .quad            .Lgcmap_PAT$0_s
                        .quad            152
                        .quad            17
                        .quad            8804682956664
                        .quad            17600775978880
                        .quad            8808977923984
                        .quad            8804682956696
                        .quad            17600775978912
                        .quad            8808977924016
                        .quad            8804682956728
                        .quad            17600775978944
                        .quad            8808977924048
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcmap_PAT$0_s:        .string          "PAT$0"
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan0:                .string          "rec"
.Lgvan1:                .string          "pat"
.Lgvan2:                .string          "f1"
.Lgvan3:                .string          "f2"
.Lgvan4:                .string          "f3"
.Lgvan5:                .string          "i"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "loop"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 680], rax
                        mov              dword ptr [rsp + 672], 160
                        mov              dword ptr [rsp + 676], 688
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n33_call_bx, @function
n33_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             sub              rsp, 16
                        mov              r11, 12
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_92_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_call_α
.Lcall_α_92_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_call_α
n33_call_β:             mov              r11, 12
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n34_call_α
                        .size            n33_call_bx, .-n33_call_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 13
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_93_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_lit_integer_α
.Lcall_α_93_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n35_lit_integer_α
n34_call_β:             mov              r11, 13
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n35_lit_integer_α
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#=======================================================================================================================
#         rec = 'alpha,beta,gamma,delta,epsilon'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_lit_integer_α
.Llit_integer_α_94_0:   .quad            18446744073709551615
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_lit_string_α
.Llit_integer_α_95_0:   .quad            0
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_call_α
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "string_pattern.sno"
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             sub              rsp, 16
                        mov              r11, 17
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_α_rkfnzd98:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd98]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_97_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_stmt_mark_α
.Lcall_α_97_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n39_stmt_mark_α
n38_call_β:             mov              r11, 17
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n39_stmt_mark_α
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_stmt_mark_bx, @function
n39_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_stmt_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n40_statement_begin_α
                        .size            n39_stmt_mark_bx, .-n39_stmt_mark_bx
                        .type            n40_statement_begin_bx, @function
n40_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 19;                             jmp   n41_lit_string_α
n40_statement_begin_β:  mov              r11, 19;                             jmp   n44_stmt_mark_α
                        .size            n40_statement_begin_bx, .-n40_statement_begin_bx
                        .type            n41_lit_string_bx, @function
n41_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Llit_string_α_103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_assign_α
.Llit_string_α_103_0:   .quad            .Llit_string_α_103_0_s
.Llit_string_α_103_0_s: .string          "alpha,beta,gamma,delta,epsilon"
                        .size            n41_lit_string_bx, .-n41_lit_string_bx
                        .type            n42_assign_bx, @function
n42_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # rec
                        mov              qword ptr [r9 + 8], rdx;             jmp   n43_statement_end_α
                        .size            n42_assign_bx, .-n42_assign_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 22
                        add              rsp, 16;                             jmp   n44_stmt_mark_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_stmt_mark_bx, @function
n44_stmt_mark_bx:
#=======================================================================================================================
#         pat = BREAK(',') . f1 ',' BREAK(',') . f2 ',' BREAK(',') . f3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n44_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n45_statement_begin_α
                        .size            n44_stmt_mark_bx, .-n44_stmt_mark_bx
                        .type            n45_statement_begin_bx, @function
n45_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 24;                             jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 24;                             jmp   n50_stmt_mark_α
                        .size            n45_statement_begin_bx, .-n45_statement_begin_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_call_α
.Llit_string_α_111_0:   .quad            .Llit_string_α_111_0_s
.Llit_string_α_111_0_s: .string          "PAT$0"
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             sub              rsp, 16
                        mov              r11, 26
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd113:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd113]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_112_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
.Lcall_α_112_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n48_assign_α
n47_call_β:             mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pat
                        mov              qword ptr [r9 + 24], rdx;            jmp   n49_statement_end_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 28
                        add              rsp, 32;                             jmp   n50_stmt_mark_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_stmt_mark_bx, @function
n50_stmt_mark_bx:
#=======================================================================================================================
#         i = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n50_stmt_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n51_statement_begin_α
                        .size            n50_stmt_mark_bx, .-n50_stmt_mark_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 30;                             jmp   n52_lit_integer_α
n51_statement_begin_β:  mov              r11, 30;                             jmp   n55_stmt_mark_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Llit_integer_α_121_0:  .quad            1
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # i
                        mov              qword ptr [r9 + 88], rdx;            jmp   n54_statement_end_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 33
                        add              rsp, 16;                             jmp   n55_stmt_mark_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_stmt_mark_bx, @function
n55_stmt_mark_bx:
#=======================================================================================================================
# loop    rec ? pat
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n55_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n56_statement_begin_α
                        .size            n55_stmt_mark_bx, .-n55_stmt_mark_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 35;                             jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 35;                             jmp   n64_stmt_mark_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 36
                        mov              rax, qword ptr [r9 + 0]              # rec
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_var_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 16]             # pat
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_assign_α
n58_var_β:              mov              r11, 37;                             jmp   n63_statement_end_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_131_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n60_match_begin_α
n59_assign_β:           mov              r11, 38;                             jmp   n58_var_β
.Lassign_α_131_0:       .quad            .Lassign_α_131_0_s
.Lassign_α_131_0_s:     .string          "PATV$0"
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_match_begin_bx, @function
n60_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_match_begin_α:      mov              r11, 39
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 56
                        mov              rax, qword ptr [rip + Σ@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        mov              dword ptr [rbp + -88], 2
                        mov              dword ptr [rbp + -84], ecx
                        mov              qword ptr [rbp + -80], rax
                        neg              rax
                        mov              qword ptr [rbp + -72], rax
                        call             qword ptr [rip + rt_match_enter@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_133_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_133_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n61_match_defer_α
n60_match_begin_β:      mov              r11, 39
.Lmatch_begin_α_133_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_133_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_133_1
                                                                              jmp   .Lmatch_begin_α_133_0
.Lmatch_begin_β_133_1:
.Lmatch_begin_γ_60_af:  mov              r11, 39
.Lmatch_begin_ω_60_af:  mov              r11, 39
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n59_assign_β
                        .size            n60_match_begin_bx, .-n60_match_begin_bx
                        .type            n61_match_defer_bx, @function
n61_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_match_defer_α:      mov              r11, 40
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S3]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_134_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_134_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_134_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_134_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_134_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_134_23
                                                                              jmp   .Lmatch_defer_α_134_22
.Lmatch_defer_α_134_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_134_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_134_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_134_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_134_0
.Lmatch_defer_α_134_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_134_0
.Lmatch_defer_α_134_22: sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S3]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        test             rax, rax;                            je    .Lmatch_defer_α_134_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_134_50: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
.Lmatch_defer_α_134_23: test             rax, rax;                            jz    .Lmatch_defer_α_134_0
.Lmatch_defer_α_134_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_134_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_134_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_134_4:                                                        jmp   n62_match_end_α
.Lmatch_defer_α_134_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_60_af
                                                                              jmp   n60_match_begin_β
.Lmatch_defer_α_134_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_134_49
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_entry@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_134_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_134_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_134_2:  test             rax, rax;                            je    .Lmatch_defer_α_134_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_134_40
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_134_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_134_141
                        lea              rcx, [rip + .Lmatch_defer_α_134_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_134_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_134_42]
                        lea              rdx, [rip + .Lmatch_defer_α_134_43]; jmp   rax
.Lmatch_defer_α_134_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_134_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_134_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_134_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_134_46
.Lmatch_defer_α_134_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_134_47
.Lmatch_defer_α_134_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_134_46
.Lmatch_defer_α_134_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_134_47
.Lmatch_defer_α_134_141:
                        lea              rcx, [rip + .Lmatch_defer_α_134_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_134_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_134_142]
                        lea              rdx, [rip + .Lmatch_defer_α_134_143]
                                                                              jmp   rax
.Lmatch_defer_α_134_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_134_46
.Lmatch_defer_α_134_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_134_47
.Lmatch_defer_α_134_46: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_134_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_134_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_134_2
.Lmatch_defer_α_134_47: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 48
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], rax
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_134_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_134_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_134_2
.Lmatch_defer_α_134_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_134_48
.Lmatch_defer_α_134_3:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_134_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_60_af
                        test             eax, eax;                            js    n60_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_134_6]
                        push             rcx
                        push             rax;                                 jmp   n62_match_end_α
.Lmatch_defer_α_134_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n60_match_begin_β
n61_match_defer_β:      mov              r11, 40
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_134_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_134_12
                                                                              jmp   rax
.Lmatch_defer_β_134_12:                                                       jmp   qword ptr [rsp]
                        .size            n61_match_defer_bx, .-n61_match_defer_bx
                        .type            n62_match_end_bx, @function
n62_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_end_α:        mov              r11, 41
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_136_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_136_2
                        sub              rsp, 64
                        mov              qword ptr [rsp + 56], r12
                        mov              qword ptr [rsp + 48], rbx
                        mov              dword ptr [rsp + 32], 3
                        mov              dword ptr [rsp + 36], 0
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              rcx, rdx
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_end_α_136_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_136_120
                        lea              rcx, [rip + .Lmatch_end_α_136_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_136_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_136_21]
                        lea              rdx, [rip + .Lmatch_end_α_136_22];   jmp   rax
.Lmatch_end_α_136_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_136_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_136_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_136_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_136_8
.Lmatch_end_α_136_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_136_9
.Lmatch_end_α_136_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_136_8
.Lmatch_end_α_136_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_136_9
.Lmatch_end_α_136_120:  lea              rcx, [rip + .Lmatch_end_α_136_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_136_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_136_121]
                        lea              rdx, [rip + .Lmatch_end_α_136_122];  jmp   rax
.Lmatch_end_α_136_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_136_8
.Lmatch_end_α_136_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_136_9
.Lmatch_end_α_136_8:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_136_1
.Lmatch_end_α_136_9:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_136_1
.Lmatch_end_α_136_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_136_13
                                                                              jmp   .Lmatch_begin_ω_60_af
.Lmatch_end_α_136_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n63_statement_end_α
                        .size            n62_match_end_bx, .-n62_match_end_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 42
                        add              rsp, 32;                             jmp   n64_stmt_mark_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_stmt_mark_bx, @function
n64_stmt_mark_bx:
#=======================================================================================================================
#         i = LT(i, 1000) i + 1                           :S(loop)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n64_stmt_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n65_statement_begin_α
                        .size            n64_stmt_mark_bx, .-n64_stmt_mark_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 44;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 44;                             jmp   n76_stmt_mark_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 80]             # i
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_lit_integer_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_lit_integer_bx, @function
n67_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:      sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_coerce_numeric_α
n67_lit_integer_β:      mov              r11, 46
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
.Llit_integer_α_144_0:  .quad            1000
                        .size            n67_lit_integer_bx, .-n67_lit_integer_bx
                        .type            n68_coerce_numeric_bx, @function
n68_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_146_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_146_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_146_0
.Lcoerce_numeric_α_146_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_coerce_numeric_α
.Lcoerce_numeric_α_146_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n69_coerce_numeric_α
n68_coerce_numeric_β:   mov              r11, 47
                        add              rsp, 16;                             jmp   n67_lit_integer_β
                        .size            n68_coerce_numeric_bx, .-n68_coerce_numeric_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_148_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_148_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_148_0
.Lcoerce_numeric_α_148_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_cmp_test_α
.Lcoerce_numeric_α_148_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n70_cmp_test_α
n69_coerce_numeric_β:   mov              r11, 48
                        add              rsp, 16;                             jmp   n68_coerce_numeric_β
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_cmp_test_bx, @function
n70_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_cmp_test_α:         sub              rsp, 16
                        mov              r11, 49
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_150_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_150_239
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lcmp_test_α_150_239:                                                         jmp   n71_var_α
.Lcmp_test_α_150_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_150_240
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lcmp_test_α_150_240:                                                         jmp   n71_var_α
n70_cmp_test_β:         mov              r11, 49
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
                        .size            n70_cmp_test_bx, .-n70_cmp_test_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 80]             # i
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
n71_var_β:              mov              r11, 50
                        add              rsp, 16;                             jmp   n70_cmp_test_β
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      mov              r11, 51
                        add              rsp, 16;                             jmp   n71_var_β
.Llit_integer_α_152_0:  .quad            1
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 52
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_153_2
                        add              rax, 1;                              jo    .Lbinop_α_153_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_153_7
.Lbinop_α_153_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_153_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_153_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_153_4
.Lbinop_α_153_3:        movq             xmm0, rsi
.Lbinop_α_153_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_153_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_153_7:                                                              jmp   n74_assign_α
.Lbinop_α_153_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_153_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lbinop_α_153_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n74_assign_α
n73_binop_β:            mov              r11, 52
                        add              rsp, 16;                             jmp   n72_lit_integer_β
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_assign_bx, @function
n74_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # i
                        mov              qword ptr [r9 + 88], rdx;            jmp   n75_statement_end_α
                        .size            n74_assign_bx, .-n74_assign_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 54
                        add              rsp, 128;                            jmp   n55_stmt_mark_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_stmt_mark_bx, @function
n76_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'fields = ' f1 ' ' f2 ' ' f3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n76_stmt_mark_α:        mov              r11, 55
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n77_statement_begin_α
                        .size            n76_stmt_mark_bx, .-n76_stmt_mark_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 56;                             jmp   n78_lit_string_α
n77_statement_begin_β:  mov              r11, 56;                             jmp   main_γ
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_var_α
.Llit_string_α_161_0:   .quad            .Llit_string_α_161_0_s
.Llit_string_α_161_0_s: .string          "fields = "
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 32]             # f1
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_binop_α
n79_var_β:              mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n77_statement_begin_β
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_binop_bx, @function
n80_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
                        mov              r11, 59
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n81_lit_string_α
n80_binop_β:            mov              r11, 59
                        add              rsp, 16;                             jmp   n79_var_β
                        .size            n80_binop_bx, .-n80_binop_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_binop_α
n81_lit_string_β:       mov              r11, 60
                        add              rsp, 16;                             jmp   n80_binop_β
.Llit_string_α_164_0:   .quad            .Llit_string_α_164_0_s
.Llit_string_α_164_0_s: .string          " "
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_binop_bx, @function
n82_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:            sub              rsp, 16
                        mov              r11, 61
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n83_var_α
n82_binop_β:            mov              r11, 61
                        add              rsp, 16;                             jmp   n81_lit_string_β
                        .size            n82_binop_bx, .-n82_binop_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 48]             # f2
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_binop_α
n83_var_β:              mov              r11, 62
                        add              rsp, 16;                             jmp   n82_binop_β
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 63
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n85_lit_string_α
n84_binop_β:            mov              r11, 63
                        add              rsp, 16;                             jmp   n83_var_β
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_binop_α
n85_lit_string_β:       mov              r11, 64
                        add              rsp, 16;                             jmp   n84_binop_β
.Llit_string_α_168_0:   .quad            .Llit_string_α_168_0_s
.Llit_string_α_168_0_s: .string          " "
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_binop_bx, @function
n86_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              r11, 65
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n87_var_α
n86_binop_β:            mov              r11, 65
                        add              rsp, 16;                             jmp   n85_lit_string_β
                        .size            n86_binop_bx, .-n86_binop_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 64]             # f3
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_binop_α
n87_var_β:              mov              r11, 66
                        add              rsp, 16;                             jmp   n86_binop_β
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_binop_bx, @function
n88_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            sub              rsp, 16
                        mov              r11, 67
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n89_assign_α
n88_binop_β:            mov              r11, 67
                        add              rsp, 16;                             jmp   n87_var_β
                        .size            n88_binop_bx, .-n88_binop_bx
                        .type            n89_assign_bx, @function
n89_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_172_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n90_statement_end_α
.Lassign_α_172_0:       .quad            .Lassign_α_172_0_s
.Lassign_α_172_0_s:     .string          "OUTPUT"
                        .size            n89_assign_bx, .-n89_assign_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 69
                        add              rsp, 176;                            jmp   main_γ
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_goto_bx, @function
n91_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:             mov              r11, 70;                             jmp   n55_stmt_mark_α
n91_goto_β:             mov              r11, 70;                             jmp   main_ω
                        .size            n91_goto_bx, .-n91_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            2956283956570
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            672
                        .quad            5
                        .quad            123145302310912
                        .quad            8800387989616
                        .quad            17600775979128
                        .quad            79169132167304
                        .quad            510173395288272
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            2
                        .quad            .Lgcmap_PAT$0
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "f1"
.S1:                    .string          "f2"
.S2:                    .string          "f3"
.S3:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
