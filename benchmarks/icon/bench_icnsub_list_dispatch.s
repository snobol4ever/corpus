                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnsub_list_dispatch.icn"
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
                        sub              rsp, 800
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
                        mov              qword ptr [rdi + 784], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 792], rbp
                        mov              rbp, rsp
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
n0_call_direct_α:       sub              rsp, 16
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_36_999
                        add              rsp, 16;                             jmp   n1_line_mark_α
.Lcall_direct_α_36_999: mov              qword ptr [rsp + 0], rax             # result
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
.Lstnof1:               .string          "bench_icnsub_list_dispatch.icn"
                        .popsection
.Lline_mark_α_37_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_37_stno
                        .long            0
                        .long            2
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_38_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_38_0: .quad .Lline_mark_α_38_0_s; .popsection
.Lline_mark_α_38_0_s:   .string          "bench_icnsub_list_dispatch.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
.Lline_mark_α_39_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_39_stno
                        .long            0
                        .long            3
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_lit_integer_α
.Llit_integer_α_41_0:   .quad            11
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_42_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_lit_integer_α
.Llit_integer_α_42_0:   .quad            22
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_43_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_lit_integer_α
.Llit_integer_α_43_0:   .quad            33
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_44_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_lit_integer_α
.Llit_integer_α_44_0:   .quad            44
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_45_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_lit_integer_α
.Llit_integer_α_45_0:   .quad            55
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_46_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_integer_α
.Llit_integer_α_46_0:   .quad            66
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_47_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_lit_integer_α
.Llit_integer_α_47_0:   .quad            77
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_48_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_make_list_α
.Llit_integer_α_48_0:   .quad            88
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_make_list_bx, @function
n11_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_make_list_α:        sub              rsp, 16
                        sub              rsp, 128
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 8
                        call             rt_make_list@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 128
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n12_assign_α
                        .size            n11_make_list_bx, .-n11_make_list_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        add              rsp, 144;                            jmp   n13_line_mark_α
                        .size            n12_assign_bx, .-n12_assign_bx
                        .type            n13_line_mark_bx, @function
n13_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
.Lline_mark_α_52_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_52_stno
                        .long            0
                        .long            4
                        .quad            .Lstnof1
                        .popsection
n13_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n14_lit_integer_α
                        .size            n13_line_mark_bx, .-n13_line_mark_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_54_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_lit_integer_α
.Llit_integer_α_54_0:   .quad            1
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_55_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_to_α
.Llit_integer_α_55_0:   .quad            2000000
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_to_bx, @function
n16_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_13:       cmp              eax, -2;                             jne   .Lto_vd_57_1
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_57_1:           test             eax, eax;                            jne   .Lto_α_57_996
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n31_line_mark_α
.Lto_α_57_996:          push             rax                                  # gc_poll bb_to.cpp:36
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_10:       cmp              eax, -2;                             jne   .Lto_vd_57_0
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_57_0:           test             eax, eax;                            jne   .Lto_α_57_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n31_line_mark_α
.Lto_α_57_997:          push             rax                                  # gc_poll bb_to.cpp:36
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        push             rax                                  # gc_poll bb_to.cpp:104
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 168], rax
.Lto_α_57_0:            mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              rax, rcx;                            jle   .Lto_α_57_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n31_line_mark_α
.Lto_α_57_998:          mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:124
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n17_assign_α
n16_to_β:               inc              qword ptr [rsp + 160];               jno   .Lto_β_57_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n31_line_mark_α
.Lto_β_57_999:                                                                jmp   .Lto_α_57_0
                        .size            n16_to_bx, .-n16_to_bx
                        .type            n17_assign_bx, @function
n17_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n18_bound_α
                        .size            n17_assign_bx, .-n17_assign_bx
                        .type            n18_bound_bx, @function
n18_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_bound_α:            mov              qword ptr [rsp + 224], rsp;          jmp   n19_var_ref_α
n18_bound_β:                                                                  jmp   n19_var_ref_α
                        .size            n18_bound_bx, .-n18_bound_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 752]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_var_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:                                                                    jmp   n21_lit_integer_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_65_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_coerce_numeric_α
.Llit_integer_α_65_0:   .quad            8
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_coerce_numeric_bx, @function
n22_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 768]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_67_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_67_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_67_0
.Lcoerce_numeric_α_67_1:
                        mov              rax, qword ptr [rsp + 768]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 776]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_binop_α
.Lcoerce_numeric_α_67_0:
                        lea              rdi, [rsp + 768]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 21491613798
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_16:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_67_2
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_67_2:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_67_999
                        add              rsp, 16
                        add              rsp, -112;                           jmp   n30_unmark_α
.Lcoerce_numeric_α_67_999:
                                                                              jmp   n23_binop_α
                        .size            n22_coerce_numeric_bx, .-n22_coerce_numeric_bx
                        .type            n23_binop_bx, @function
n23_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_mod_strict@GOTPCREL]
.Lgcsite_main_19:       cmp              al, 255;                             jne   .Lbinop_vd_68_3
                        call             c_rt_mod_strict@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_68_3:        cmp              al, 104;                             jne   .Lbinop_α_68_999
                        add              rsp, 16
                        add              rsp, -96;                            jmp   n30_unmark_α
.Lbinop_α_68_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:322
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n24_lit_integer_α
                        .size            n23_binop_bx, .-n23_binop_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_69_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_coerce_numeric_α
.Llit_integer_α_69_0:   .quad            1
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_coerce_numeric_bx, @function
n25_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_71_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_71_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_71_0
.Lcoerce_numeric_α_71_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_binop_α
.Lcoerce_numeric_α_71_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_22:       cmp              al, 255;                             jne   .Lcoerce_numeric_vd_71_4
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_71_4:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_71_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n30_unmark_α
.Lcoerce_numeric_α_71_999:
                                                                              jmp   n26_binop_α
                        .size            n25_coerce_numeric_bx, .-n25_coerce_numeric_bx
                        .type            n26_binop_bx, @function
n26_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_72_2
                        add              rax, 1;                              jo    .Lbinop_α_72_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_72_7
.Lbinop_α_72_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_72_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_72_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_72_4
.Lbinop_α_72_3:         movq             xmm0, rsi
.Lbinop_α_72_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_72_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_72_7:                                                               jmp   n27_subscript_α
.Lbinop_α_72_0:         mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_72_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n30_unmark_α
.Lbinop_α_72_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n27_subscript_α
                        .size            n26_binop_bx, .-n26_binop_bx
                        .type            n27_subscript_bx, @function
n27_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:        sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_73_1:     mov              rdi, qword ptr [rsp + 112]           # var_ref
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_73_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_30:       cmp              al, 255;                             jne   .Lsubscript_vd_73_6
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_73_6:    cmp              al, 255;                             jne   .Lsubscript_α_73_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_73_1
.Lsubscript_α_73_4:     push             rax
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
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_73_3
.Lsubscript_α_73_2:     call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_27:       cmp              al, 255;                             jne   .Lsubscript_vd_73_5
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_73_5:    push             rax
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
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_73_3:     cmp              al, 104;                             jne   .Lsubscript_α_73_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n30_unmark_α
.Lsubscript_α_73_999:   mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_deref_α
                        .size            n27_subscript_bx, .-n27_subscript_bx
                        .type            n28_deref_bx, @function
n28_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_74_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n30_unmark_α
.Lderef_α_74_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n29_assign_α
                        .size            n28_deref_bx, .-n28_deref_bx
                        .type            n29_assign_bx, @function
n29_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n30_unmark_α
                        .size            n29_assign_bx, .-n29_assign_bx
                        .type            n30_unmark_bx, @function
n30_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_unmark_α:           add              rsp, 144;                            jmp   n16_to_β
                        .size            n30_unmark_bx, .-n30_unmark_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
.Lline_mark_α_78_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_78_stno
                        .long            0
                        .long            5
                        .quad            .Lstnof1
                        .popsection
n31_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n32_var_ref_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 656]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_deref_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_deref_bx, @function
n33_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_82_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lderef_α_82_999:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n34_line_mark_α
                        .size            n33_deref_bx, .-n33_deref_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_83_stno:  .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_83_stno
                        .long            0
                        .long            5
                        .quad            .Lstnof1
                        .popsection
n34_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n35_call_byname_α
                        .size            n34_line_mark_bx, .-n34_line_mark_bx
                        .type            n35_call_byname_bx, @function
n35_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_byname_α:      sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd86: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd86]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_85_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   main_ω
.Lcall_byname_α_85_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   main_ω
                        .size            n35_call_byname_bx, .-n35_call_byname_bx
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
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 800]
                        mov              rbp, qword ptr [rbp + 792];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            3437320293722
                        .quad            382252089440
                        .quad            .Lgcmap_main_s
                        .quad            688
                        .quad            5
                        .quad            105553116266496
                        .quad            17596481011808
                        .quad            52776558133360
                        .quad            17596481011872
                        .quad            562949953421488
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_0:       .quad            37
                        .quad            .Lgcmap_main
                        .quad            9223389626893337376
                        .quad            .Lgccode_main_0
                        .quad            .Lgcsite_main_0-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_3-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_2-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_13-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_12-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_11-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_10-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_9-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_8-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_7-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_6-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_5-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_4-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_16-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_15-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_14-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_19-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_18-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_17-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_22-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_21-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_20-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_24-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_23-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_30-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_29-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_28-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_27-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_26-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_25-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_32-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_31-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_34-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_33-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_35-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_36-.Lgccode_main_0
                        .quad            65537
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
.Lstartup_iln00001_1:    .string          "L"
.Lstartup_iln00001_2:    .string          "t"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            .Lstartup_iln00001_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            656
                        .long            672
                        .long            640
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        xor              esi, esi
                        xor              edx, edx
                        lea              rcx, [rip + .Lstartup_ilnames9000]
                        mov              r8d, 3
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
