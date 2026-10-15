                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnstr_concat_table.icn"
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
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 719
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 719
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_0:
main_α:
                        sub              rsp, 848
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        movups           xmmword ptr [rdi + 96], xmm0
                        movups           xmmword ptr [rdi + 112], xmm0
                        movups           xmmword ptr [rdi + 128], xmm0
                        movups           xmmword ptr [rdi + 144], xmm0
                        movups           xmmword ptr [rdi + 160], xmm0
                        movups           xmmword ptr [rdi + 176], xmm0
                        movups           xmmword ptr [rdi + 192], xmm0
                        movups           xmmword ptr [rdi + 208], xmm0
                        movups           xmmword ptr [rdi + 224], xmm0
                        movups           xmmword ptr [rdi + 240], xmm0
                        movups           xmmword ptr [rdi + 256], xmm0
                        movups           xmmword ptr [rdi + 272], xmm0
                        movups           xmmword ptr [rdi + 288], xmm0
                        movups           xmmword ptr [rdi + 304], xmm0
                        movups           xmmword ptr [rdi + 320], xmm0
                        movups           xmmword ptr [rdi + 336], xmm0
                        movups           xmmword ptr [rdi + 352], xmm0
                        movups           xmmword ptr [rdi + 368], xmm0
                        movups           xmmword ptr [rdi + 384], xmm0
                        movups           xmmword ptr [rdi + 400], xmm0
                        movups           xmmword ptr [rdi + 416], xmm0
                        movups           xmmword ptr [rdi + 432], xmm0
                        movups           xmmword ptr [rdi + 448], xmm0
                        movups           xmmword ptr [rdi + 464], xmm0
                        movups           xmmword ptr [rdi + 480], xmm0
                        movups           xmmword ptr [rdi + 496], xmm0
                        movups           xmmword ptr [rdi + 512], xmm0
                        movups           xmmword ptr [rdi + 528], xmm0
                        movups           xmmword ptr [rdi + 544], xmm0
                        movups           xmmword ptr [rdi + 560], xmm0
                        movups           xmmword ptr [rdi + 576], xmm0
                        movups           xmmword ptr [rdi + 592], xmm0
                        movups           xmmword ptr [rdi + 608], xmm0
                        movups           xmmword ptr [rdi + 624], xmm0
                        movups           xmmword ptr [rdi + 640], xmm0
                        movups           xmmword ptr [rdi + 656], xmm0
                        movups           xmmword ptr [rdi + 672], xmm0
                        movups           xmmword ptr [rdi + 688], xmm0
                        movups           xmmword ptr [rdi + 704], xmm0
                        movups           xmmword ptr [rdi + 720], xmm0
                        movups           xmmword ptr [rdi + 736], xmm0
                        movups           xmmword ptr [rdi + 752], xmm0
                        movups           xmmword ptr [rdi + 768], xmm0
                        movups           xmmword ptr [rdi + 784], xmm0
                        movups           xmmword ptr [rdi + 800], xmm0
                        movups           xmmword ptr [rdi + 816], xmm0
                        mov              qword ptr [rdi + 832], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 744]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n0_call_direct_bx, @function
n0_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_direct_α:       lea              rdi, [rsp + 688]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:261
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n1_line_mark_α
                                                                              jmp   n1_line_mark_α
n0_call_direct_β:                                                             jmp   n1_line_mark_α
                        .size            n0_call_direct_bx, .-n0_call_direct_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .rodata
.Lstnof1:               .string          "bench_icnstr_concat_table.icn"
                        .popsection
.Lline_mark_α_41_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_41_stno
                        .long            0
                        .long            2
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_42_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_42_0:     .quad            .Lline_mark_α_42_0_s
.Lline_mark_α_42_0_s:   .string          "bench_icnstr_concat_table.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_43_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_43_stno
                        .long            0
                        .long            3
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n3_lit_string_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n4_assign_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          ""
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n5_line_mark_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_line_mark_bx, @function
n5_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_47_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_47_stno
                        .long            0
                        .long            4
                        .quad            .Lstnof1
                        .popsection
n5_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n6_lit_integer_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_49_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n7_line_mark_α
.Llit_integer_α_49_0:   .quad            0
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_50_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_50_stno
                        .long            0
                        .long            4
                        .quad            .Lstnof1
                        .popsection
n7_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n8_call_byname_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_call_byname_bx, @function
n8_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_byname_α:       mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lcall_byname_α_rkfn53: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn53]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n10_line_mark_α
                                                                              jmp   n9_assign_α
n8_call_byname_β:                                                             jmp   n10_line_mark_α
                        .size            n8_call_byname_bx, .-n8_call_byname_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n10_line_mark_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_line_mark_bx, @function
n10_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_55_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_55_stno
                        .long            0
                        .long            5
                        .quad            .Lstnof1
                        .popsection
n10_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n11_lit_integer_α
                        .size            n10_line_mark_bx, .-n10_line_mark_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_57_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n12_lit_integer_α
.Llit_integer_α_57_0:   .quad            1
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_58_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n13_to_α
.Llit_integer_α_58_0:   .quad            40000
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_to_bx, @function
n13_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_to_α:               mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n35_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 176], 3
                        mov              qword ptr [rsp + 184], rax
                        push             rax                                  # gc_poll bb_to.cpp:162
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n35_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax
                        push             rax                                  # gc_poll bb_to.cpp:170
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 160], rax
.Lto_α_60_0:            mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx;                            jg    n35_line_mark_α
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax;          jmp   n14_assign_α
n13_to_β:               inc              qword ptr [rsp + 160];               jo    n35_line_mark_α
                                                                              jmp   .Lto_α_60_0
                        .size            n13_to_bx, .-n13_to_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 144]
                        mov              rdx, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n15_bound_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_bound_bx, @function
n15_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_bound_α:            mov              qword ptr [rsp + 224], rsp;          jmp   n16_line_mark_α
                        .size            n15_bound_bx, .-n15_bound_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_64_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_64_stno
                        .long            0
                        .long            6
                        .quad            .Lstnof1
                        .popsection
n16_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n17_line_mark_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_66_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_66_stno
                        .long            0
                        .long            6
                        .quad            .Lstnof1
                        .popsection
n17_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n18_var_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_lit_string_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rsp + 16], 2              # result
                        mov              dword ptr [rsp + 20], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_70_0]
                        mov              qword ptr [rsp + 24], rax;           jmp   n20_binop_α
.Llit_string_α_70_0:    .quad            .Llit_string_α_70_0_s
.Llit_string_α_70_0_s:  .string          "x"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_binop_bx, @function
n20_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:            mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_main_14:       cmp              al, 255;                             jne   .Lbinop_vd_71_0
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_71_0:        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n21_assign_α
                        .size            n20_binop_bx, .-n20_binop_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n22_line_mark_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_73_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_73_stno
                        .long            0
                        .long            7
                        .quad            .Lstnof1
                        .popsection
n22_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n23_var_ref_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 720]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n24_lit_string_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_lit_string_bx, @function
n24_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_77_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n25_var_α
.Llit_string_α_77_0:    .quad            .Llit_string_α_77_0_s
.Llit_string_α_77_0_s:  .string          "k"
                        .size            n24_lit_string_bx, .-n24_lit_string_bx
                        .type            n25_var_bx, @function
n25_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 376], rax;          jmp   n26_lit_integer_α
                        .size            n25_var_bx, .-n25_var_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_80_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n27_coerce_numeric_α
.Llit_integer_α_80_0:   .quad            97
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              eax, dword ptr [rsp + 704]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_82_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_82_0
                        mov              eax, dword ptr [rsp + 384]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_82_0
.Lcoerce_numeric_α_82_1:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 360], rax;          jmp   n28_binop_α
.Lcoerce_numeric_α_82_0:
                        lea              rdi, [rsp + 704]
                        lea              rsi, [rsp + 384]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 21491613798
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_17:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_82_1
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_82_1:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 352]
                        cmp              al, 104;                             je    n33_unmark_α
                                                                              jmp   n28_binop_α
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_binop_bx, @function
n28_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        call             qword ptr [rip + rt_mod_strict@GOTPCREL]
.Lgcsite_main_20:       cmp              al, 255;                             jne   .Lbinop_vd_83_2
                        call             c_rt_mod_strict@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_83_2:        cmp              al, 104;                             je    n33_unmark_α
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:354
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n29_binop_α
                        .size            n28_binop_bx, .-n28_binop_bx
                        .type            n29_binop_bx, @function
n29_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, qword ptr [rsp + 8]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_main_23:       cmp              al, 255;                             jne   .Lbinop_vd_84_3
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_84_3:        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:85
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n30_var_α
                        .size            n29_binop_bx, .-n29_binop_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 424], rax;          jmp   n31_assign_var_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_assign_var_bx, @function
n31_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_var_α:       mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        cmp              dil, 40;                             jne   .Lassign_var_α_88_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_88_0
                        test             rsi, rsi;                            je    .Lassign_var_α_88_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_88_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_88_1
.Lassign_var_α_88_5:    cmp              dil, 24;                             je    .Lassign_var_α_88_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_88_0
.Lassign_var_α_88_1:    test             rsi, rsi;                            je    .Lassign_var_α_88_0
                        mov              r8, qword ptr [rsp + 416]
                        mov              r9, qword ptr [rsp + 424]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_30:       cmp              al, 255;                             jne   .Lassign_var_vd_88_4
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_88_4:   cmp              al, 104;                             je    n33_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n32_conjunction_α
.Lassign_var_α_88_0:    call             rt_subscript_var_strict@PLT
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
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n33_unmark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 424]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n33_unmark_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n32_conjunction_α
                        .size            n31_assign_var_bx, .-n31_assign_var_bx
                        .type            n32_conjunction_bx, @function
n32_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_conjunction_α:      mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 280], rax;          jmp   n33_unmark_α
n32_conjunction_β:                                                            jmp   n33_unmark_α
                        .size            n32_conjunction_bx, .-n32_conjunction_bx
                        .type            n33_unmark_bx, @function
n33_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_unmark_α:           mov              rsp, qword ptr [rsp + 224];          jmp   n34_line_mark_α
                        .size            n33_unmark_bx, .-n33_unmark_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_92_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_92_stno
                        .long            0
                        .long            5
                        .quad            .Lstnof1
                        .popsection
n34_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n13_to_β
                        .size            n34_line_mark_bx, .-n34_line_mark_bx
                        .type            n35_line_mark_bx, @function
n35_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_94_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_94_stno
                        .long            0
                        .long            9
                        .quad            .Lstnof1
                        .popsection
n35_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n36_var_α
                        .size            n35_line_mark_bx, .-n35_line_mark_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 104], rax;          jmp   n37_unop_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_unop_bx, @function
n37_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_unop_α:             mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
.Lgcsite_main_33:       cmp              al, 255;                             jne   .Lunop_vd_98_5
                        call             c_rt_size_d@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
.Lunop_vd_98_5:         mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:117
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n38_line_mark_α
                        .size            n37_unop_bx, .-n37_unop_bx
                        .type            n38_line_mark_bx, @function
n38_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_99_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_99_stno
                        .long            0
                        .long            9
                        .quad            .Lstnof1
                        .popsection
n38_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n39_call_byname_α
                        .size            n38_line_mark_bx, .-n38_line_mark_bx
                        .type            n39_call_byname_bx, @function
n39_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_byname_α:      mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_byname_α_rkfn102: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn102]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n39_call_byname_β:                                                            jmp   main_ω
                        .size            n39_call_byname_bx, .-n39_call_byname_bx
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
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 848;                            jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        add              rsp, 848;                            jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            3643478723930
                        .quad            107374182496
                        .quad            .Lgcmap_main_s
                        .quad            736
                        .quad            5
                        .quad            175921860444160
                        .quad            17596481011872
                        .quad            52776558133424
                        .quad            17596481011936
                        .quad            545357767377136
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_0:       .quad            36
                        .quad            .Lgcmap_main
                        .quad            10376311131500184400
                        .quad            .Lgccode_main_0
                        .quad            .Lgcsite_main_0
                        .quad            1
                        .quad            .Lgcsite_main_1
                        .quad            1
                        .quad            .Lgcsite_main_2
                        .quad            1
                        .quad            .Lgcsite_main_3
                        .quad            1
                        .quad            .Lgcsite_main_4
                        .quad            1
                        .quad            .Lgcsite_main_5
                        .quad            1
                        .quad            .Lgcsite_main_6
                        .quad            1
                        .quad            .Lgcsite_main_7
                        .quad            1
                        .quad            .Lgcsite_main_8
                        .quad            1
                        .quad            .Lgcsite_main_9
                        .quad            1
                        .quad            .Lgcsite_main_10
                        .quad            1
                        .quad            .Lgcsite_main_11
                        .quad            1
                        .quad            .Lgcsite_main_12
                        .quad            1
                        .quad            .Lgcsite_main_13
                        .quad            1
                        .quad            .Lgcsite_main_14
                        .quad            1
                        .quad            .Lgcsite_main_15
                        .quad            1
                        .quad            .Lgcsite_main_16
                        .quad            1
                        .quad            .Lgcsite_main_17
                        .quad            1
                        .quad            .Lgcsite_main_18
                        .quad            1
                        .quad            .Lgcsite_main_19
                        .quad            1
                        .quad            .Lgcsite_main_20
                        .quad            1
                        .quad            .Lgcsite_main_21
                        .quad            1
                        .quad            .Lgcsite_main_22
                        .quad            1
                        .quad            .Lgcsite_main_23
                        .quad            1
                        .quad            .Lgcsite_main_24
                        .quad            1
                        .quad            .Lgcsite_main_25
                        .quad            1
                        .quad            .Lgcsite_main_26
                        .quad            137438953473
                        .quad            .Lgcsite_main_27
                        .quad            1
                        .quad            .Lgcsite_main_28
                        .quad            1
                        .quad            .Lgcsite_main_29
                        .quad            1
                        .quad            .Lgcsite_main_30
                        .quad            1
                        .quad            .Lgcsite_main_31
                        .quad            1
                        .quad            .Lgcsite_main_32
                        .quad            1
                        .quad            .Lgcsite_main_33
                        .quad            1
                        .quad            .Lgcsite_main_34
                        .quad            1
                        .quad            .Lgcsite_main_35
                        .quad            1
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
.Lstartup_ign2:         .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00001_0:    .string          "i"
.Lstartup_iln00001_1:    .string          "s"
.Lstartup_iln00001_2:    .string          "t"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            .Lstartup_iln00001_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            704
                        .long            688
                        .long            720
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 3
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 3
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
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
                        .section         .rodata
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
