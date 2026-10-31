                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnint_loop.icn"
                        .file            2 "<included>"
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
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 741
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 741
                        call             gva_register@PLT
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
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
                        .pushsection     .rodata
.Lscan_nil:             .byte            0
                        .popsection
                        lea              r13, [rip + .Lscan_nil]
                        xor              r15d, r15d
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              dword ptr [rax], 0
                        lea              rax, [rip + .Lmain_icn_end]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Lmain_icn_end:         and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .rodata
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_0:
main_α:
                        sub              rsp, 96
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        mov              qword ptr [rdi + 80], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
main_α_body:
                        .type            n0_call_direct_bx, @function
n0_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_direct_α:       sub              rsp, 16
                        lea              rdi, [rsp + 16]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_23_999
                        add              rsp, 16;                             jmp   n1_line_mark_α
.Lcall_direct_α_23_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n1_line_mark_α
n0_call_direct_β:       add              rsp, 16;                             jmp   n1_line_mark_α
                        .size            n0_call_direct_bx, .-n0_call_direct_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
                        .pushsection     .rodata
.Lstnof1:               .string          "bench_icnint_loop.icn"
                        .popsection
.Lline_mark_α_24_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_24_stno
                        .long            0
                        .long            2
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 2
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_25_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n2_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_25_0: .quad .Lline_mark_α_25_0_s; .popsection
.Lline_mark_α_25_0_s:   .string          "bench_icnint_loop.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
.Lline_mark_α_26_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_26_stno
                        .long            0
                        .long            3
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 3;            jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_28_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Llit_integer_α_28_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        add              rsp, 16;                             jmp   n5_line_mark_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_line_mark_bx, @function
n5_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
.Lline_mark_α_30_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_30_stno
                        .long            0
                        .long            4
                        .quad            .Lstnof1
                        .popsection
n5_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 4;            jmp   n6_lit_integer_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_32_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_integer_α
.Llit_integer_α_32_0:   .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_to_α
.Llit_integer_α_33_0:   .quad            2000000
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_to_bx, @function
n8_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_to_α:                sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_11:       cmp              eax, -2;                             jne   .Lto_vd_35_1
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lto_vd_35_1:           test             eax, eax;                            jne   .Lto_α_35_996
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n18_line_mark_α
.Lto_α_35_996:          push             rax                                  # gc_poll bb_to.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_8:        cmp              eax, -2;                             jne   .Lto_vd_35_0
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + g_rtccb+48]
.Lto_vd_35_0:           test             eax, eax;                            jne   .Lto_α_35_997
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n18_line_mark_α
.Lto_α_35_997:          push             rax                                  # gc_poll bb_to.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 16], rax
                        push             rax                                  # gc_poll bb_to.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 24], rax
.Lto_α_35_0:            mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jle   .Lto_α_35_998
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n18_line_mark_α
.Lto_α_35_998:          mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:152
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n9_assign_α
n8_to_β:                inc              qword ptr [rsp + 16];                jno   .Lto_β_35_999
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n18_line_mark_α
.Lto_β_35_999:                                                                jmp   .Lto_α_35_0
                        .size            n8_to_bx, .-n8_to_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n10_bound_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_bound_bx, @function
n10_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_bound_α:            sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n11_var_α
n10_bound_β:            add              rsp, 16
                        add              rsp, -16;                            jmp   n11_var_α
                        .size            n10_bound_bx, .-n10_bound_bx
                        .type            n11_var_bx, @function
n11_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:                                                                    jmp   n12_var_α
                        .size            n11_var_bx, .-n11_var_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:                                                                    jmp   n13_coerce_numeric_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_coerce_numeric_bx, @function
n13_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 112]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_44_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_44_0
                        mov              eax, dword ptr [rsp + 80]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_44_0
.Lcoerce_numeric_α_44_1:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_coerce_numeric_α
.Lcoerce_numeric_α_44_0:
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 80]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_14:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_44_2
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lcoerce_numeric_vd_44_2:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_44_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n17_unmark_α
.Lcoerce_numeric_α_44_999:
                                                                              jmp   n14_coerce_numeric_α
                        .size            n13_coerce_numeric_bx, .-n13_coerce_numeric_bx
                        .type            n14_coerce_numeric_bx, @function
n14_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 96]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_46_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_46_0
                        mov              eax, dword ptr [rsp + 128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_46_0
.Lcoerce_numeric_α_46_1:
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_binop_α
.Lcoerce_numeric_α_46_0:
                        lea              rdi, [rsp + 96]
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_17:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_46_3
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lcoerce_numeric_vd_46_3:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_46_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n17_unmark_α
.Lcoerce_numeric_α_46_999:
                                                                              jmp   n15_binop_α
                        .size            n14_coerce_numeric_bx, .-n14_coerce_numeric_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_47_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_47_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_47_7
.Lbinop_α_47_2:         and              edx, 1;                              jz    .Lbinop_α_47_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_47_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_47_4
.Lbinop_α_47_3:         movq             xmm0, rsi
.Lbinop_α_47_4:         cmp              cl, 5;                               je    .Lbinop_α_47_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_47_6
.Lbinop_α_47_5:         movq             xmm1, rdi
.Lbinop_α_47_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_47_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_47_7:                                                               jmp   n16_assign_α
.Lbinop_α_47_0:         mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_47_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n17_unmark_α
.Lbinop_α_47_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:257
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n16_assign_α
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n17_unmark_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_unmark_bx, @function
n17_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_unmark_α:           add              rsp, 64;                             jmp   n8_to_β
                        .size            n17_unmark_bx, .-n17_unmark_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
.Lline_mark_α_51_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_51_stno
                        .long            0
                        .long            5
                        .quad            .Lstnof1
                        .popsection
n18_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 5;            jmp   n19_var_ref_α
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_deref_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_deref_bx, @function
n20_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_55_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lderef_α_55_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n21_line_mark_α
                        .size            n20_deref_bx, .-n20_deref_bx
                        .type            n21_line_mark_bx, @function
n21_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_56_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_56_stno
                        .long            0
                        .long            5
                        .quad            .Lstnof1
                        .popsection
n21_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 5;            jmp   n22_call_byname_α
                        .size            n21_line_mark_bx, .-n21_line_mark_bx
                        .type            n22_call_byname_bx, @function
n22_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_byname_α:      sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd59: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd59]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_58_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   main_ω
.Lcall_byname_α_58_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 64;                             jmp   main_ω
                        .size            n22_call_byname_bx, .-n22_call_byname_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88];           jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88];           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            413663317338
                        .quad            382252089424
                        .quad            .Lgcmap_main_s
                        .quad            0
                        .quad            0
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_0:       .quad            24
                        .quad            .Lgcmap_main
                        .quad            9223389626893336672
                        .quad            .Lgccode_main_0
                        .quad            .Lgcsite_main_0-.Lgccode_main_0
                        .quad            65537
                        .quad            0
                        .quad            .Lgcsite_main_1-.Lgccode_main_0
                        .quad            65537
                        .quad            0
                        .quad            .Lgcsite_main_11-.Lgccode_main_0
                        .quad            65537
                        .quad            608
                        .quad            .Lgcsite_main_10-.Lgccode_main_0
                        .quad            65537
                        .quad            608
                        .quad            .Lgcsite_main_9-.Lgccode_main_0
                        .quad            65537
                        .quad            624
                        .quad            .Lgcsite_main_8-.Lgccode_main_0
                        .quad            65537
                        .quad            608
                        .quad            .Lgcsite_main_7-.Lgccode_main_0
                        .quad            65537
                        .quad            608
                        .quad            .Lgcsite_main_6-.Lgccode_main_0
                        .quad            65537
                        .quad            624
                        .quad            .Lgcsite_main_5-.Lgccode_main_0
                        .quad            65537
                        .quad            608
                        .quad            .Lgcsite_main_4-.Lgccode_main_0
                        .quad            65537
                        .quad            624
                        .quad            .Lgcsite_main_3-.Lgccode_main_0
                        .quad            65537
                        .quad            608
                        .quad            .Lgcsite_main_2-.Lgccode_main_0
                        .quad            65537
                        .quad            624
                        .quad            .Lgcsite_main_14-.Lgccode_main_0
                        .quad            65537
                        .quad            640
                        .quad            .Lgcsite_main_13-.Lgccode_main_0
                        .quad            65537
                        .quad            640
                        .quad            .Lgcsite_main_12-.Lgccode_main_0
                        .quad            65537
                        .quad            656
                        .quad            .Lgcsite_main_17-.Lgccode_main_0
                        .quad            65537
                        .quad            672
                        .quad            .Lgcsite_main_16-.Lgccode_main_0
                        .quad            65537
                        .quad            672
                        .quad            .Lgcsite_main_15-.Lgccode_main_0
                        .quad            65537
                        .quad            688
                        .quad            .Lgcsite_main_19-.Lgccode_main_0
                        .quad            65537
                        .quad            704
                        .quad            .Lgcsite_main_18-.Lgccode_main_0
                        .quad            65537
                        .quad            720
                        .quad            .Lgcsite_main_21-.Lgccode_main_0
                        .quad            65537
                        .quad            736
                        .quad            .Lgcsite_main_20-.Lgccode_main_0
                        .quad            65537
                        .quad            752
                        .quad            .Lgcsite_main_22-.Lgccode_main_0
                        .quad            65537
                        .quad            768
                        .quad            .Lgcsite_main_23-.Lgccode_main_0
                        .quad            65537
                        .quad            784
                        .quad            12
                        .quad            1360
                        .quad            20
                        .quad            348160
                        .quad            16
                        .quad            21776
                        .quad            24
                        .quad            5574656
                        .quad            18
                        .quad            87108
                        .quad            26
                        .quad            22299648
                        .quad            20
                        .quad            348436
                        .quad            28
                        .quad            89199616
                        .quad            10
                        .quad            4
                        .quad            18
                        .quad            1024
                        .quad            14
                        .quad            80
                        .quad            18
                        .quad            1280
                        .popsection
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00001_0:    .string          "i"
.Lstartup_iln00001_1:    .string          "s"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            80
                        .long            64
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rip + .Lstartup_ilnames9000]
                        mov              r8d, 2
                        lea              r9, [rip + .Lstartup_iloffs9000]
                        call             rt_proc_loc_add@PLT
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_rootcall:     .string          "main"
                        .align           8
.Lstartup_prec_root:    .quad            .Lstartup_rootcall
                        .quad            main_α
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
                        lea              rdi, [rip + .Lstartup_prec_root]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            1
                        .quad            .Lgcsites_main_0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
