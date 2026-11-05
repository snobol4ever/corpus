                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnstr_concat_int_dispatch.icn"
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_21_999
                        add              rsp, 16;                             jmp   n1_line_mark_α
.Lcall_direct_α_21_999: mov              qword ptr [rsp + 0], rax             # result
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
.Lstnof1:               .string          "bench_icnstr_concat_int_dispatch.icn"
                        .popsection
.Lline_mark_α_22_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_22_stno
                        .long            0
                        .long            2
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 2
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_23_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n2_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_23_0: .quad .Lline_mark_α_23_0_s; .popsection
.Lline_mark_α_23_0_s:   .string          "bench_icnstr_concat_int_dispatch.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
.Lline_mark_α_24_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_24_stno
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_26_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_lit_integer_α
.Llit_integer_α_26_0:   .quad            1
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_27_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_to_α
.Llit_integer_α_27_0:   .quad            2000000
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_to_bx, @function
n5_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_to_α:                sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_9:        test             eax, eax;                            jne   .Lto_α_29_996
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n16_line_mark_α
.Lto_α_29_996:          push             rax                                  # gc_poll bb_to.cpp:44
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
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_7:        test             eax, eax;                            jne   .Lto_α_29_997
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n16_line_mark_α
.Lto_α_29_997:          push             rax                                  # gc_poll bb_to.cpp:44
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
                        push             rax                                  # gc_poll bb_to.cpp:137
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
.Lto_α_29_0:            mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jle   .Lto_α_29_998
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n16_line_mark_α
.Lto_α_29_998:          mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:157
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
1:                                                                            jmp   n6_assign_α
n5_to_β:                inc              qword ptr [rsp + 16];                jno   .Lto_β_29_999
                        add              rsp, 32
                        add              rsp, 16;                             jmp   n16_line_mark_α
.Lto_β_29_999:                                                                jmp   .Lto_α_29_0
                        .size            n5_to_bx, .-n5_to_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n7_bound_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_bound_bx, @function
n7_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_bound_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n8_lit_string_α
n7_bound_β:             add              rsp, 16
                        add              rsp, -16;                            jmp   n8_lit_string_α
                        .size            n7_bound_bx, .-n7_bound_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_33_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_33_0: .quad .Llit_string_α_33_0_s; .popsection
.Llit_string_α_33_0_s:  .string          "abcdefgh"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_var_bx, @function
n9_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:                                                                     jmp   n10_lit_integer_α
                        .size            n9_var_bx, .-n9_var_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_coerce_numeric_α
.Llit_integer_α_36_0:   .quad            97
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_coerce_numeric_bx, @function
n11_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 112]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_38_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_38_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_38_0
.Lcoerce_numeric_α_38_1:
                        mov              rax, qword ptr [rsp + 112]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 120]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_binop_α
.Lcoerce_numeric_α_38_0:
                        lea              rdi, [rsp + 112]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 21491613798
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_11:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
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
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_38_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n15_unmark_α
.Lcoerce_numeric_α_38_999:
                                                                              jmp   n12_binop_α
                        .size            n11_coerce_numeric_bx, .-n11_coerce_numeric_bx
                        .type            n12_binop_bx, @function
n12_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_mod_strict@GOTPCREL]
.Lgcsite_main_13:       cmp              al, 104;                             jne   .Lbinop_α_39_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n15_unmark_α
.Lbinop_α_39_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:338
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
1:                                                                            jmp   n13_binop_α
                        .size            n12_binop_bx, .-n12_binop_bx
                        .type            n13_binop_bx, @function
n13_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_main_16:       cmp              al, 255;                             jne   .Lbinop_vd_40_0
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_40_0:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
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
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_40_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n15_unmark_α
.Lbinop_α_40_999:                                                             jmp   n14_assign_α
                        .size            n13_binop_bx, .-n13_binop_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n15_unmark_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_unmark_bx, @function
n15_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_unmark_α:           add              rsp, 96;                             jmp   n5_to_β
                        .size            n15_unmark_bx, .-n15_unmark_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
.Lline_mark_α_44_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_44_stno
                        .long            0
                        .long            4
                        .quad            .Lstnof1
                        .popsection
n16_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 4;            jmp   n17_var_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:                                                                    jmp   n18_unop_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_unop_bx, @function
n18_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_unop_α:             sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_main_18:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:40
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
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n19_line_mark_α
                        .size            n18_unop_bx, .-n18_unop_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_49_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_49_stno
                        .long            0
                        .long            4
                        .quad            .Lstnof1
                        .popsection
n19_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 4;            jmp   n20_call_byname_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_call_byname_bx, @function
n20_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_byname_α:      sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd52: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd52]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_51_999
                        add              rsp, 32
                        add              rsp, 16;                             jmp   main_ω
.Lcall_byname_α_51_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   main_ω
                        .size            n20_call_byname_bx, .-n20_call_byname_bx
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
.Lgcsites_main_0:       .quad            21
                        .quad            .Lgcmap_main
                        .quad            9223389626893336672
                        .quad            .Lgccode_main_0
                        .quad            .Lgcsite_main_0-.Lgccode_main_0
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_1-.Lgccode_main_0
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_9-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            12
                        .quad            .Lgcsite_main_8-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            20
                        .quad            .Lgcsite_main_7-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            12
                        .quad            .Lgcsite_main_6-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            20
                        .quad            .Lgcsite_main_5-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            12
                        .quad            .Lgcsite_main_4-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            20
                        .quad            .Lgcsite_main_3-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            12
                        .quad            .Lgcsite_main_2-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739072
                        .quad            20
                        .quad            .Lgcsite_main_11-.Lgccode_main_0
                        .quad            65537
                        .quad            77309412032
                        .quad            20
                        .quad            .Lgcsite_main_10-.Lgccode_main_0
                        .quad            65537
                        .quad            77309412032
                        .quad            28
                        .quad            .Lgcsite_main_13-.Lgccode_main_0
                        .quad            65537
                        .quad            85899346624
                        .quad            22
                        .quad            .Lgcsite_main_12-.Lgccode_main_0
                        .quad            65537
                        .quad            85899346624
                        .quad            30
                        .quad            .Lgcsite_main_16-.Lgccode_main_0
                        .quad            65537
                        .quad            94489281216
                        .quad            24
                        .quad            .Lgcsite_main_15-.Lgccode_main_0
                        .quad            65537
                        .quad            94489281216
                        .quad            24
                        .quad            .Lgcsite_main_14-.Lgccode_main_0
                        .quad            65537
                        .quad            94489281216
                        .quad            32
                        .quad            .Lgcsite_main_18-.Lgccode_main_0
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_17-.Lgccode_main_0
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_19-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739080
                        .quad            12
                        .quad            .Lgcsite_main_20-.Lgccode_main_0
                        .quad            65537
                        .quad            34359739080
                        .quad            16
                        .quad            2787498
                        .quad            128
                        .popsection
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
                        .section         .data.rel.ro,"aw",@progbits
                        .balign          8
                        .quad            4851575594099624754
                        .quad            48
                        .quad            0
                        .quad            0
.Lstartup_gnames:
                        .quad            .Lstartup_ign0
                        .quad            .Lstartup_ign1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00001_0:    .string          "i"
.Lstartup_iln00001_1:    .string          "t"
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
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .section         .data
                        .balign          16
                        .quad            0
                        .long            9
                        .short           232
                        .short           0
.Lstartup_procs:
                        .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .long            0
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            0
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .balign          16
                        .quad            0
                        .long            17
                        .short           215
                        .short           0
.Lstartup_phash:
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_procs]
                        mov              esi, 1
                        lea              rdx, [rip + .Lstartup_phash]
                        mov              ecx, 64
                        call             rt_procs_install@PLT
                        lea              rdi, [rip + .Lstartup_gnames]
                        mov              esi, 2
                        lea              rdx, [rip + .Lstartup_icn_loc]
                        mov              ecx, 1
                        call             rt_icn_tabs_install@PLT
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
                        .balign          8
                        .quad            4851575594099624754
                        .quad            80
                        .quad            0
                        .quad            0
.Lstartup_icn_loc:
                        .quad            .Lstartup_rootnm
                        .quad            .Lstartup_ilnames9000
                        .long            2
                        .long            0
                        .quad            .Lstartup_iloffs9000
                        .quad            0
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
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
