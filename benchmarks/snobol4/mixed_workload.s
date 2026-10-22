                        .intel_syntax    noprefix
                        .text
                        .file            1 "mixed_workload.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_.LTp0_0:
.LTp0:
.LTp0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
                        xorps            xmm0, xmm0                           # GCANCHOR .Lgcmap_.LTp0 qword ptr [rbp + -64]
                        movups           xmmword ptr [rbp + -56], xmm0
                        xor              eax, eax
                        mov              qword ptr [rbp + -40], rax
                        mov              qword ptr [rbp + -32], 8
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -40], r12
                        .type            n0_match_assign_save_bx, @function
n0_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: add              rsp, 16;                             jmp   .LTp0_ω
                        .size            n0_match_assign_save_bx, .-n0_match_assign_save_bx
                        .type            n1_match_break_bx, @function
n1_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lmatch_break_α_7_0:    cmp              ecx, r15d;                           jl    .Lmatch_break_α_7_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   .LTp0_ω
.Lmatch_break_α_7_999:  movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_7_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_7_0
.Lmatch_break_α_7_1:    mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   .LTp0_ω
                        .size            n1_match_break_bx, .-n1_match_break_bx
                        .type            n2_match_assign_cond_bx, @function
n2_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_lit_α
n2_match_assign_cond_β: sub              r12, 24;                             jmp   n1_match_break_β
                        .size            n2_match_assign_cond_bx, .-n2_match_assign_cond_bx
                        .type            n3_match_lit_bx, @function
n3_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n2_match_assign_cond_β
                        add              r14d, 1;                             jmp   .LTp0_γ
n3_match_lit_β:         sub              r14d, 1;                             jmp   n2_match_assign_cond_β
                        .size            n3_match_lit_bx, .-n3_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
.LTp0_β:
                                                                              jmp   n3_match_lit_β
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
                        .quad            310584102234
                        .quad            17179869208
                        .quad            0
                        .quad            72
                        .quad            9
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
                        mov              edi, 753
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 753
                        call             gva_register@PLT
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 8
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
.Lgvan741:              .string          "rsum"
.Lgvan742:              .string          "n"
.Lgvan743:              .string          "field"
.Lgvan744:              .string          "word"
.Lgvan745:              .string          "grand"
.Lgvan746:              .string          "pass"
.Lgvan747:              .string          "tab"
.Lgvan748:              .string          "data"
.Lgvan749:              .string          "count"
.Lgvan750:              .string          "total"
.Lgvan751:              .string          "j"
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
                        .quad            .Lgvan745
                        .quad            .Lgvan746
                        .quad            .Lgvan747
                        .quad            .Lgvan748
                        .quad            .Lgvan749
                        .quad            .Lgvan750
                        .quad            .Lgvan751
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "rsum"
.Llbln1:                .string          "rsum_end"
.Llbln2:                .string          "record"
.Llbln3:                .string          "parse"
.Llbln4:                .string          "calc"
.Llbln5:                .string          "add"
.Llbln6:                .string          "next"
.Llbln7:                .string          "END"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .quad            .Llbln6
                        .quad            .Llbln7
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_1:
main_α:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 8]
main_α_body:
                        sub              rsp, 0
                        .type            n12_call_direct_bx, @function
n12_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_direct_α:      sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_168_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n13_call_direct_α
.Lcall_direct_α_168_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_call_direct_α
n12_call_direct_β:      add              rsp, 16
                        add              rsp, -16;                            jmp   n13_call_direct_α
                        .size            n12_call_direct_bx, .-n12_call_direct_bx
                        .type            n13_call_direct_bx, @function
n13_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_direct_α:      sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_169_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n14_statement_begin_α
.Lcall_direct_α_169_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n14_statement_begin_α
n13_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n14_statement_begin_α
                        .size            n13_call_direct_bx, .-n13_call_direct_bx
                        .type            n14_statement_begin_bx, @function
n14_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "mixed_workload.sno"
                        .popsection
.Lstatement_begin_α_170_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_170_stno
                        .long            1
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         DEFINE('rsum(n)')                               :(rsum_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n14_statement_begin_α:                                                        jmp   n15_define_α
n14_statement_begin_β:                                                        jmp   n17_setexit_test_α
                        .size            n14_statement_begin_bx, .-n14_statement_begin_bx
                        .type            n15_define_bx, @function
n15_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_define_α:           mov              rdi, qword ptr [rip + .Ldefine_α_173_0] # name
                        mov              rsi, qword ptr [rip + .Ldefine_α_173_1] # params_csv
                        mov              edx, 1                               # nparams
                        mov              ecx, 1                               # nformals
                        mov              r8d, 0                               # frame_bytes
                        lea              r9, [rip + LBL__rsum]                # fn
                        call             rt_define_site@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_define.cpp:160
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_173_0]
                        lea              rsi, [rip + rsum_α]
                        call             bb_ab_seal_alpha@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .data
                        .align           8
entry_cell$rsum:        .quad            LBL__rsum
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__rsum]
                        mov              rcx, qword ptr [rip + entry_cell$rsum@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n16_statement_end_α
n15_define_β:                                                                 jmp   n14_statement_begin_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_173_0: .quad .Ldefine_α_173_0_s; .popsection
.Ldefine_α_173_0_s:     .string          "rsum"
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_173_1: .quad .Ldefine_α_173_1_s; .popsection
.Ldefine_α_173_1_s:     .string          "n"
                                                                              jmp   .Ldefine_α_174_245
#-----------------------------------------------------------------------------------------------------------------------
rsum_α:                 sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 11856]          # rsum
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 11856], 0
                        mov              qword ptr [r9 + 11864], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_174_250
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 11872]          # n
                        mov              qword ptr [r9 + 11872], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 11880]
                        mov              qword ptr [r9 + 11880], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_174_251
.Ldefine_α_174_250:     mov              rax, qword ptr [r9 + 11872]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 11872], 0
                        mov              qword ptr [r9 + 11880], 0
.Ldefine_α_174_251:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 32], rax
                        pop              rcx;                                 jmp   .Ldefine_α_174_231
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_174_232: .quad .Ldefine_α_174_232_s; .popsection
.Ldefine_α_174_232_s:   .string          "rsum"
.Ldefine_α_174_231:     lea              rcx, [rip + rsum_γ]
                        lea              rax, [rip + rsum_ω]
                        push             rax
                        push             rcx
                        mov              rax, qword ptr [rip + entry_cell$rsum@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
rsum_γ:
.Lgcsite_main_7:        mov              rdi, qword ptr [r9 + 11856]          # rsum
                        mov              rsi, qword ptr [r9 + 11864]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rdx
                        push             rax;                                 jmp   .Ldefine_α_174_236
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_174_237: .quad .Ldefine_α_174_237_s; .popsection
.Ldefine_α_174_237_s:   .string          "rsum"
.Ldefine_α_174_236:     pop              rax
                        pop              rdx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 11856], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11864], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_174_257
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11872], rax          # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11880], rax;         jmp   .Ldefine_α_174_258
.Ldefine_α_174_257:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 11872], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 11880], rax
.Ldefine_α_174_258:     push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
rsum_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 11856], rax          # rsum
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11864], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_174_264
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11872], rax          # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11880], rax;         jmp   .Ldefine_α_174_265
.Ldefine_α_174_264:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 11872], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 11880], rax
.Ldefine_α_174_265:     push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rcx
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_174_245:
                        .size            n15_define_bx, .-n15_define_bx
                        .type            n16_statement_end_bx, @function
n16_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:                                                          jmp   n38_statement_begin_α
                        .size            n16_statement_end_bx, .-n16_statement_end_bx
                        .type            n17_setexit_test_bx, @function
n17_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_177_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_177_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_177_61:
.Lsetexit_test_α_177_1:                                                       jmp   n38_statement_begin_α
                        .size            n17_setexit_test_bx, .-n17_setexit_test_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
.Lstatement_begin_α_178_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_178_stno
                        .long            2
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# rsum    rsum = EQ(n, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
LBL__rsum:                                                                    jmp   n19_var_α
n18_statement_begin_β:                                                        jmp   n27_setexit_test_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_var_bx, @function
n19_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # n
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_lit_integer_α
                        .size            n19_var_bx, .-n19_var_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_coerce_numeric_α
n20_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Llit_integer_α_181_0:  .quad            0
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_coerce_numeric_bx, @function
n21_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_183_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_183_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_183_0
.Lcoerce_numeric_α_183_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_coerce_numeric_α
.Lcoerce_numeric_α_183_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_10:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_183_0
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_183_0:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_183_999
                        add              rsp, 16;                             jmp   n20_lit_integer_β
.Lcoerce_numeric_α_183_999:
                                                                              jmp   n22_coerce_numeric_α
n21_coerce_numeric_β:   add              rsp, 16;                             jmp   n20_lit_integer_β
                        .size            n21_coerce_numeric_bx, .-n21_coerce_numeric_bx
                        .type            n22_coerce_numeric_bx, @function
n22_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_185_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_185_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_185_0
.Lcoerce_numeric_α_185_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_cmp_test_α
.Lcoerce_numeric_α_185_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_13:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_185_1
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_185_1:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_185_999
                        add              rsp, 16;                             jmp   n21_coerce_numeric_β
.Lcoerce_numeric_α_185_999:
                                                                              jmp   n23_cmp_test_α
n22_coerce_numeric_β:   add              rsp, 16;                             jmp   n21_coerce_numeric_β
                        .size            n22_coerce_numeric_bx, .-n22_coerce_numeric_bx
                        .type            n23_cmp_test_bx, @function
n23_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_187_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lcmp_test_α_187_998
                        add              rsp, 16;                             jmp   n22_coerce_numeric_β
.Lcmp_test_α_187_998:                                                         jmp   n24_lit_integer_α
.Lcmp_test_α_187_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_14:       test             eax, eax;                            je    .Lcmp_test_α_187_999
                        add              rsp, 16;                             jmp   n22_coerce_numeric_β
.Lcmp_test_α_187_999:                                                         jmp   n24_lit_integer_α
n23_cmp_test_β:         add              rsp, 16;                             jmp   n22_coerce_numeric_β
                        .size            n23_cmp_test_bx, .-n23_cmp_test_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_188_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
n24_lit_integer_β:      add              rsp, 16;                             jmp   n23_cmp_test_β
.Llit_integer_α_188_0:  .quad            0
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # rsum
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n26_statement_end_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_statement_end_bx, @function
n26_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    add              rsp, 96;                             jmp   RETURN
                        .size            n26_statement_end_bx, .-n26_statement_end_bx
                        .type            n27_setexit_test_bx, @function
n27_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_192_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_192_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_192_61:
.Lsetexit_test_α_192_1:                                                       jmp   n28_statement_begin_α
                        .size            n27_setexit_test_bx, .-n27_setexit_test_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
.Lstatement_begin_α_193_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_193_stno
                        .long            3
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         rsum = n + rsum(n - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n28_statement_begin_α:                                                        jmp   n29_var_α
n28_statement_begin_β:                                                        jmp   n37_setexit_test_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_var_bx, @function
n29_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # n
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_var_α
                        .size            n29_var_bx, .-n29_var_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # n
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_lit_integer_α
n30_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_binop_α
n31_lit_integer_β:      add              rsp, 16;                             jmp   n30_var_β
.Llit_integer_α_197_0:  .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_binop_bx, @function
n32_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_198_2
                        sub              rax, 1;                              jo    .Lbinop_α_198_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_198_7
.Lbinop_α_198_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_198_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_198_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_198_4
.Lbinop_α_198_3:        movq             xmm0, rsi
.Lbinop_α_198_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_198_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_198_7:                                                              jmp   n33_call_α
.Lbinop_α_198_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_sub_sno@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_198_999
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lbinop_α_198_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n33_call_α
n32_binop_β:            add              rsp, 16;                             jmp   n31_lit_integer_β
                        .size            n32_binop_bx, .-n32_binop_bx
                        .type            n33_call_bx, @function
n33_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig200z]
                        mov              rax, [rip + alpha_cellp$rsum]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig200z: .quad 1
                        .quad            .Lcall_α_200_2
                        .quad            .Lcall_α_200_2
                        .quad            16; .popsection
.Lcall_α_200_2:
.Lgcsite_main_19:       mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_200_29
                        cmp              eax, 40;                             je    .Lcall_α_200_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_main_18:       mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        cmp              eax, 40;                             je    .Lcall_α_200_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_α_200_23
.Lcall_α_200_25:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_200_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_200_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_17:       mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_200_23
.Lcall_α_200_24:
.Lcall_α_200_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_200_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_200_999
                        add              rsp, 16;                             jmp   n32_binop_β
.Lcall_α_200_999:                                                             jmp   n34_binop_α
n33_call_β:             add              rsp, 16;                             jmp   n32_binop_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_200_0: .quad .Lcall_β_200_0_s; .popsection
.Lcall_β_200_0_s:       .string          "rsum"
                        .size            n33_call_bx, .-n33_call_bx
                        .type            n34_binop_bx, @function
n34_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_201_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_201_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_201_7
.Lbinop_α_201_2:        and              edx, 1;                              jz    .Lbinop_α_201_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_201_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_201_4
.Lbinop_α_201_3:        movq             xmm0, rsi
.Lbinop_α_201_4:        cmp              cl, 5;                               je    .Lbinop_α_201_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_201_6
.Lbinop_α_201_5:        movq             xmm1, rdi
.Lbinop_α_201_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_201_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_201_7:                                                              jmp   n35_assign_α
.Lbinop_α_201_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_201_999
                        add              rsp, 32;                             jmp   n32_binop_β
.Lbinop_α_201_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n35_assign_α
n34_binop_β:            add              rsp, 32;                             jmp   n32_binop_β
                        .size            n34_binop_bx, .-n34_binop_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # rsum
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n36_statement_end_α
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 96;                             jmp   RETURN
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_setexit_test_bx, @function
n37_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_205_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_205_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_205_61:
.Lsetexit_test_α_205_1:                                                       jmp   RETURN
                        .size            n37_setexit_test_bx, .-n37_setexit_test_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
.Lstatement_begin_α_206_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_206_stno
                        .long            4
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# rsum_end field = BREAK(',') . word ','
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n38_statement_begin_α:                                                        jmp   n39_lit_string_α
n38_statement_begin_β:                                                        jmp   n43_setexit_test_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_call_direct_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_208_0: .quad .Lthk_.LTp0; .popsection
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_call_direct_bx, @function
n40_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_direct_α:      sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        call             rt_sno_mkpat_d@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_direct_α_209_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Lcall_direct_α_209_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_assign_α
n40_call_direct_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
                        .size            n40_call_direct_bx, .-n40_call_direct_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # field
                        mov              qword ptr [r9 + 11896], rdx;         jmp   n42_statement_end_α
                        .size            n41_assign_bx, .-n41_assign_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    add              rsp, 32;                             jmp   n44_statement_begin_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_setexit_test_bx, @function
n43_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_213_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_213_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_213_61:
.Lsetexit_test_α_213_1:                                                       jmp   n44_statement_begin_α
                        .size            n43_setexit_test_bx, .-n43_setexit_test_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
.Lstatement_begin_α_214_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_214_stno
                        .long            5
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         grand = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n44_statement_begin_α:                                                        jmp   n45_lit_integer_α
n44_statement_begin_β:                                                        jmp   n48_setexit_test_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_assign_α
.Llit_integer_α_216_0:  .quad            0
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # grand
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n47_statement_end_α
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 16;                             jmp   n49_statement_begin_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_setexit_test_bx, @function
n48_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_220_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_220_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_220_61:
.Lsetexit_test_α_220_1:                                                       jmp   n49_statement_begin_α
                        .size            n48_setexit_test_bx, .-n48_setexit_test_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
.Lstatement_begin_α_221_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_221_stno
                        .long            6
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n49_statement_begin_α:                                                        jmp   n50_lit_integer_α
n49_statement_begin_β:                                                        jmp   n53_setexit_test_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Llit_integer_α_223_0:  .quad            1
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # pass
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n52_statement_end_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 16;                             jmp   n54_statement_begin_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_setexit_test_bx, @function
n53_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_227_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_227_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_227_61:
.Lsetexit_test_α_227_1:                                                       jmp   n54_statement_begin_α
                        .size            n53_setexit_test_bx, .-n53_setexit_test_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
.Lstatement_begin_α_228_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_228_stno
                        .long            7
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# record  tab = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n54_statement_begin_α:                                                        jmp   n55_lit_integer_α
n54_statement_begin_β:                                                        jmp   n59_setexit_test_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_call_byname_α
.Llit_integer_α_230_0:  .quad            16
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_call_byname_bx, @function
n56_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_byname_α:      sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd232: .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd232]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_25:       cmp              al, 255;                             jne   .Lcall_byname_vd_231_2
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_231_2: push             rax
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
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_231_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Lcall_byname_α_231_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_assign_α
n56_call_byname_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
                        .size            n56_call_byname_bx, .-n56_call_byname_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # tab
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n58_statement_end_α
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    add              rsp, 32;                             jmp   n60_statement_begin_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_setexit_test_bx, @function
n59_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_236_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_236_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_236_61:
.Lsetexit_test_α_236_1:                                                       jmp   n60_statement_begin_α
                        .size            n59_setexit_test_bx, .-n59_setexit_test_bx
                        .type            n60_statement_begin_bx, @function
n60_statement_begin_bx:
.Lstatement_begin_α_237_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_237_stno
                        .long            8
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         data = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n60_statement_begin_α:                                                        jmp   n61_lit_string_α
n60_statement_begin_β:                                                        jmp   n64_setexit_test_α
                        .size            n60_statement_begin_bx, .-n60_statement_begin_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_assign_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_239_0: .quad .Llit_string_α_239_0_s; .popsection
.Llit_string_α_239_0_s: .string          "10,20,30,40,50,60,70,80,90,100,"
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # data
                        mov              qword ptr [r9 + 11976], rdx;         jmp   n63_statement_end_α
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    add              rsp, 16;                             jmp   n65_statement_begin_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_setexit_test_bx, @function
n64_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_243_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_243_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_243_61:
.Lsetexit_test_α_243_1:                                                       jmp   n65_statement_begin_α
                        .size            n64_setexit_test_bx, .-n64_setexit_test_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
.Lstatement_begin_α_244_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_244_stno
                        .long            9
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         count = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n65_statement_begin_α:                                                        jmp   n66_lit_integer_α
n65_statement_begin_β:                                                        jmp   n69_setexit_test_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_lit_integer_bx, @function
n66_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_assign_α
.Llit_integer_α_246_0:  .quad            0
                        .size            n66_lit_integer_bx, .-n66_lit_integer_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax          # count
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n68_statement_end_α
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    add              rsp, 16;                             jmp   n70_statement_begin_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_setexit_test_bx, @function
n69_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_250_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_250_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_250_61:
.Lsetexit_test_α_250_1:                                                       jmp   n70_statement_begin_α
                        .size            n69_setexit_test_bx, .-n69_setexit_test_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
.Lstatement_begin_α_251_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_251_stno
                        .long            10
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# parse   data ? field =                                  :F(calc)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n70_statement_begin_α:                                                        jmp   n71_var_α
n70_statement_begin_β:                                                        jmp   n82_setexit_test_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # data
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_var_α
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # field
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_lit_integer_α
n72_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n82_setexit_test_α
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_lit_integer_bx, @function
n73_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_call_direct_α
n73_lit_integer_β:      add              rsp, 16;                             jmp   n72_var_β
.Llit_integer_α_255_0:  .quad            240
                        .size            n73_lit_integer_bx, .-n73_lit_integer_bx
                        .type            n74_call_direct_bx, @function
n74_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_call_direct_α:      sub              rsp, 16
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
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_256_999
                        add              rsp, 16;                             jmp   n73_lit_integer_β
.Lcall_direct_α_256_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_assign_α
n74_call_direct_β:      add              rsp, 16;                             jmp   n73_lit_integer_β
                        .size            n74_call_direct_bx, .-n74_call_direct_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12032], rax
                        mov              qword ptr [r9 + 12040], rdx;         jmp   n76_match_begin_α
n75_assign_β:           add              rsp, 16;                             jmp   n73_lit_integer_β
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_match_begin_bx, @function
n76_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_begin_α:      mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_33:       push             rbp
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
.Lgcsite_main_32:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_259_3
                        call             c_rt_match_enter@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_259_3: push             rax
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
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_259_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_259_1
.Lmatch_begin_α_259_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_259_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_259_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n77_match_defer_α
n76_match_begin_β:
.Lmatch_begin_α_259_13: mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_259_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_259_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_259_1
                                                                              jmp   .Lmatch_begin_α_259_0
.Lmatch_begin_α_259_1:
.Lmatch_begin_γ_76_af:
.Lmatch_begin_ω_76_af:  mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_29:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n75_assign_β
                        .size            n76_match_begin_bx, .-n76_match_begin_bx
                        .type            n77_match_defer_bx, @function
n77_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_defer_α:      mov              rax, qword ptr [r9 + 12032]
                        mov              rdx, qword ptr [r9 + 12040]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_260_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_260_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:103
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 12040];         jmp   .Lmatch_defer_α_260_10
.Lmatch_defer_α_260_9:  xor              eax, eax
.Lmatch_defer_α_260_10: test             rax, rax;                            jz    .Lmatch_defer_α_260_0
.Lmatch_defer_α_260_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_260_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_260_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_260_4:
.Lgcsite_main_54:                                                             jmp   n78_match_end_α
.Lmatch_defer_α_260_5:
.Lgcsite_main_53:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_76_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_76_af
                                                                              jmp   n76_match_begin_β
.Lmatch_defer_α_260_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 12032]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_main_52:       cmp              rax, -1;                             jne   .Lmatch_defer_vd_260_5
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_260_5: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_260_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_260_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_260_2:  test             rax, rax;                            je    .Lmatch_defer_α_260_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_260_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_260_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_260_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_260_141
                        lea              rcx, [rip + .Lmatch_defer_α_260_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_260_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_260_42]
                        lea              rdx, [rip + .Lmatch_defer_α_260_43]; jmp   rax
.Lmatch_defer_α_260_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_260_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_260_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_260_44:
.Lgcsite_main_49:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_260_46
.Lmatch_defer_α_260_45:
.Lgcsite_main_48:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_260_47
.Lmatch_defer_α_260_42:
.Lgcsite_main_47:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_260_46
.Lmatch_defer_α_260_43:
.Lgcsite_main_46:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_260_47
.Lmatch_defer_α_260_141:
                        lea              rcx, [rip + .Lmatch_defer_α_260_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_260_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_260_142]
                        lea              rdx, [rip + .Lmatch_defer_α_260_143]
                                                                              jmp   rax
.Lmatch_defer_α_260_142:
.Lgcsite_main_45:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_260_46
.Lmatch_defer_α_260_143:
.Lgcsite_main_44:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_260_47
.Lmatch_defer_α_260_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_260_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_260_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_260_2
.Lmatch_defer_α_260_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_260_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_260_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_260_2
.Lmatch_defer_α_260_61: sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_260_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_260_62:
.Lgcsite_main_39:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_260_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_260_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_260_2
.Lmatch_defer_α_260_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_260_48
.Lmatch_defer_α_260_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_36:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_260_4
                        call             c_rt_defer_close@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_260_4: add              rsp, 144
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
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_260_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_76_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_76_af
                        test             eax, eax;                            js    n76_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_260_6]
                        push             rcx
                        push             rax;                                 jmp   n78_match_end_α
.Lmatch_defer_α_260_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n76_match_begin_β
n77_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_260_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_260_12
                                                                              jmp   rax
.Lmatch_defer_β_260_12:                                                       jmp   qword ptr [rsp]
                        .size            n77_match_defer_bx, .-n77_match_defer_bx
                        .type            n78_match_end_bx, @function
n78_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_76_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -36], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
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
.Lgcsite_main_88:       push             rax
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
.Lgcsite_main_87:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_262_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_262_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_262_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_262_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_262_120
                        lea              rcx, [rip + .Lmatch_end_α_262_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_21]
                        lea              rdx, [rip + .Lmatch_end_α_262_22];   jmp   rax
.Lmatch_end_α_262_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_262_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_262_23:
.Lgcsite_main_86:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_8
.Lmatch_end_α_262_24:
.Lgcsite_main_85:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_9
.Lmatch_end_α_262_21:
.Lgcsite_main_84:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_8
.Lmatch_end_α_262_22:
.Lgcsite_main_83:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_9
.Lmatch_end_α_262_120:  lea              rcx, [rip + .Lmatch_end_α_262_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_121]
                        lea              rdx, [rip + .Lmatch_end_α_262_122];  jmp   rax
.Lmatch_end_α_262_121:
.Lgcsite_main_82:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_8
.Lmatch_end_α_262_122:
.Lgcsite_main_81:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_9
.Lmatch_end_α_262_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_79:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_262_1
.Lmatch_end_α_262_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_262_1
.Lmatch_end_α_262_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_262_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_262_61
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_262_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_262_140
                        lea              rcx, [rip + .Lmatch_end_α_262_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_41]
                        lea              rdx, [rip + .Lmatch_end_α_262_42];   jmp   rax
.Lmatch_end_α_262_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_262_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_262_43:
.Lgcsite_main_74:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_45
.Lmatch_end_α_262_44:
.Lgcsite_main_73:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_46
.Lmatch_end_α_262_41:
.Lgcsite_main_72:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_45
.Lmatch_end_α_262_42:
.Lgcsite_main_71:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_46
.Lmatch_end_α_262_140:  lea              rcx, [rip + .Lmatch_end_α_262_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_262_141]
                        lea              rdx, [rip + .Lmatch_end_α_262_142];  jmp   rax
.Lmatch_end_α_262_141:
.Lgcsite_main_70:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_45
.Lmatch_end_α_262_142:
.Lgcsite_main_69:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_262_46
.Lmatch_end_α_262_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_262_62
.Lmatch_end_α_262_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_262_62
.Lmatch_end_α_262_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:321
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_262_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:325
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_262_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_262_1
.Lmatch_end_α_262_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_58:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_262_13
                                                                              jmp   .Lmatch_begin_ω_76_af
.Lmatch_end_α_262_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -36]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_57:                                                             jmp   n79_lit_string_α
                        .size            n78_match_end_bx, .-n78_match_end_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_263_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_match_replace_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_263_0: .quad .Llit_string_α_263_0_s; .popsection
.Llit_string_α_263_0_s: .string          ""
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_match_replace_bx, @function
n80_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_replace_α:    mov              rdi, qword ptr [rip + .Lmatch_replace_α_265_0]
                        mov              rsi, qword ptr [rsp + 64]            # var
                        mov              rdx, qword ptr [rsp + 72]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        call             qword ptr [rip + rt_match_replace@GOTPCREL]
.Lgcsite_main_91:       cmp              al, 255;                             jne   .Lmatch_replace_vd_265_6
                        call             c_rt_match_replace@PLT
.Lgcsite_main_90:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_replace_vd_265_6:
                        add              rsp, 16                              # repl_subtree_free
                        push             rax                                  # gc_poll bb_match_replace.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_89:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n81_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lmatch_replace_α_265_0: .quad .Lmatch_replace_α_265_0_s; .popsection
.Lmatch_replace_α_265_0_s:
                        .string          "data"
                        .size            n80_match_replace_bx, .-n80_match_replace_bx
                        .type            n81_statement_end_bx, @function
n81_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    add              rsp, 64;                             jmp   n83_statement_begin_α
                        .size            n81_statement_end_bx, .-n81_statement_end_bx
                        .type            n82_setexit_test_bx, @function
n82_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_268_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_268_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_268_61:
.Lsetexit_test_α_268_1:                                                       jmp   n100_statement_begin_α
                        .size            n82_setexit_test_bx, .-n82_setexit_test_bx
                        .type            n83_statement_begin_bx, @function
n83_statement_begin_bx:
.Lstatement_begin_α_269_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_269_stno
                        .long            11
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         count = count + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n83_statement_begin_α:                                                        jmp   n84_var_α
n83_statement_begin_β:                                                        jmp   n89_setexit_test_α
                        .size            n83_statement_begin_bx, .-n83_statement_begin_bx
                        .type            n84_var_bx, @function
n84_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # count
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_lit_integer_α
                        .size            n84_var_bx, .-n84_var_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_binop_α
n85_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Llit_integer_α_272_0:  .quad            1
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_binop_bx, @function
n86_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_273_2
                        add              rax, 1;                              jo    .Lbinop_α_273_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_273_7
.Lbinop_α_273_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_273_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_273_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_273_4
.Lbinop_α_273_3:        movq             xmm0, rsi
.Lbinop_α_273_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_273_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_273_7:                                                              jmp   n87_assign_α
.Lbinop_α_273_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_93:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_273_999
                        add              rsp, 16;                             jmp   n85_lit_integer_β
.Lbinop_α_273_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_92:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n87_assign_α
n86_binop_β:            add              rsp, 16;                             jmp   n85_lit_integer_β
                        .size            n86_binop_bx, .-n86_binop_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax          # count
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n88_statement_end_α
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_statement_end_bx, @function
n88_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    add              rsp, 48;                             jmp   n90_statement_begin_α
                        .size            n88_statement_end_bx, .-n88_statement_end_bx
                        .type            n89_setexit_test_bx, @function
n89_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_277_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_277_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_277_61:
.Lsetexit_test_α_277_1:                                                       jmp   n90_statement_begin_α
                        .size            n89_setexit_test_bx, .-n89_setexit_test_bx
                        .type            n90_statement_begin_bx, @function
n90_statement_begin_bx:
.Lstatement_begin_α_278_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_278_stno
                        .long            12
                        .long            14
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab[count] = word + 0                           :(parse)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n90_statement_begin_α:                                                        jmp   n91_var_α
n90_statement_begin_β:                                                        jmp   n99_setexit_test_α
                        .size            n90_statement_begin_bx, .-n90_statement_begin_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # tab
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_var_α
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # count
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_subscript_α
n92_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_subscript_bx, @function
n93_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_282_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_282_2
                                                                              jmp   .Lsubscript_α_282_1
.Lsubscript_α_282_0:    cmp              dil, 16;                             jne   .Lsubscript_α_282_1
                        test             rsi, rsi;                            je    .Lsubscript_α_282_1
                        mov              rdx, qword ptr [rsp + 16]
                        cmp              dl, 3;                               jne   .Lsubscript_α_282_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_282_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_282_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_282_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_282_1
                                                                              jmp   .Lsubscript_α_282_2
.Lsubscript_α_282_1:    mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_96:       cmp              al, 255;                             jne   .Lsubscript_vd_282_7
                        call             c_rt_subscript_var_container_only@PLT
.Lgcsite_main_95:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_282_7:   cmp              al, 104;                             jne   .Lsubscript_α_282_999
                        add              rsp, 16;                             jmp   n92_var_β
.Lsubscript_α_282_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_94:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lsubscript_α_282_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_var_α
n93_subscript_β:        add              rsp, 16;                             jmp   n92_var_β
                        .size            n93_subscript_bx, .-n93_subscript_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11904]          # word
                        mov              rdx, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
n94_var_β:              add              rsp, 16;                             jmp   n93_subscript_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
n95_lit_integer_β:      add              rsp, 16;                             jmp   n94_var_β
.Llit_integer_α_284_0:  .quad            0
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_binop_bx, @function
n96_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_285_2
                        add              rax, 0;                              jo    .Lbinop_α_285_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_285_7
.Lbinop_α_285_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_285_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lbinop_α_285_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_285_4
.Lbinop_α_285_3:        movq             xmm0, rsi
.Lbinop_α_285_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_285_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_285_7:                                                              jmp   n97_assign_var_α
.Lbinop_α_285_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_285_999
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lbinop_α_285_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_97:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n97_assign_var_α
n96_binop_β:            add              rsp, 16;                             jmp   n95_lit_integer_β
                        .size            n96_binop_bx, .-n96_binop_bx
                        .type            n97_assign_var_bx, @function
n97_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]            # var
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              dil, 40;                             jne   .Lassign_var_α_287_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_287_0
                        test             rsi, rsi;                            je    .Lassign_var_α_287_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_287_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_287_1
.Lassign_var_α_287_5:   cmp              dil, 24;                             je    .Lassign_var_α_287_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_287_0
.Lassign_var_α_287_1:   test             rsi, rsi;                            je    .Lassign_var_α_287_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_107:      cmp              al, 255;                             jne   .Lassign_var_vd_287_10
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_106:      mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_287_10: cmp              al, 104;                             jne   .Lassign_var_α_287_997
                        add              rsp, 16;                             jmp   n96_binop_β
.Lassign_var_α_287_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_105:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n98_statement_end_α
.Lassign_var_α_287_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
.Lgcsite_main_104:      cmp              al, 255;                             jne   .Lassign_var_vd_287_9
                        call             c_rt_subscript_var_container_only@PLT
.Lgcsite_main_103:      mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_287_9:  push             rax
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
.Lgcsite_main_102:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_287_998
                        add              rsp, 16;                             jmp   n96_binop_β
.Lassign_var_α_287_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
.Lgcsite_main_101:      cmp              al, 255;                             jne   .Lassign_var_vd_287_8
                        call             c_rt_assign_var@PLT
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_287_8:  cmp              al, 104;                             jne   .Lassign_var_α_287_999
                        add              rsp, 16;                             jmp   n96_binop_β
.Lassign_var_α_287_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n98_statement_end_α
                        .size            n97_assign_var_bx, .-n97_assign_var_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    add              rsp, 112;                            jmp   n70_statement_begin_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_setexit_test_bx, @function
n99_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_290_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_290_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_290_61:
.Lsetexit_test_α_290_1:                                                       jmp   n70_statement_begin_α
                        .size            n99_setexit_test_bx, .-n99_setexit_test_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
.Lstatement_begin_α_291_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_291_stno
                        .long            13
                        .long            15
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# calc    total = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n100_statement_begin_α:                                                       jmp   n101_lit_integer_α
n100_statement_begin_β:                                                       jmp   n104_setexit_test_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_assign_α
.Llit_integer_α_293_0:  .quad            0
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_assign_bx, @function
n102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12000], rax          # total
                        mov              qword ptr [r9 + 12008], rdx;         jmp   n103_statement_end_α
                        .size            n102_assign_bx, .-n102_assign_bx
                        .type            n103_statement_end_bx, @function
n103_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_end_α:   add              rsp, 16;                             jmp   n105_statement_begin_α
                        .size            n103_statement_end_bx, .-n103_statement_end_bx
                        .type            n104_setexit_test_bx, @function
n104_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_297_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_297_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_297_61:
.Lsetexit_test_α_297_1:                                                       jmp   n105_statement_begin_α
                        .size            n104_setexit_test_bx, .-n104_setexit_test_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
.Lstatement_begin_α_298_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_298_stno
                        .long            14
                        .long            16
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         j = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n105_statement_begin_α:                                                       jmp   n106_lit_integer_α
n105_statement_begin_β:                                                       jmp   n109_setexit_test_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_300_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_assign_α
.Llit_integer_α_300_0:  .quad            0
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_assign_bx, @function
n107_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12016], rax          # j
                        mov              qword ptr [r9 + 12024], rdx;         jmp   n108_statement_end_α
                        .size            n107_assign_bx, .-n107_assign_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   add              rsp, 16;                             jmp   n110_statement_begin_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_setexit_test_bx, @function
n109_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_304_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_304_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_304_61:
.Lsetexit_test_α_304_1:                                                       jmp   n110_statement_begin_α
                        .size            n109_setexit_test_bx, .-n109_setexit_test_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
.Lstatement_begin_α_305_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_305_stno
                        .long            15
                        .long            17
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# add     j = LT(j, count) j + 1                          :F(next)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n110_statement_begin_α:                                                       jmp   n111_var_α
n110_statement_begin_β:                                                       jmp   n121_setexit_test_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12016]          # j
                        mov              rdx, qword ptr [r9 + 12024]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_var_α
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_var_bx, @function
n112_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # count
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_coerce_numeric_α
n112_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
                        .size            n112_var_bx, .-n112_var_bx
                        .type            n113_coerce_numeric_bx, @function
n113_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_310_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_310_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_310_0
.Lcoerce_numeric_α_310_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_coerce_numeric_α
.Lcoerce_numeric_α_310_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_110:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_310_11
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_310_11:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_310_999
                        add              rsp, 16;                             jmp   n112_var_β
.Lcoerce_numeric_α_310_999:
                                                                              jmp   n114_coerce_numeric_α
n113_coerce_numeric_β:  add              rsp, 16;                             jmp   n112_var_β
                        .size            n113_coerce_numeric_bx, .-n113_coerce_numeric_bx
                        .type            n114_coerce_numeric_bx, @function
n114_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_312_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_312_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_312_0
.Lcoerce_numeric_α_312_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_cmp_test_α
.Lcoerce_numeric_α_312_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_113:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_312_12
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_312_12:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_111:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_312_999
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
.Lcoerce_numeric_α_312_999:
                                                                              jmp   n115_cmp_test_α
n114_coerce_numeric_β:  add              rsp, 16;                             jmp   n113_coerce_numeric_β
                        .size            n114_coerce_numeric_bx, .-n114_coerce_numeric_bx
                        .type            n115_cmp_test_bx, @function
n115_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_314_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_314_998
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lcmp_test_α_314_998:                                                         jmp   n116_var_α
.Lcmp_test_α_314_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_114:      test             eax, eax;                            js    .Lcmp_test_α_314_999
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lcmp_test_α_314_999:                                                         jmp   n116_var_α
n115_cmp_test_β:        add              rsp, 16;                             jmp   n114_coerce_numeric_β
                        .size            n115_cmp_test_bx, .-n115_cmp_test_bx
                        .type            n116_var_bx, @function
n116_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12016]          # j
                        mov              rdx, qword ptr [r9 + 12024]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_integer_α
n116_var_β:             add              rsp, 16;                             jmp   n115_cmp_test_β
                        .size            n116_var_bx, .-n116_var_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_316_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_binop_α
n117_lit_integer_β:     add              rsp, 16;                             jmp   n116_var_β
.Llit_integer_α_316_0:  .quad            1
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_binop_bx, @function
n118_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_317_2
                        add              rax, 1;                              jo    .Lbinop_α_317_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_317_7
.Lbinop_α_317_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_317_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_317_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_317_4
.Lbinop_α_317_3:        movq             xmm0, rsi
.Lbinop_α_317_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_317_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_317_7:                                                              jmp   n119_assign_α
.Lbinop_α_317_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_116:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_317_999
                        add              rsp, 16;                             jmp   n117_lit_integer_β
.Lbinop_α_317_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_115:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n119_assign_α
n118_binop_β:           add              rsp, 16;                             jmp   n117_lit_integer_β
                        .size            n118_binop_bx, .-n118_binop_bx
                        .type            n119_assign_bx, @function
n119_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12016], rax          # j
                        mov              qword ptr [r9 + 12024], rdx;         jmp   n120_statement_end_α
                        .size            n119_assign_bx, .-n119_assign_bx
                        .type            n120_statement_end_bx, @function
n120_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   add              rsp, 128;                            jmp   n122_statement_begin_α
                        .size            n120_statement_end_bx, .-n120_statement_end_bx
                        .type            n121_setexit_test_bx, @function
n121_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_321_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_321_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_321_61:
.Lsetexit_test_α_321_1:                                                       jmp   n131_statement_begin_α
                        .size            n121_setexit_test_bx, .-n121_setexit_test_bx
                        .type            n122_statement_begin_bx, @function
n122_statement_begin_bx:
.Lstatement_begin_α_322_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_322_stno
                        .long            16
                        .long            18
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         total = total + tab[j]                          :(add)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n122_statement_begin_α:                                                       jmp   n123_var_α
n122_statement_begin_β:                                                       jmp   n130_setexit_test_α
                        .size            n122_statement_begin_bx, .-n122_statement_begin_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12000]          # total
                        mov              rdx, qword ptr [r9 + 12008]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_var_bx, @function
n124_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # tab
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
                        .size            n124_var_bx, .-n124_var_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12016]          # j
                        mov              rdx, qword ptr [r9 + 12024]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             add              rsp, 16;                             jmp   n124_var_β
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_subscript_bx, @function
n126_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_val@GOTPCREL]
.Lgcsite_main_119:      cmp              al, 255;                             jne   .Lsubscript_vd_327_13
                        call             c_rt_subscript_val@PLT
.Lgcsite_main_118:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_327_13:  cmp              al, 104;                             jne   .Lsubscript_α_327_999
                        add              rsp, 16;                             jmp   n125_var_β
.Lsubscript_α_327_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_117:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n127_binop_α
n126_subscript_β:       add              rsp, 16;                             jmp   n125_var_β
                        .size            n126_subscript_bx, .-n126_subscript_bx
                        .type            n127_binop_bx, @function
n127_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_328_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_328_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_328_7
.Lbinop_α_328_2:        and              edx, 1;                              jz    .Lbinop_α_328_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_328_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_328_4
.Lbinop_α_328_3:        movq             xmm0, rsi
.Lbinop_α_328_4:        cmp              cl, 5;                               je    .Lbinop_α_328_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_328_6
.Lbinop_α_328_5:        movq             xmm1, rdi
.Lbinop_α_328_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_328_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_328_7:                                                              jmp   n128_assign_α
.Lbinop_α_328_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_121:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_328_999
                        add              rsp, 16;                             jmp   n126_subscript_β
.Lbinop_α_328_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_120:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n128_assign_α
n127_binop_β:           add              rsp, 16;                             jmp   n126_subscript_β
                        .size            n127_binop_bx, .-n127_binop_bx
                        .type            n128_assign_bx, @function
n128_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12000], rax          # total
                        mov              qword ptr [r9 + 12008], rdx;         jmp   n129_statement_end_α
                        .size            n128_assign_bx, .-n128_assign_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   add              rsp, 80;                             jmp   n110_statement_begin_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_setexit_test_bx, @function
n130_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_332_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_332_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_332_61:
.Lsetexit_test_α_332_1:                                                       jmp   n110_statement_begin_α
                        .size            n130_setexit_test_bx, .-n130_setexit_test_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
.Lstatement_begin_α_333_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_333_stno
                        .long            17
                        .long            19
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# next    grand = grand + total + rsum(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n131_statement_begin_α:                                                       jmp   n132_var_α
n131_statement_begin_β:                                                       jmp   n140_setexit_test_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # grand
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_var_α
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_var_bx, @function
n133_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12000]          # total
                        mov              rdx, qword ptr [r9 + 12008]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_binop_α
n133_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
                        .size            n133_var_bx, .-n133_var_bx
                        .type            n134_binop_bx, @function
n134_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_337_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_337_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_337_7
.Lbinop_α_337_2:        and              edx, 1;                              jz    .Lbinop_α_337_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_337_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_337_4
.Lbinop_α_337_3:        movq             xmm0, rsi
.Lbinop_α_337_4:        cmp              cl, 5;                               je    .Lbinop_α_337_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_337_6
.Lbinop_α_337_5:        movq             xmm1, rdi
.Lbinop_α_337_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_337_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_337_7:                                                              jmp   n135_lit_integer_α
.Lbinop_α_337_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_337_999
                        add              rsp, 16;                             jmp   n133_var_β
.Lbinop_α_337_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_122:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n135_lit_integer_α
n134_binop_β:           add              rsp, 16;                             jmp   n133_var_β
                        .size            n134_binop_bx, .-n134_binop_bx
                        .type            n135_lit_integer_bx, @function
n135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_α
n135_lit_integer_β:     add              rsp, 16;                             jmp   n134_binop_β
.Llit_integer_α_338_0:  .quad            10
                        .size            n135_lit_integer_bx, .-n135_lit_integer_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig340z]
                        mov              rax, [rip + alpha_cellp$rsum]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig340z: .quad 1
                        .quad            .Lcall_α_340_2
                        .quad            .Lcall_α_340_2
                        .quad            16; .popsection
.Lcall_α_340_2:
.Lgcsite_main_126:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_340_29
                        cmp              eax, 40;                             je    .Lcall_α_340_25
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_nret_name@PLT
.Lgcsite_main_125:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        cmp              eax, 40;                             je    .Lcall_α_340_25
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0;              jmp   .Lcall_α_340_23
.Lcall_α_340_25:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_340_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_340_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_124:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_340_23
.Lcall_α_340_24:
.Lcall_α_340_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_340_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_340_999
                        add              rsp, 16;                             jmp   n135_lit_integer_β
.Lcall_α_340_999:                                                             jmp   n137_binop_α
n136_call_β:            add              rsp, 16;                             jmp   n135_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_340_0: .quad .Lcall_β_340_0_s; .popsection
.Lcall_β_340_0_s:       .string          "rsum"
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_binop_bx, @function
n137_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_341_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_341_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_341_7
.Lbinop_α_341_2:        and              edx, 1;                              jz    .Lbinop_α_341_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_341_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_341_4
.Lbinop_α_341_3:        movq             xmm0, rsi
.Lbinop_α_341_4:        cmp              cl, 5;                               je    .Lbinop_α_341_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_341_6
.Lbinop_α_341_5:        movq             xmm1, rdi
.Lbinop_α_341_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_341_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_341_7:                                                              jmp   n138_assign_α
.Lbinop_α_341_0:        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_128:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_341_999
                        add              rsp, 32;                             jmp   n135_lit_integer_β
.Lbinop_α_341_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_127:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n138_assign_α
n137_binop_β:           add              rsp, 32;                             jmp   n135_lit_integer_β
                        .size            n137_binop_bx, .-n137_binop_bx
                        .type            n138_assign_bx, @function
n138_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # grand
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n139_statement_end_α
                        .size            n138_assign_bx, .-n138_assign_bx
                        .type            n139_statement_end_bx, @function
n139_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   add              rsp, 96;                             jmp   n141_statement_begin_α
                        .size            n139_statement_end_bx, .-n139_statement_end_bx
                        .type            n140_setexit_test_bx, @function
n140_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_345_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_345_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_345_61:
.Lsetexit_test_α_345_1:                                                       jmp   n141_statement_begin_α
                        .size            n140_setexit_test_bx, .-n140_setexit_test_bx
                        .type            n141_statement_begin_bx, @function
n141_statement_begin_bx:
.Lstatement_begin_α_346_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_346_stno
                        .long            18
                        .long            20
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         pass = LT(pass, 20) pass + 1                    :S(record)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n141_statement_begin_α:                                                       jmp   n142_var_α
n141_statement_begin_β:                                                       jmp   n152_setexit_test_α
                        .size            n141_statement_begin_bx, .-n141_statement_begin_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # pass
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_lit_integer_α
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_lit_integer_bx, @function
n143_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_coerce_numeric_α
n143_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n141_statement_begin_β
.Llit_integer_α_349_0:  .quad            20
                        .size            n143_lit_integer_bx, .-n143_lit_integer_bx
                        .type            n144_coerce_numeric_bx, @function
n144_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_351_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_351_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_351_0
.Lcoerce_numeric_α_351_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_coerce_numeric_α
.Lcoerce_numeric_α_351_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_131:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_351_14
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_130:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_351_14:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_129:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_351_999
                        add              rsp, 16;                             jmp   n143_lit_integer_β
.Lcoerce_numeric_α_351_999:
                                                                              jmp   n145_coerce_numeric_α
n144_coerce_numeric_β:  add              rsp, 16;                             jmp   n143_lit_integer_β
                        .size            n144_coerce_numeric_bx, .-n144_coerce_numeric_bx
                        .type            n145_coerce_numeric_bx, @function
n145_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_353_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_353_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_353_0
.Lcoerce_numeric_α_353_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_cmp_test_α
.Lcoerce_numeric_α_353_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_134:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_353_15
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_133:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_353_15:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_132:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_353_999
                        add              rsp, 16;                             jmp   n144_coerce_numeric_β
.Lcoerce_numeric_α_353_999:
                                                                              jmp   n146_cmp_test_α
n145_coerce_numeric_β:  add              rsp, 16;                             jmp   n144_coerce_numeric_β
                        .size            n145_coerce_numeric_bx, .-n145_coerce_numeric_bx
                        .type            n146_cmp_test_bx, @function
n146_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_355_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_355_998
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lcmp_test_α_355_998:                                                         jmp   n147_var_α
.Lcmp_test_α_355_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_135:      test             eax, eax;                            js    .Lcmp_test_α_355_999
                        add              rsp, 16;                             jmp   n145_coerce_numeric_β
.Lcmp_test_α_355_999:                                                         jmp   n147_var_α
n146_cmp_test_β:        add              rsp, 16;                             jmp   n145_coerce_numeric_β
                        .size            n146_cmp_test_bx, .-n146_cmp_test_bx
                        .type            n147_var_bx, @function
n147_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # pass
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_lit_integer_α
n147_var_β:             add              rsp, 16;                             jmp   n146_cmp_test_β
                        .size            n147_var_bx, .-n147_var_bx
                        .type            n148_lit_integer_bx, @function
n148_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_357_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_binop_α
n148_lit_integer_β:     add              rsp, 16;                             jmp   n147_var_β
.Llit_integer_α_357_0:  .quad            1
                        .size            n148_lit_integer_bx, .-n148_lit_integer_bx
                        .type            n149_binop_bx, @function
n149_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_358_2
                        add              rax, 1;                              jo    .Lbinop_α_358_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_358_7
.Lbinop_α_358_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_358_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_358_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_358_4
.Lbinop_α_358_3:        movq             xmm0, rsi
.Lbinop_α_358_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_358_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_358_7:                                                              jmp   n150_assign_α
.Lbinop_α_358_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_137:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_358_999
                        add              rsp, 16;                             jmp   n148_lit_integer_β
.Lbinop_α_358_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n150_assign_α
n149_binop_β:           add              rsp, 16;                             jmp   n148_lit_integer_β
                        .size            n149_binop_bx, .-n149_binop_bx
                        .type            n150_assign_bx, @function
n150_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # pass
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n151_statement_end_α
                        .size            n150_assign_bx, .-n150_assign_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 128;                            jmp   n54_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_setexit_test_bx, @function
n152_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_362_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_362_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_362_61:
.Lsetexit_test_α_362_1:                                                       jmp   n153_statement_begin_α
                        .size            n152_setexit_test_bx, .-n152_setexit_test_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
.Lstatement_begin_α_363_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_363_stno
                        .long            19
                        .long            21
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT = '20 records = ' grand
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n153_statement_begin_α:                                                       jmp   n154_lit_string_α
n153_statement_begin_β:                                                       jmp   n159_setexit_test_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_lit_string_bx, @function
n154_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_365_0: .quad .Llit_string_α_365_0_s; .popsection
.Llit_string_α_365_0_s: .string          "20 records = "
                        .size            n154_lit_string_bx, .-n154_lit_string_bx
                        .type            n155_var_bx, @function
n155_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # grand
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n156_binop_α
n155_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
                        .size            n155_var_bx, .-n155_var_bx
                        .type            n156_binop_bx, @function
n156_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_140:      cmp              al, 255;                             jne   .Lbinop_vd_367_16
                        call             c_sno_concat_d@PLT
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_367_16:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_138:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_367_999
                        add              rsp, 16;                             jmp   n155_var_β
.Lbinop_α_367_999:                                                            jmp   n157_assign_α
n156_binop_β:           add              rsp, 16;                             jmp   n155_var_β
                        .size            n156_binop_bx, .-n156_binop_bx
                        .type            n157_assign_bx, @function
n157_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_368_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_142:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n158_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_368_0: .quad .Lassign_α_368_0_s; .popsection
.Lassign_α_368_0_s:     .string          "OUTPUT"
                        .size            n157_assign_bx, .-n157_assign_bx
                        .type            n158_statement_end_bx, @function
n158_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   add              rsp, 48;                             jmp   main_γ
                        .size            n158_statement_end_bx, .-n158_statement_end_bx
                        .type            n159_setexit_test_bx, @function
n159_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_371_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_371_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_371_61:
.Lsetexit_test_α_371_1:                                                       jmp   main_γ
                        .size            n159_setexit_test_bx, .-n159_setexit_test_bx
                        .type            n160_goto_bx, @function
n160_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_α:                                                                  jmp   LBL__rsum
n160_goto_β:                                                                  jmp   main_ω
                        .size            n160_goto_bx, .-n160_goto_bx
                        .type            n161_goto_bx, @function
n161_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:                                                                  jmp   n38_statement_begin_α
n161_goto_β:                                                                  jmp   main_ω
                        .size            n161_goto_bx, .-n161_goto_bx
                        .type            n162_goto_bx, @function
n162_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_α:                                                                  jmp   n54_statement_begin_α
n162_goto_β:                                                                  jmp   main_ω
                        .size            n162_goto_bx, .-n162_goto_bx
                        .type            n163_goto_bx, @function
n163_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_α:                                                                  jmp   n70_statement_begin_α
n163_goto_β:                                                                  jmp   main_ω
                        .size            n163_goto_bx, .-n163_goto_bx
                        .type            n164_goto_bx, @function
n164_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_goto_α:                                                                  jmp   n100_statement_begin_α
n164_goto_β:                                                                  jmp   main_ω
                        .size            n164_goto_bx, .-n164_goto_bx
                        .type            n165_goto_bx, @function
n165_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_goto_α:                                                                  jmp   n110_statement_begin_α
n165_goto_β:                                                                  jmp   main_ω
                        .size            n165_goto_bx, .-n165_goto_bx
                        .type            n166_goto_bx, @function
n166_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_goto_α:                                                                  jmp   n131_statement_begin_α
n166_goto_β:                                                                  jmp   main_ω
                        .size            n166_goto_bx, .-n166_goto_bx
                        .type            n167_define_bx, @function
n167_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
.Lgcsite_main_143:      pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n167_define_bx, .-n167_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_146:      push             rax                                  # gc_poll bb_glue_flat.cpp:57
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_145:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_144:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_147:
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
.Lgcsites_main_1:       .quad            148
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
                        .quad            .Lgcsite_main_5-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_4-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_6-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_7-.Lgccode_main_1
                        .quad            18014604668370950
                        .quad            .Lgcsite_main_10-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_9-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_8-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_13-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_12-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_11-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_14-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_16-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_15-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_19-.Lgccode_main_1
                        .quad            343597383682
                        .quad            .Lgcsite_main_18-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_17-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_21-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_20-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_22-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_23-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_25-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_24-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_26-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_27-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_28-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_33-.Lgccode_main_1
                        .quad            274877906948
                        .quad            .Lgcsite_main_32-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_31-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_30-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_29-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_56-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_55-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_54-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_53-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_52-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_51-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_50-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_49-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_48-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_47-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_46-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_45-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_44-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_43-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_42-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_41-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_40-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_39-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_38-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_37-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_36-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_35-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_34-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_88-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_87-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_86-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_85-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_84-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_83-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_82-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_81-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_80-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_79-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_78-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_77-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_76-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_75-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_74-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_73-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_72-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_71-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_70-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_69-.Lgccode_main_1
                        .quad            274878300418
                        .quad            .Lgcsite_main_68-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_67-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_66-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_65-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_64-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_63-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_62-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_61-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_60-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_59-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_58-.Lgccode_main_1
                        .quad            274878300417
                        .quad            .Lgcsite_main_57-.Lgccode_main_1
                        .quad            274877906949
                        .quad            .Lgcsite_main_91-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_90-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_89-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_93-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_92-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_96-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_95-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_94-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_98-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_97-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_107-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_106-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_105-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_104-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_103-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_102-.Lgccode_main_1
                        .quad            618475290625
                        .quad            .Lgcsite_main_101-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_100-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_99-.Lgccode_main_1
                        .quad            481036337153
                        .quad            .Lgcsite_main_110-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_109-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_108-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_113-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_112-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_111-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_114-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_116-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_115-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_119-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_118-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_117-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_121-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_120-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_123-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_122-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_126-.Lgccode_main_1
                        .quad            343597383682
                        .quad            .Lgcsite_main_125-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_124-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_128-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_127-.Lgccode_main_1
                        .quad            412316860417
                        .quad            .Lgcsite_main_131-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_130-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_129-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_134-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_133-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_132-.Lgccode_main_1
                        .quad            274877906945
                        .quad            .Lgcsite_main_135-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_137-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_136-.Lgccode_main_1
                        .quad            549755813889
                        .quad            .Lgcsite_main_140-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_139-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_138-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_142-.Lgccode_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_141-.Lgccode_main_1
                        .quad            343597383681
                        .quad            .Lgcsite_main_143-.Lgccode_main_1
                        .quad            1
                        .quad            .Lgcsite_main_146-.Lgccode_main_1
                        .quad            18446744004990074881
                        .quad            .Lgcsite_main_145-.Lgccode_main_1
                        .quad            18446744004990074881
                        .quad            .Lgcsite_main_144-.Lgccode_main_1
                        .quad            18446744004990074881
                        .quad            .Lgcsite_main_147-.Lgccode_main_1
                        .quad            18446744004990074881
                        .popsection
module_init:
                        sub              rsp, 8
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname0:       .string          "LBL__rsum"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__rsum
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            16
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "rsum"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            rsum_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + rsum_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
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
.S0:                    .string          "word"
                        .text
                        .section         .data
                        .align           8
alpha_cellp$rsum:       .quad            alpha_cellp$rsum + 8
                        .quad            rsum_α
__alpha_cellp_tab:      .quad            .Lalphan0, alpha_cellp$rsum
                        .quad            0
                        .section         .rodata
.Lalphan0:              .string          "rsum"
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
