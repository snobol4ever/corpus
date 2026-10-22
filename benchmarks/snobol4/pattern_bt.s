                        .intel_syntax    noprefix
                        .text
                        .file            1 "pattern_bt.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp0_0:
.LTp0:
.LTp0_α_body:
                        cmp              r14d, r15d
                                                                              jge   .Lfg_none_0
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C0]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax
                                                                              jne   .Lfg_ok_0
.Lfg_fire_0:
.Lfg_none_0:
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
.Lfg_ok_0:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 104
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp0 qword ptr [rbp + -96]
                        movups           xmmword ptr [rbp + -88], xmm0
                        movups           xmmword ptr [rbp + -72], xmm0
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n0_match_alternate_bx, @function
n0_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   cmp              r14d, r15d;                          jge   .Lmatch_alternate_α_9_17
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        lea              rcx, [rip + .C0]
                        movzx            eax, byte ptr [rcx + rax]
                        test             eax, eax;                            je    .Lmatch_alternate_α_9_17
                        mov              dword ptr [rbp + -88], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_9_21]
                        mov              qword ptr [rbp + -72], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_α_9_21:
                        lea              rax, [rip + .Lmatch_alternate_α_9_22]
                        mov              qword ptr [rbp + -72], rax;          jmp   n6_match_lit_α
.Lmatch_alternate_α_9_22:
                        lea              rax, [rip + .Lmatch_alternate_α_9_23]
                        mov              qword ptr [rbp + -72], rax;          jmp   n5_match_lit_α
.Lmatch_alternate_α_9_23:
                        lea              rax, [rip + .Lmatch_alternate_α_9_19]
                        mov              qword ptr [rbp + -72], rax;          jmp   n4_match_lit_α
.Lmatch_alternate_γ_0_s0:
                        lea              rax, [rip + .Lmatch_alternate_α_9_40]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s1:
                        lea              rax, [rip + .Lmatch_alternate_α_9_41]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s2:
                        lea              rax, [rip + .Lmatch_alternate_α_9_42]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s3:
                        lea              rax, [rip + .Lmatch_alternate_α_9_43]
                        mov              qword ptr [rbp + -80], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_α_9_40:
                                                                              jmp   n7_match_lit_β
.Lmatch_alternate_α_9_41:
                                                                              jmp   n6_match_lit_β
.Lmatch_alternate_α_9_42:
                                                                              jmp   n5_match_lit_β
.Lmatch_alternate_α_9_43:
                                                                              jmp   n4_match_lit_β
.Lmatch_alternate_γ_0_as:
                                                                              jmp   n1_match_assign_save_α
n0_match_alternate_β:   mov              rax, qword ptr [rbp + -80];          jmp   rax
.Lmatch_alternate_γ_0_af:
.Lmatch_alternate_ω_0_af:
                        mov              r14d, dword ptr [rbp + -88]
                        mov              rax, qword ptr [rbp + -72];          jmp   rax
.Lmatch_alternate_α_9_19:
.Lmatch_alternate_α_9_17:
                                                                              jmp   .LTp0_ω
                        .size            n0_match_alternate_bx, .-n0_match_alternate_bx
                        .type            n1_match_assign_save_bx, @function
n1_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n2_match_span_α
n1_match_assign_save_β: add              rsp, 16;                             jmp   n0_match_alternate_β
                        .size            n1_match_assign_save_bx, .-n1_match_assign_save_bx
                        .type            n2_match_span_bx, @function
n2_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lmatch_span_α_13_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_13_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_13_0
.Lmatch_span_α_13_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_13_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
.Lmatch_span_α_13_999:  mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n3_match_assign_cond_α
n2_match_span_β:        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
                        .size            n2_match_span_bx, .-n2_match_span_bx
                        .type            n3_match_assign_cond_bx, @function
n3_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   .LTp0_γ
n3_match_assign_cond_β: sub              r12, 24;                             jmp   n2_match_span_β
                        .size            n3_match_assign_cond_bx, .-n3_match_assign_cond_bx
                        .type            n4_match_lit_bx, @function
n4_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s3
n4_match_lit_β:         sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n4_match_lit_bx, .-n4_match_lit_bx
                        .type            n5_match_lit_bx, @function
n5_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s2
n5_match_lit_β:         sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n5_match_lit_bx, .-n5_match_lit_bx
                        .type            n6_match_lit_bx, @function
n6_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s1
n6_match_lit_β:         sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n6_match_lit_bx, .-n6_match_lit_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s0
n7_match_lit_β:         sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n3_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_γ:
                        mov              rcx, qword ptr [rbp + 16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + 8]
                        push             rcx
                        lea              rax, [rip + .LTp0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_ω:
                        mov              r12, qword ptr [rbp + -40]
                        mov              rsp, rbp
                        pop              rbp
                        mov              rcx, qword ptr [rsp + 8]
                        add              rsp, 16;                             jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_.LTp0:
                        .quad            448023055706
                        .quad            17179869208
                        .quad            0
                        .quad            104
                        .quad            13
                        .quad            8804682956712
                        .quad            8813272891312
                        .quad            8813272891320
                        .quad            8804682956736
                        .quad            8804682956744
                        .quad            8804682956752
                        .quad            8804682956760
                        .quad            17596481011680
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_.LTp0_0:      .quad            0
                        .quad            .Lgcmap_.LTp0
                        .quad            9223389626893336584
                        .quad            .Lgccode_.LTp0_0
                        .popsection
                        .section         .data.rel.ro
                        .p2align         4
.Lthk_.LTp0:            .quad            .LTp0
                        .long            0, 1
                        .section         .text
                        .intel_syntax    noprefix
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
                        mov              edi, 746
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 746
                        call             gva_register@PLT
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
                        call             rt_label_table_install@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
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
                        lea              rdi, [rsp - 16]
                        call             rt_program_top_adopt@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan741:              .string          "pat"
.Lgvan742:              .string          "tail"
.Lgvan743:              .string          "subject"
.Lgvan744:              .string          "i"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gva_names:
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            .Lgvan741
                        .quad            .Lgvan742
                        .quad            .Lgvan743
                        .quad            .Lgvan744
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "loop"
.Llbln1:                .string          "END"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_1:
main_α:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 8]
main_α_body:
                        sub              rsp, 0
                        .type            n24_call_direct_bx, @function
n24_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_direct_α:      sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_fp_model_spitbol@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_73_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n25_call_direct_α
.Lcall_direct_α_73_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n25_call_direct_α
n24_call_direct_β:      add              rsp, 16
                        add              rsp, -16;                            jmp   n25_call_direct_α
                        .size            n24_call_direct_bx, .-n24_call_direct_bx
                        .type            n25_call_direct_bx, @function
n25_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_direct_α:      sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_quit_trap_320@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_74_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_α
.Lcall_direct_α_74_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n26_statement_begin_α
n25_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_α
                        .size            n25_call_direct_bx, .-n25_call_direct_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "pattern_bt.sno"
                        .popsection
.Lstatement_begin_α_75_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_75_stno
                        .long            1
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         pat = ('aaa' | 'bbb' | 'ccc' | 'ddd') SPAN('abcd') . tail
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n26_statement_begin_α:                                                        jmp   n27_lit_string_α
n26_statement_begin_β:                                                        jmp   n31_setexit_test_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_lit_string_bx, @function
n27_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_77_0: .quad .Lthk_.LTp0; .popsection
                        .size            n27_lit_string_bx, .-n27_lit_string_bx
                        .type            n28_call_direct_bx, @function
n28_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_direct_α:      sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_78_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
.Lcall_direct_α_78_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_assign_α
n28_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n26_statement_begin_β
                        .size            n28_call_direct_bx, .-n28_call_direct_bx
                        .type            n29_assign_bx, @function
n29_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # pat
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n30_statement_end_α
                        .size            n29_assign_bx, .-n29_assign_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    add              rsp, 32;                             jmp   n32_statement_begin_α
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_setexit_test_bx, @function
n31_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_82_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_82_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_82_61:
.Lsetexit_test_α_82_1:                                                        jmp   n32_statement_begin_α
                        .size            n31_setexit_test_bx, .-n31_setexit_test_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
.Lstatement_begin_α_83_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_83_stno
                        .long            2
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         subject = 'xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n32_statement_begin_α:                                                        jmp   n33_lit_string_α
n32_statement_begin_β:                                                        jmp   n36_setexit_test_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Llit_string_α_85_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_85_0: .quad .Llit_string_α_85_0_s; .popsection
.Llit_string_α_85_0_s:  .string          "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_assign_bx, @function
n34_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # subject
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n35_statement_end_α
                        .size            n34_assign_bx, .-n34_assign_bx
                        .type            n35_statement_end_bx, @function
n35_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    add              rsp, 16;                             jmp   n37_statement_begin_α
                        .size            n35_statement_end_bx, .-n35_statement_end_bx
                        .type            n36_setexit_test_bx, @function
n36_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_89_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_89_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_89_61:
.Lsetexit_test_α_89_1:                                                        jmp   n37_statement_begin_α
                        .size            n36_setexit_test_bx, .-n36_setexit_test_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
.Lstatement_begin_α_90_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_90_stno
                        .long            3
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         i = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n37_statement_begin_α:                                                        jmp   n38_lit_integer_α
n37_statement_begin_β:                                                        jmp   n41_setexit_test_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_assign_α
.Llit_integer_α_92_0:   .quad            1
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # i
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n40_statement_end_α
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    add              rsp, 16;                             jmp   n42_statement_begin_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_setexit_test_bx, @function
n41_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_96_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_96_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_96_61:
.Lsetexit_test_α_96_1:                                                        jmp   n42_statement_begin_α
                        .size            n41_setexit_test_bx, .-n41_setexit_test_bx
                        .type            n42_statement_begin_bx, @function
n42_statement_begin_bx:
.Lstatement_begin_α_97_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_97_stno
                        .long            4
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# loop    subject ? pat
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n42_statement_begin_α:                                                        jmp   n43_var_α
n42_statement_begin_β:                                                        jmp   n52_setexit_test_α
                        .size            n42_statement_begin_bx, .-n42_statement_begin_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # subject
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_var_bx, @function
n44_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # pat
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_lit_integer_α
n44_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n52_setexit_test_α
                        .size            n44_var_bx, .-n44_var_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_call_direct_α
n45_lit_integer_β:      add              rsp, 16;                             jmp   n44_var_β
.Llit_integer_α_101_0:  .quad            240
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_call_direct_bx, @function
n46_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_direct_α:      sub              rsp, 16
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        call             rt_sno_patck_d@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_102_999
                        add              rsp, 16;                             jmp   n45_lit_integer_β
.Lcall_direct_α_102_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_call_direct_β:      add              rsp, 16;                             jmp   n45_lit_integer_β
                        .size            n46_call_direct_bx, .-n46_call_direct_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n48_match_begin_α
n47_assign_β:           add              rsp, 16;                             jmp   n45_lit_integer_β
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_match_begin_bx, @function
n48_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_match_begin_α:      mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_12:       push             rbp
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
.Lgcsite_main_11:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_105_0
                        call             c_rt_match_enter@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_105_0: push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_105_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_105_1
.Lmatch_begin_α_105_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_105_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_105_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n49_match_defer_α
n48_match_begin_β:
.Lmatch_begin_α_105_13: mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_105_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_105_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_105_1
                                                                              jmp   .Lmatch_begin_α_105_0
.Lmatch_begin_α_105_1:
.Lmatch_begin_γ_48_af:
.Lmatch_begin_ω_48_af:  mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_8:        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n47_assign_β
                        .size            n48_match_begin_bx, .-n48_match_begin_bx
                        .type            n49_match_defer_bx, @function
n49_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_match_defer_α:      mov              rax, qword ptr [r9 + 11920]
                        mov              rdx, qword ptr [r9 + 11928]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_106_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_106_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11928];         jmp   .Lmatch_defer_α_106_10
.Lmatch_defer_α_106_9:  xor              eax, eax
.Lmatch_defer_α_106_10: test             rax, rax;                            jz    .Lmatch_defer_α_106_0
.Lmatch_defer_α_106_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_106_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_106_4:
.Lgcsite_main_33:                                                             jmp   n50_match_end_α
.Lmatch_defer_α_106_5:
.Lgcsite_main_32:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_48_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_48_af
                                                                              jmp   n48_match_begin_β
.Lmatch_defer_α_106_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11920]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_main_31:       cmp              rax, -1;                             jne   .Lmatch_defer_vd_106_2
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_106_2: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_106_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_106_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_106_2:  test             rax, rax;                            je    .Lmatch_defer_α_106_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_106_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_106_61
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_106_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_106_141
                        lea              rcx, [rip + .Lmatch_defer_α_106_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_42]
                        lea              rdx, [rip + .Lmatch_defer_α_106_43]; jmp   rax
.Lmatch_defer_α_106_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_106_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_106_44:
.Lgcsite_main_28:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_106_46
.Lmatch_defer_α_106_45:
.Lgcsite_main_27:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_106_47
.Lmatch_defer_α_106_42:
.Lgcsite_main_26:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_106_46
.Lmatch_defer_α_106_43:
.Lgcsite_main_25:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_106_47
.Lmatch_defer_α_106_141:
                        lea              rcx, [rip + .Lmatch_defer_α_106_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_142]
                        lea              rdx, [rip + .Lmatch_defer_α_106_143]
                                                                              jmp   rax
.Lmatch_defer_α_106_142:
.Lgcsite_main_24:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_106_46
.Lmatch_defer_α_106_143:
.Lgcsite_main_23:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_106_47
.Lmatch_defer_α_106_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_106_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_106_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_106_2
.Lmatch_defer_α_106_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_106_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_106_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_106_2
.Lmatch_defer_α_106_61: sub              rsp, 64
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
                        mov              rcx, qword ptr [rip + Σ@GOTPCREL]
                        mov              r13, qword ptr [rcx + 0]
                        mov              rcx, qword ptr [rip + Σlen@GOTPCREL]
                        mov              r15d, dword ptr [rcx + 0]
                        xor              ecx, ecx
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_106_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_106_62:
.Lgcsite_main_18:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_106_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_106_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_106_2
.Lmatch_defer_α_106_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_106_48
.Lmatch_defer_α_106_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_15:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_106_1
                        call             c_rt_defer_close@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_106_1: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_106_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_48_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_48_af
                        test             eax, eax;                            js    n48_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_106_6]
                        push             rcx
                        push             rax;                                 jmp   n50_match_end_α
.Lmatch_defer_α_106_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n48_match_begin_β
n49_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_106_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_106_12
                                                                              jmp   rax
.Lmatch_defer_β_106_12:                                                       jmp   qword ptr [rsp]
                        .size            n49_match_defer_bx, .-n49_match_defer_bx
                        .type            n50_match_end_bx, @function
n50_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_48_af
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
                        sub              rsp, 224
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              rcx, rsp
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
.Lgcsite_main_67:       push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_108_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_108_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_108_10
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_end_α_108_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_108_120
                        lea              rcx, [rip + .Lmatch_end_α_108_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_21]
                        lea              rdx, [rip + .Lmatch_end_α_108_22];   jmp   rax
.Lmatch_end_α_108_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_108_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_108_23:
.Lgcsite_main_65:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_8
.Lmatch_end_α_108_24:
.Lgcsite_main_64:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_9
.Lmatch_end_α_108_21:
.Lgcsite_main_63:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_8
.Lmatch_end_α_108_22:
.Lgcsite_main_62:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_9
.Lmatch_end_α_108_120:  lea              rcx, [rip + .Lmatch_end_α_108_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_121]
                        lea              rdx, [rip + .Lmatch_end_α_108_122];  jmp   rax
.Lmatch_end_α_108_121:
.Lgcsite_main_61:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_8
.Lmatch_end_α_108_122:
.Lgcsite_main_60:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_9
.Lmatch_end_α_108_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_108_1
.Lmatch_end_α_108_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_108_1
.Lmatch_end_α_108_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_108_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_108_61
                        sub              rsp, 16
                        mov              rcx, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rsp + 8], rcx
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
                        and              rcx, 63
                        cmp              rcx, 2;                              je    .Lmatch_end_α_108_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_108_140
                        lea              rcx, [rip + .Lmatch_end_α_108_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_41]
                        lea              rdx, [rip + .Lmatch_end_α_108_42];   jmp   rax
.Lmatch_end_α_108_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_108_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_108_43:
.Lgcsite_main_53:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_45
.Lmatch_end_α_108_44:
.Lgcsite_main_52:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_46
.Lmatch_end_α_108_41:
.Lgcsite_main_51:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_45
.Lmatch_end_α_108_42:
.Lgcsite_main_50:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_46
.Lmatch_end_α_108_140:  lea              rcx, [rip + .Lmatch_end_α_108_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_108_141]
                        lea              rdx, [rip + .Lmatch_end_α_108_142];  jmp   rax
.Lmatch_end_α_108_141:
.Lgcsite_main_49:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_45
.Lmatch_end_α_108_142:
.Lgcsite_main_48:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_108_46
.Lmatch_end_α_108_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_108_62
.Lmatch_end_α_108_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_45:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_44:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_108_62
.Lmatch_end_α_108_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:321
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_108_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:325
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_108_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_108_1
.Lmatch_end_α_108_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_37:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_108_13
                                                                              jmp   .Lmatch_begin_ω_48_af
.Lmatch_end_α_108_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_36:                                                             jmp   n51_statement_end_α
                        .size            n50_match_end_bx, .-n50_match_end_bx
                        .type            n51_statement_end_bx, @function
n51_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    add              rsp, 64;                             jmp   n53_statement_begin_α
                        .size            n51_statement_end_bx, .-n51_statement_end_bx
                        .type            n52_setexit_test_bx, @function
n52_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_111_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_111_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_111_61:
.Lsetexit_test_α_111_1:                                                       jmp   n53_statement_begin_α
                        .size            n52_setexit_test_bx, .-n52_setexit_test_bx
                        .type            n53_statement_begin_bx, @function
n53_statement_begin_bx:
.Lstatement_begin_α_112_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_112_stno
                        .long            5
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         i = LT(i, 1000) i + 1                           :S(loop)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n53_statement_begin_α:                                                        jmp   n54_var_α
n53_statement_begin_β:                                                        jmp   n64_setexit_test_α
                        .size            n53_statement_begin_bx, .-n53_statement_begin_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # i
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_lit_integer_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_coerce_numeric_α
n55_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Llit_integer_α_115_0:  .quad            1000
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_117_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_117_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_117_0
.Lcoerce_numeric_α_117_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_coerce_numeric_α
.Lcoerce_numeric_α_117_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_70:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_117_3
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_117_3:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_117_999
                        add              rsp, 16;                             jmp   n55_lit_integer_β
.Lcoerce_numeric_α_117_999:
                                                                              jmp   n57_coerce_numeric_α
n56_coerce_numeric_β:   add              rsp, 16;                             jmp   n55_lit_integer_β
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_119_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_119_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_119_0
.Lcoerce_numeric_α_119_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_cmp_test_α
.Lcoerce_numeric_α_119_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_73:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_119_4
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_72:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_119_4:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_119_999
                        add              rsp, 16;                             jmp   n56_coerce_numeric_β
.Lcoerce_numeric_α_119_999:
                                                                              jmp   n58_cmp_test_α
n57_coerce_numeric_β:   add              rsp, 16;                             jmp   n56_coerce_numeric_β
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_cmp_test_bx, @function
n58_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_121_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_121_998
                        add              rsp, 16;                             jmp   n57_coerce_numeric_β
.Lcmp_test_α_121_998:                                                         jmp   n59_var_α
.Lcmp_test_α_121_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_74:       test             eax, eax;                            js    .Lcmp_test_α_121_999
                        add              rsp, 16;                             jmp   n57_coerce_numeric_β
.Lcmp_test_α_121_999:                                                         jmp   n59_var_α
n58_cmp_test_β:         add              rsp, 16;                             jmp   n57_coerce_numeric_β
                        .size            n58_cmp_test_bx, .-n58_cmp_test_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # i
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_lit_integer_α
n59_var_β:              add              rsp, 16;                             jmp   n58_cmp_test_β
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_binop_α
n60_lit_integer_β:      add              rsp, 16;                             jmp   n59_var_β
.Llit_integer_α_123_0:  .quad            1
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_124_2
                        add              rax, 1;                              jo    .Lbinop_α_124_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_124_7
.Lbinop_α_124_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_124_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_124_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_124_4
.Lbinop_α_124_3:        movq             xmm0, rsi
.Lbinop_α_124_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_124_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_124_7:                                                              jmp   n62_assign_α
.Lbinop_α_124_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_124_999
                        add              rsp, 16;                             jmp   n60_lit_integer_β
.Lbinop_α_124_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n62_assign_α
n61_binop_β:            add              rsp, 16;                             jmp   n60_lit_integer_β
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # i
                        mov              qword ptr [r9 + 11912], rdx;         jmp   n63_statement_end_α
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    add              rsp, 128;                            jmp   n42_statement_begin_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_setexit_test_bx, @function
n64_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_128_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_128_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_128_61:
.Lsetexit_test_α_128_1:                                                       jmp   n65_statement_begin_α
                        .size            n64_setexit_test_bx, .-n64_setexit_test_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
.Lstatement_begin_α_129_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_129_stno
                        .long            6
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT = 'captured tail = ' tail
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n65_statement_begin_α:                                                        jmp   n66_lit_string_α
n65_statement_begin_β:                                                        jmp   n71_setexit_test_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_131_0: .quad .Llit_string_α_131_0_s; .popsection
.Llit_string_α_131_0_s: .string          "captured tail = "
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # tail
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_binop_α
n67_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_binop_bx, @function
n68_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_79:       cmp              al, 255;                             jne   .Lbinop_vd_133_5
                        call             c_sno_concat_d@PLT
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_133_5:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_133_999
                        add              rsp, 16;                             jmp   n67_var_β
.Lbinop_α_133_999:                                                            jmp   n69_assign_α
n68_binop_β:            add              rsp, 16;                             jmp   n67_var_β
                        .size            n68_binop_bx, .-n68_binop_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_134_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_81:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n70_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_134_0: .quad .Lassign_α_134_0_s; .popsection
.Lassign_α_134_0_s:     .string          "OUTPUT"
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    add              rsp, 48;                             jmp   main_γ
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_setexit_test_bx, @function
n71_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_137_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_137_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_137_61:
.Lsetexit_test_α_137_1:                                                       jmp   main_γ
                        .size            n71_setexit_test_bx, .-n71_setexit_test_bx
                        .type            n72_goto_bx, @function
n72_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_goto_α:                                                                   jmp   n42_statement_begin_α
n72_goto_β:                                                                   jmp   main_ω
                        .size            n72_goto_bx, .-n72_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_84:       push             rax                                  # gc_poll bb_glue_flat.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_82:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_85:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            70065933658
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            0
                        .quad            0
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_1:       .quad            86
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgccode_main_1
                        .quad            .Lgcsite_main_0-.Lgccode_main_1
                        .quad            68719476737
                        .quad            .Lgcsite_main_1-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_2-.Lgccode_main_1
                        .quad            137438953473
                        .quad            .Lgcsite_main_3-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_4-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_5-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_6-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_7-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_12-.Lgccode_main_1
                        .quad            274877906948
                        .quad            .Lgcsite_main_11-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_10-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_9-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_8-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_35-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_34-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_33-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_32-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_31-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_30-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_29-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_28-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_27-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_26-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_25-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_24-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_23-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_22-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_21-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_20-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_19-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_18-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_17-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_16-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_15-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_14-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_13-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_67-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_66-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_65-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_64-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_63-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_62-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_61-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_60-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_59-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_58-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_57-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_56-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_55-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_54-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_53-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_52-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_51-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_50-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_49-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_48-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_47-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_46-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_45-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_44-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_43-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_42-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_41-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_40-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_39-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_38-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_37-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_36-.Lgccode_main_1
                        .quad            274877906949
                        .quad            .Lgcsite_main_70-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_69-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_68-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_73-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_72-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_71-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_74-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_76-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_75-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_79-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_78-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_77-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_81-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_80-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_84-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_83-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_82-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_85-.Lgccode_main_1
                        .quad            1
                        .popsection
module_init:
                        sub              rsp, 8
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gc_frame_maps:        .quad            2
                        .quad            .Lgcmap_.LTp0
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            2
                        .quad            .Lgcsites_.LTp0_0
                        .quad            .Lgcsites_main_1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "tail"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
