                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnsub_table_miss_semantics.icn"
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
                        sub              rsp, 2816
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2808
                        rep              stosb
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 2712]
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
n0_call_direct_α:       lea              rdi, [rsp + 2656]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2640], rax
                        mov              qword ptr [rsp + 2648], rdx
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
.Lstnof1:               .string          "bench_icnsub_table_miss_semantics.icn"
                        .popsection
.Lline_mark_α_137_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_137_stno
                        .long            0
                        .long            7
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_138_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_138_0:    .quad            .Lline_mark_α_138_0_s
.Lline_mark_α_138_0_s:  .string          "bench_icnsub_table_miss_semantics.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_139_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_139_stno
                        .long            0
                        .long            8
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rsp + 2592], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n4_line_mark_α
.Llit_integer_α_141_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_142_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_142_stno
                        .long            0
                        .long            8
                        .quad            .Lstnof1
                        .popsection
n4_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n5_call_byname_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_byname_bx, @function
n5_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_byname_α:       mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lcall_byname_α_rkfn145: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn145]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_byname_β:                                                             jmp   n7_line_mark_α
                        .size            n5_call_byname_bx, .-n5_call_byname_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 2544]
                        mov              rdx, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_147_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_147_stno
                        .long            0
                        .long            9
                        .quad            .Lstnof1
                        .popsection
n7_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n8_var_ref_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_151_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n10_lit_integer_α
.Llit_string_α_151_0:   .quad            .Llit_string_α_151_0_s
.Llit_string_α_151_0_s: .string          "alpha"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n11_assign_var_α
.Llit_integer_α_152_0:  .quad            11
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_assign_var_bx, @function
n11_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:       mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              rdx, qword ptr [rsp + 2464]
                        mov              rcx, qword ptr [rsp + 2472]
                        cmp              dil, 40;                             jne   .Lassign_var_α_154_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_154_0
                        test             rsi, rsi;                            je    .Lassign_var_α_154_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_154_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_154_1
.Lassign_var_α_154_5:   cmp              dil, 24;                             je    .Lassign_var_α_154_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_154_0
.Lassign_var_α_154_1:   test             rsi, rsi;                            je    .Lassign_var_α_154_0
                        mov              r8, qword ptr [rsp + 2512]
                        mov              r9, qword ptr [rsp + 2520]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_10:       cmp              al, 255;                             jne   .Lassign_var_vd_154_0
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_9:        mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_154_0:  cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n12_line_mark_α
.Lassign_var_α_154_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n12_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2512]
                        mov              rcx, qword ptr [rsp + 2520]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n12_line_mark_α
                        .size            n11_assign_var_bx, .-n11_assign_var_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_155_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_155_stno
                        .long            0
                        .long            10
                        .quad            .Lstnof1
                        .popsection
n12_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n13_var_ref_α
                        .size            n12_line_mark_bx, .-n12_line_mark_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n14_lit_string_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n15_lit_integer_α
.Llit_string_α_159_0:   .quad            .Llit_string_α_159_0_s
.Llit_string_α_159_0_s: .string          "beta"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n16_assign_var_α
.Llit_integer_α_160_0:  .quad            22
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_assign_var_bx, @function
n16_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_var_α:       mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              rdx, qword ptr [rsp + 2368]
                        mov              rcx, qword ptr [rsp + 2376]
                        cmp              dil, 40;                             jne   .Lassign_var_α_162_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_162_0
                        test             rsi, rsi;                            je    .Lassign_var_α_162_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_162_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_162_1
.Lassign_var_α_162_5:   cmp              dil, 24;                             je    .Lassign_var_α_162_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_162_0
.Lassign_var_α_162_1:   test             rsi, rsi;                            je    .Lassign_var_α_162_0
                        mov              r8, qword ptr [rsp + 2416]
                        mov              r9, qword ptr [rsp + 2424]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_17:       cmp              al, 255;                             jne   .Lassign_var_vd_162_1
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_162_1:  cmp              al, 104;                             je    n17_line_mark_α
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n17_line_mark_α
.Lassign_var_α_162_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n17_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2416]
                        mov              rcx, qword ptr [rsp + 2424]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n17_line_mark_α
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n17_line_mark_α
                        .size            n16_assign_var_bx, .-n16_assign_var_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_163_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_163_stno
                        .long            0
                        .long            11
                        .quad            .Lstnof1
                        .popsection
n17_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n18_var_ref_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n19_lit_integer_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rsp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n20_lit_integer_α
.Llit_integer_α_167_0:  .quad            7
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n21_assign_var_α
.Llit_integer_α_168_0:  .quad            77
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_assign_var_bx, @function
n21_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_var_α:       mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              rdx, qword ptr [rsp + 2288]
                        mov              rcx, qword ptr [rsp + 2296]
                        cmp              dil, 40;                             jne   .Lassign_var_α_170_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_170_0
                        test             rsi, rsi;                            je    .Lassign_var_α_170_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_170_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_170_1
.Lassign_var_α_170_5:   cmp              dil, 24;                             je    .Lassign_var_α_170_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_170_0
.Lassign_var_α_170_1:   test             rsi, rsi;                            je    .Lassign_var_α_170_0
                        mov              r8, qword ptr [rsp + 2320]
                        mov              r9, qword ptr [rsp + 2328]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_24:       cmp              al, 255;                             jne   .Lassign_var_vd_170_2
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_170_2:  cmp              al, 104;                             je    n22_line_mark_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n22_line_mark_α
.Lassign_var_α_170_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n22_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2320]
                        mov              rcx, qword ptr [rsp + 2328]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n22_line_mark_α
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n22_line_mark_α
                        .size            n21_assign_var_bx, .-n21_assign_var_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_171_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_171_stno
                        .long            0
                        .long            12
                        .quad            .Lstnof1
                        .popsection
n22_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n23_var_ref_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n24_lit_integer_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n25_lit_integer_α
.Llit_integer_α_175_0:  .quad            18446744073709551613
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_176_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n26_assign_var_α
.Llit_integer_α_176_0:  .quad            33
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_var_bx, @function
n26_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_var_α:       mov              rdi, qword ptr [rsp + 2192]
                        mov              rsi, qword ptr [rsp + 2200]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        cmp              dil, 40;                             jne   .Lassign_var_α_178_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_178_0
                        test             rsi, rsi;                            je    .Lassign_var_α_178_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_178_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_178_1
.Lassign_var_α_178_5:   cmp              dil, 24;                             je    .Lassign_var_α_178_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_178_0
.Lassign_var_α_178_1:   test             rsi, rsi;                            je    .Lassign_var_α_178_0
                        mov              r8, qword ptr [rsp + 2240]
                        mov              r9, qword ptr [rsp + 2248]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_31:       cmp              al, 255;                             jne   .Lassign_var_vd_178_3
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_178_3:  cmp              al, 104;                             je    n27_line_mark_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n27_line_mark_α
.Lassign_var_α_178_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_27:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n27_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2240]
                        mov              rcx, qword ptr [rsp + 2248]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n27_line_mark_α
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n27_line_mark_α
                        .size            n26_assign_var_bx, .-n26_assign_var_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_179_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_179_stno
                        .long            0
                        .long            13
                        .quad            .Lstnof1
                        .popsection
n27_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n28_var_ref_α
                        .size            n27_line_mark_bx, .-n27_line_mark_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n29_lit_integer_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n30_lit_integer_α
.Llit_integer_α_183_0:  .quad            0
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n31_assign_var_α
.Llit_integer_α_184_0:  .quad            99
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_assign_var_bx, @function
n31_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_var_α:       mov              rdi, qword ptr [rsp + 2112]
                        mov              rsi, qword ptr [rsp + 2120]
                        mov              rdx, qword ptr [rsp + 2128]
                        mov              rcx, qword ptr [rsp + 2136]
                        cmp              dil, 40;                             jne   .Lassign_var_α_186_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_186_0
                        test             rsi, rsi;                            je    .Lassign_var_α_186_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_186_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_186_1
.Lassign_var_α_186_5:   cmp              dil, 24;                             je    .Lassign_var_α_186_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_186_0
.Lassign_var_α_186_1:   test             rsi, rsi;                            je    .Lassign_var_α_186_0
                        mov              r8, qword ptr [rsp + 2160]
                        mov              r9, qword ptr [rsp + 2168]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_38:       cmp              al, 255;                             jne   .Lassign_var_vd_186_4
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_186_4:  cmp              al, 104;                             je    n32_line_mark_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n32_line_mark_α
.Lassign_var_α_186_0:   call             rt_subscript_var_strict@PLT
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
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n32_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2160]
                        mov              rcx, qword ptr [rsp + 2168]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n32_line_mark_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n32_line_mark_α
                        .size            n31_assign_var_bx, .-n31_assign_var_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_187_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_187_stno
                        .long            0
                        .long            14
                        .quad            .Lstnof1
                        .popsection
n32_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n33_var_ref_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n35_lit_integer_α
.Llit_string_α_191_0:   .quad            .Llit_string_α_191_0_s
.Llit_string_α_191_0_s: .string          "alpha"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n36_assign_var_α
.Llit_integer_α_192_0:  .quad            111
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_assign_var_bx, @function
n36_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_var_α:       mov              rdi, qword ptr [rsp + 2016]
                        mov              rsi, qword ptr [rsp + 2024]
                        mov              rdx, qword ptr [rsp + 2032]
                        mov              rcx, qword ptr [rsp + 2040]
                        cmp              dil, 40;                             jne   .Lassign_var_α_194_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_194_0
                        test             rsi, rsi;                            je    .Lassign_var_α_194_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_194_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_194_1
.Lassign_var_α_194_5:   cmp              dil, 24;                             je    .Lassign_var_α_194_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_194_0
.Lassign_var_α_194_1:   test             rsi, rsi;                            je    .Lassign_var_α_194_0
                        mov              r8, qword ptr [rsp + 2080]
                        mov              r9, qword ptr [rsp + 2088]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_45:       cmp              al, 255;                             jne   .Lassign_var_vd_194_5
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_44:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_194_5:  cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n37_line_mark_α
.Lassign_var_α_194_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_42:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n37_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2080]
                        mov              rcx, qword ptr [rsp + 2088]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_39:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n37_line_mark_α
                        .size            n36_assign_var_bx, .-n36_assign_var_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_195_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_195_stno
                        .long            0
                        .long            15
                        .quad            .Lstnof1
                        .popsection
n37_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n38_var_ref_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_199_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n40_subscript_α
.Llit_string_α_199_0:   .quad            .Llit_string_α_199_0_s
.Llit_string_α_199_0_s: .string          "alpha"
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_subscript_bx, @function
n40_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              rdx, qword ptr [rsp + 1328]
                        mov              rcx, qword ptr [rsp + 1336]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n41_lit_string_α
                        .size            n40_subscript_bx, .-n40_subscript_bx
                        .type            n41_lit_string_bx, @function
n41_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_201_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n42_var_ref_α
.Llit_string_α_201_0:   .quad            .Llit_string_α_201_0_s
.Llit_string_α_201_0_s: .string          " "
                        .size            n41_lit_string_bx, .-n41_lit_string_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n43_lit_string_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n44_subscript_α
.Llit_string_α_204_0:   .quad            .Llit_string_α_204_0_s
.Llit_string_α_204_0_s: .string          "beta"
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_subscript_bx, @function
n44_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1424]
                        mov              rcx, qword ptr [rsp + 1432]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_49:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n45_lit_string_α
                        .size            n44_subscript_bx, .-n44_subscript_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n46_var_ref_α
.Llit_string_α_206_0:   .quad            .Llit_string_α_206_0_s
.Llit_string_α_206_0_s: .string          " "
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n47_lit_integer_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_209_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n48_subscript_α
.Llit_integer_α_209_0:  .quad            7
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_subscript_bx, @function
n48_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_subscript_α:        mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1520]
                        mov              rcx, qword ptr [rsp + 1528]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n49_lit_string_α
                        .size            n48_subscript_bx, .-n48_subscript_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n50_var_ref_α
.Llit_string_α_211_0:   .quad            .Llit_string_α_211_0_s
.Llit_string_α_211_0_s: .string          " "
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n51_lit_integer_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n52_subscript_α
.Llit_integer_α_214_0:  .quad            18446744073709551613
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_subscript_bx, @function
n52_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_subscript_α:        mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1600]
                        mov              rcx, qword ptr [rsp + 1608]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n53_lit_string_α
                        .size            n52_subscript_bx, .-n52_subscript_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_216_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n54_var_ref_α
.Llit_string_α_216_0:   .quad            .Llit_string_α_216_0_s
.Llit_string_α_216_0_s: .string          " "
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n55_lit_integer_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              qword ptr [rsp + 1680], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n56_subscript_α
.Llit_integer_α_219_0:  .quad            0
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_subscript_bx, @function
n56_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              rdx, qword ptr [rsp + 1680]
                        mov              rcx, qword ptr [rsp + 1688]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_54:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n57_lit_string_α
                        .size            n56_subscript_bx, .-n56_subscript_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n58_var_ref_α
.Llit_string_α_221_0:   .quad            .Llit_string_α_221_0_s
.Llit_string_α_221_0_s: .string          " "
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n59_lit_string_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n60_subscript_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          "missing"
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_subscript_bx, @function
n60_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:        mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1760]
                        mov              rcx, qword ptr [rsp + 1768]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_57:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n61_lit_string_α
                        .size            n60_subscript_bx, .-n60_subscript_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n62_var_ref_α
.Llit_string_α_226_0:   .quad            .Llit_string_α_226_0_s
.Llit_string_α_226_0_s: .string          " "
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n63_lit_integer_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n64_subscript_α
.Llit_integer_α_229_0:  .quad            12345
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_subscript_bx, @function
n64_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:        mov              rdi, qword ptr [rsp + 1840]
                        mov              rsi, qword ptr [rsp + 1848]
                        mov              rdx, qword ptr [rsp + 1856]
                        mov              rcx, qword ptr [rsp + 1864]
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:91
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n65_deref_α
                        .size            n64_subscript_bx, .-n64_subscript_bx
                        .type            n65_deref_bx, @function
n65_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_deref_α:            mov              rdi, qword ptr [rsp + 1360]          # d
                        mov              rsi, qword ptr [rsp + 1368]          # d
                        call             rt_deref@PLT
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_60:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n66_deref_α
                        .size            n65_deref_bx, .-n65_deref_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              rdi, qword ptr [rsp + 1456]          # d
                        mov              rsi, qword ptr [rsp + 1464]          # d
                        call             rt_deref@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n67_deref_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_deref_bx, @function
n67_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_deref_α:            mov              rdi, qword ptr [rsp + 1536]          # d
                        mov              rsi, qword ptr [rsp + 1544]          # d
                        call             rt_deref@PLT
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n68_deref_α
                        .size            n67_deref_bx, .-n67_deref_bx
                        .type            n68_deref_bx, @function
n68_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:            mov              rdi, qword ptr [rsp + 1616]          # d
                        mov              rsi, qword ptr [rsp + 1624]          # d
                        call             rt_deref@PLT
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_66:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n69_deref_α
                        .size            n68_deref_bx, .-n68_deref_bx
                        .type            n69_deref_bx, @function
n69_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_deref_α:            mov              rdi, qword ptr [rsp + 1696]          # d
                        mov              rsi, qword ptr [rsp + 1704]          # d
                        call             rt_deref@PLT
.Lgcsite_main_69:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n70_deref_α
                        .size            n69_deref_bx, .-n69_deref_bx
                        .type            n70_deref_bx, @function
n70_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_deref_α:            mov              rdi, qword ptr [rsp + 1792]          # d
                        mov              rsi, qword ptr [rsp + 1800]          # d
                        call             rt_deref@PLT
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_70:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n71_deref_α
                        .size            n70_deref_bx, .-n70_deref_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            mov              rdi, qword ptr [rsp + 1872]          # d
                        mov              rsi, qword ptr [rsp + 1880]          # d
                        call             rt_deref@PLT
.Lgcsite_main_73:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n74_line_mark_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_72:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n72_line_mark_α
                        .size            n71_deref_bx, .-n71_deref_bx
                        .type            n72_line_mark_bx, @function
n72_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_238_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_238_stno
                        .long            0
                        .long            15
                        .quad            .Lstnof1
                        .popsection
n72_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n73_call_byname_α
                        .size            n72_line_mark_bx, .-n72_line_mark_bx
                        .type            n73_call_byname_bx, @function
n73_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_byname_α:      mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lcall_byname_α_rkfn241: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn241]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 13
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_75:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n74_line_mark_α
                                                                              jmp   n74_line_mark_α
n73_call_byname_β:                                                            jmp   n74_line_mark_α
                        .size            n73_call_byname_bx, .-n73_call_byname_bx
                        .type            n74_line_mark_bx, @function
n74_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_242_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_242_stno
                        .long            0
                        .long            16
                        .quad            .Lstnof1
                        .popsection
n74_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n75_lit_integer_α
                        .size            n74_line_mark_bx, .-n74_line_mark_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n76_assign_α
.Llit_integer_α_244_0:  .quad            0
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n77_line_mark_α
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_line_mark_bx, @function
n77_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_246_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_246_stno
                        .long            0
                        .long            17
                        .quad            .Lstnof1
                        .popsection
n77_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n78_lit_integer_α
                        .size            n77_line_mark_bx, .-n77_line_mark_bx
                        .type            n78_lit_integer_bx, @function
n78_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_248_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n79_lit_integer_α
.Llit_integer_α_248_0:  .quad            1
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      mov              qword ptr [rsp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_249_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n80_to_α
.Llit_integer_α_249_0:  .quad            5000
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_to_bx, @function
n80_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_to_α:               mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n91_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_82:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_81:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 816], 3
                        mov              qword ptr [rsp + 824], rax
                        push             rax                                  # gc_poll bb_to.cpp:162
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_79:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n91_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_78:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax
                        push             rax                                  # gc_poll bb_to.cpp:170
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 800], rax
.Lto_α_251_0:           mov              rax, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 840]
                        cmp              rax, rcx;                            jg    n91_line_mark_α
                        mov              qword ptr [rsp + 784], 3
                        mov              qword ptr [rsp + 792], rax;          jmp   n81_assign_α
n80_to_β:               inc              qword ptr [rsp + 800];               jo    n91_line_mark_α
                                                                              jmp   .Lto_α_251_0
                        .size            n80_to_bx, .-n80_to_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n82_bound_α
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_bound_bx, @function
n82_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_bound_α:            mov              qword ptr [rsp + 864], rsp;          jmp   n83_var_ref_α
                        .size            n82_bound_bx, .-n82_bound_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n84_var_ref_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2672]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n85_deref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_deref_bx, @function
n85_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_deref_α:            mov              rdi, qword ptr [rsp + 960]           # d
                        mov              rsi, qword ptr [rsp + 968]           # d
                        call             rt_deref@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n90_unmark_α
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_84:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n86_line_mark_α
                        .size            n85_deref_bx, .-n85_deref_bx
                        .type            n86_line_mark_bx, @function
n86_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_260_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_260_stno
                        .long            0
                        .long            17
                        .quad            .Lstnof1
                        .popsection
n86_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n87_call_byname_α
                        .size            n86_line_mark_bx, .-n86_line_mark_bx
                        .type            n87_call_byname_bx, @function
n87_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_byname_α:      mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lcall_byname_α_rkfn263: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn263]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_87:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n90_unmark_α
                                                                              jmp   n88_var_α
n87_call_byname_β:                                                            jmp   n90_unmark_α
                        .size            n87_call_byname_bx, .-n87_call_byname_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n89_assign_var_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_assign_var_bx, @function
n89_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_var_α:       mov              rdi, qword ptr [rsp + 896]
                        mov              rsi, qword ptr [rsp + 904]
                        mov              rdx, qword ptr [rsp + 912]
                        mov              rcx, qword ptr [rsp + 920]
                        cmp              dil, 40;                             jne   .Lassign_var_α_267_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_267_0
                        test             rsi, rsi;                            je    .Lassign_var_α_267_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_267_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_267_1
.Lassign_var_α_267_5:   cmp              dil, 24;                             je    .Lassign_var_α_267_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_267_0
.Lassign_var_α_267_1:   test             rsi, rsi;                            je    .Lassign_var_α_267_0
                        mov              r8, qword ptr [rsp + 1008]
                        mov              r9, qword ptr [rsp + 1016]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_94:       cmp              al, 255;                             jne   .Lassign_var_vd_267_6
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_93:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_267_6:  cmp              al, 104;                             je    n90_unmark_α
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_92:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n90_unmark_α
.Lassign_var_α_267_0:   call             rt_subscript_var_strict@PLT
.Lgcsite_main_91:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_90:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n90_unmark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 1008]
                        mov              rcx, qword ptr [rsp + 1016]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_89:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n90_unmark_α
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_88:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n90_unmark_α
                        .size            n89_assign_var_bx, .-n89_assign_var_bx
                        .type            n90_unmark_bx, @function
n90_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_unmark_α:           mov              rsp, qword ptr [rsp + 864];          jmp   n80_to_β
                        .size            n90_unmark_bx, .-n90_unmark_bx
                        .type            n91_line_mark_bx, @function
n91_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_270_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_270_stno
                        .long            0
                        .long            18
                        .quad            .Lstnof1
                        .popsection
n91_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n92_lit_integer_α
                        .size            n91_line_mark_bx, .-n91_line_mark_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      mov              qword ptr [rsp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n93_lit_integer_α
.Llit_integer_α_272_0:  .quad            1
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_273_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n94_to_α
.Llit_integer_α_273_0:  .quad            5000
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_to_bx, @function
n94_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_to_α:               mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_102:      mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n00001_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_101:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 496], 3
                        mov              qword ptr [rsp + 504], rax
                        push             rax                                  # gc_poll bb_to.cpp:162
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n00001_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_97:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_96:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 512], 3
                        mov              qword ptr [rsp + 520], rax
                        push             rax                                  # gc_poll bb_to.cpp:170
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_95:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 480], rax
.Lto_α_275_0:           mov              rax, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 520]
                        cmp              rax, rcx;                            jg    n00001_line_mark_α
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax;          jmp   n95_assign_α
n94_to_β:               inc              qword ptr [rsp + 480];               jo    n00001_line_mark_α
                                                                              jmp   .Lto_α_275_0
                        .size            n94_to_bx, .-n94_to_bx
                        .type            n95_assign_bx, @function
n95_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n96_bound_α
                        .size            n95_assign_bx, .-n95_assign_bx
                        .type            n96_bound_bx, @function
n96_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_bound_α:            mov              qword ptr [rsp + 544], rsp;          jmp   n97_var_α
                        .size            n96_bound_bx, .-n96_bound_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n98_var_ref_α
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n99_var_ref_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2672]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00002_deref_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n00002_deref_bx, @function
n00002_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_deref_α:           mov              rdi, qword ptr [rsp + 704]           # d
                        mov              rsi, qword ptr [rsp + 712]           # d
                        call             rt_deref@PLT
.Lgcsite_main_104:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00003_unmark_α
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_103:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00004_line_mark_α
                        .size            n00002_deref_bx, .-n00002_deref_bx
                        .type            n00004_line_mark_bx, @function
n00004_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_286_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_286_stno
                        .long            0
                        .long            18
                        .quad            .Lstnof1
                        .popsection
n00004_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n00005_call_byname_α
                        .size            n00004_line_mark_bx, .-n00004_line_mark_bx
                        .type            n00005_call_byname_bx, @function
n00005_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_call_byname_α:     mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lcall_byname_α_rkfn289: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn289]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_105:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_106:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   n00006_subscript_α
n00005_call_byname_β:                                                           jmp   n00003_unmark_α
                        .size            n00005_call_byname_bx, .-n00005_call_byname_bx
                        .type            n00006_subscript_bx, @function
n00006_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_subscript_α:       xor              eax, eax
.Lsubscript_α_290_1:    mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        test             eax, eax;                            jne   .Lsubscript_α_290_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_111:      cmp              al, 255;                             jne   .Lsubscript_vd_290_7
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_110:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_290_7:   mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_290_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_290_1
.Lsubscript_α_290_4:    push             rax
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
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_290_3
.Lsubscript_α_290_2:    call             rt_subscript_var_strict@PLT
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_107:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_290_3:    cmp              al, 104;                             je    n00003_unmark_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n00007_deref_α
                        .size            n00006_subscript_bx, .-n00006_subscript_bx
                        .type            n00007_deref_bx, @function
n00007_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_deref_α:           mov              rdi, qword ptr [rsp + 736]           # d
                        mov              rsi, qword ptr [rsp + 744]           # d
                        call             rt_deref@PLT
.Lgcsite_main_113:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00003_unmark_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00008_coerce_numeric_α
                        .size            n00007_deref_bx, .-n00007_deref_bx
                        .type            n00008_coerce_numeric_bx, @function
n00008_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2656]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_293_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_293_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_293_0
.Lcoerce_numeric_α_293_1:
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00009_coerce_numeric_α
.Lcoerce_numeric_α_293_0:
                        lea              rdi, [rsp + 2656]
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 608]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_116:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_293_8
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_115:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_293_8:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_114:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 608]
                        cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   n00009_coerce_numeric_α
                        .size            n00008_coerce_numeric_bx, .-n00008_coerce_numeric_bx
                        .type            n00009_coerce_numeric_bx, @function
n00009_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_coerce_numeric_α:  mov              eax, dword ptr [rsp + 752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_295_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_295_0
                        mov              eax, dword ptr [rsp + 2656]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_295_0
.Lcoerce_numeric_α_295_1:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00010_binop_α
.Lcoerce_numeric_α_295_0:
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 2656]
                        lea              rdx, [rsp + 592]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_119:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_295_9
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_118:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_295_9:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_117:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 592]
                        cmp              al, 104;                             je    n00003_unmark_α
                                                                              jmp   n00010_binop_α
                        .size            n00009_coerce_numeric_bx, .-n00009_coerce_numeric_bx
                        .type            n00010_binop_bx, @function
n00010_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_binop_α:           mov              eax, dword ptr [rsp + 608]
                        mov              ecx, dword ptr [rsp + 592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_296_2
                        mov              rax, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 600]
                        add              rax, rdx;                            jo    .Lbinop_α_296_0
                        mov              qword ptr [rsp + 576], 3
                        mov              qword ptr [rsp + 584], rax;          jmp   .Lbinop_α_296_7
.Lbinop_α_296_2:        and              edx, 1;                              jz    .Lbinop_α_296_0
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdi, qword ptr [rsp + 600]
                        cmp              al, 5;                               je    .Lbinop_α_296_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_296_4
.Lbinop_α_296_3:        movq             xmm0, rsi
.Lbinop_α_296_4:        cmp              cl, 5;                               je    .Lbinop_α_296_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_296_6
.Lbinop_α_296_5:        movq             xmm1, rdi
.Lbinop_α_296_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_296_0
                        mov              qword ptr [rsp + 576], 5
                        mov              qword ptr [rsp + 584], rax
.Lbinop_α_296_7:                                                              jmp   n00011_assign_α
.Lbinop_α_296_0:        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        call             rt_add_big@PLT
.Lgcsite_main_121:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00003_unmark_α
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:301
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_120:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00011_assign_α
                        .size            n00010_binop_bx, .-n00010_binop_bx
                        .type            n00011_assign_bx, @function
n00011_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_assign_α:          mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00003_unmark_α
                        .size            n00011_assign_bx, .-n00011_assign_bx
                        .type            n00003_unmark_bx, @function
n00003_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_unmark_α:          mov              rsp, qword ptr [rsp + 544];          jmp   n94_to_β
                        .size            n00003_unmark_bx, .-n00003_unmark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_300_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_300_stno
                        .long            0
                        .long            19
                        .quad            .Lstnof1
                        .popsection
n00001_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00012_var_ref_α
                        .size            n00001_line_mark_bx, .-n00001_line_mark_bx
                        .type            n00012_var_ref_bx, @function
n00012_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2656]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n00013_deref_α
                        .size            n00012_var_ref_bx, .-n00012_var_ref_bx
                        .type            n00013_deref_bx, @function
n00013_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_deref_α:           mov              rdi, qword ptr [rsp + 416]           # d
                        mov              rsi, qword ptr [rsp + 424]           # d
                        call             rt_deref@PLT
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00014_line_mark_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_122:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00015_line_mark_α
                        .size            n00013_deref_bx, .-n00013_deref_bx
                        .type            n00015_line_mark_bx, @function
n00015_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_305_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_305_stno
                        .long            0
                        .long            19
                        .quad            .Lstnof1
                        .popsection
n00015_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00016_call_byname_α
                        .size            n00015_line_mark_bx, .-n00015_line_mark_bx
                        .type            n00016_call_byname_bx, @function
n00016_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_call_byname_α:     mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lcall_byname_α_rkfn308: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn308]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_124:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_125:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    n00014_line_mark_α
                                                                              jmp   n00014_line_mark_α
n00016_call_byname_β:                                                           jmp   n00014_line_mark_α
                        .size            n00016_call_byname_bx, .-n00016_call_byname_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_309_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_309_stno
                        .long            0
                        .long            20
                        .quad            .Lstnof1
                        .popsection
n00014_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n00017_lit_integer_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00017_lit_integer_bx, @function
n00017_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_lit_integer_α:     mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n00018_lit_integer_α
.Llit_integer_α_311_0:  .quad            1
                        .size            n00017_lit_integer_bx, .-n00017_lit_integer_bx
                        .type            n00018_lit_integer_bx, @function
n00018_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_integer_α:     mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_312_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00019_to_α
.Llit_integer_α_312_0:  .quad            5000
                        .size            n00018_lit_integer_bx, .-n00018_lit_integer_bx
                        .type            n00019_to_bx, @function
n00019_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_to_α:              mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_133:      mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n00020_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_132:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_131:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax
                        push             rax                                  # gc_poll bb_to.cpp:162
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_130:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_129:      mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n00020_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:50
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_128:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_127:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], 3
                        mov              qword ptr [rsp + 168], rax
                        push             rax                                  # gc_poll bb_to.cpp:170
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_126:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 128], rax
.Lto_α_314_0:           mov              rax, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              rax, rcx;                            jg    n00020_line_mark_α
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax;          jmp   n00021_assign_α
n00019_to_β:              inc              qword ptr [rsp + 128];               jo    n00020_line_mark_α
                                                                              jmp   .Lto_α_314_0
                        .size            n00019_to_bx, .-n00019_to_bx
                        .type            n00021_assign_bx, @function
n00021_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_assign_α:          mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n00022_bound_α
                        .size            n00021_assign_bx, .-n00021_assign_bx
                        .type            n00022_bound_bx, @function
n00022_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_bound_α:           mov              qword ptr [rsp + 192], rsp;          jmp   n00023_var_α
                        .size            n00022_bound_bx, .-n00022_bound_bx
                        .type            n00023_var_bx, @function
n00023_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_var_α:             mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00024_var_ref_α
                        .size            n00023_var_bx, .-n00023_var_bx
                        .type            n00024_var_ref_bx, @function
n00024_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2688]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00025_var_α
                        .size            n00024_var_ref_bx, .-n00024_var_ref_bx
                        .type            n00025_var_bx, @function
n00025_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_α:             mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00026_subscript_α
                        .size            n00025_var_bx, .-n00025_var_bx
                        .type            n00026_subscript_bx, @function
n00026_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_subscript_α:       xor              eax, eax
.Lsubscript_α_324_1:    mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 312]
                        test             eax, eax;                            jne   .Lsubscript_α_324_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_138:      cmp              al, 255;                             jne   .Lsubscript_vd_324_10
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_137:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_324_10:  mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 255;                             jne   .Lsubscript_α_324_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_324_1
.Lsubscript_α_324_4:    push             rax
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
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_324_3
.Lsubscript_α_324_2:    call             rt_subscript_var_strict@PLT
.Lgcsite_main_135:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_134:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_324_3:    cmp              al, 104;                             je    n00027_unmark_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n00028_deref_α
                        .size            n00026_subscript_bx, .-n00026_subscript_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           mov              rdi, qword ptr [rsp + 320]           # d
                        mov              rsi, qword ptr [rsp + 328]           # d
                        call             rt_deref@PLT
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00027_unmark_α
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00029_coerce_numeric_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00029_coerce_numeric_bx, @function
n00029_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2656]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rsp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00030_coerce_numeric_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rsp + 2656]
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 256]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_143:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_327_11
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_142:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_327_11:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 256]
                        cmp              al, 104;                             je    n00027_unmark_α
                                                                              jmp   n00030_coerce_numeric_α
                        .size            n00029_coerce_numeric_bx, .-n00029_coerce_numeric_bx
                        .type            n00030_coerce_numeric_bx, @function
n00030_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_coerce_numeric_α:  mov              eax, dword ptr [rsp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_329_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_329_0
                        mov              eax, dword ptr [rsp + 2656]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_329_0
.Lcoerce_numeric_α_329_1:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00031_binop_α
.Lcoerce_numeric_α_329_0:
                        lea              rdi, [rsp + 336]
                        lea              rsi, [rsp + 2656]
                        lea              rdx, [rsp + 240]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_146:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_329_12
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_145:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_329_12:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_144:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 240]
                        cmp              al, 104;                             je    n00027_unmark_α
                                                                              jmp   n00031_binop_α
                        .size            n00030_coerce_numeric_bx, .-n00030_coerce_numeric_bx
                        .type            n00031_binop_bx, @function
n00031_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_α:           mov              eax, dword ptr [rsp + 256]
                        mov              ecx, dword ptr [rsp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_330_2
                        mov              rax, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_330_0
                        mov              qword ptr [rsp + 224], 3
                        mov              qword ptr [rsp + 232], rax;          jmp   .Lbinop_α_330_7
.Lbinop_α_330_2:        and              edx, 1;                              jz    .Lbinop_α_330_0
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdi, qword ptr [rsp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_330_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_330_4
.Lbinop_α_330_3:        movq             xmm0, rsi
.Lbinop_α_330_4:        cmp              cl, 5;                               je    .Lbinop_α_330_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_330_6
.Lbinop_α_330_5:        movq             xmm1, rdi
.Lbinop_α_330_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_330_0
                        mov              qword ptr [rsp + 224], 5
                        mov              qword ptr [rsp + 232], rax
.Lbinop_α_330_7:                                                              jmp   n00032_assign_α
.Lbinop_α_330_0:        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_add_big@PLT
.Lgcsite_main_148:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n00027_unmark_α
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:301
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_147:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00032_assign_α
                        .size            n00031_binop_bx, .-n00031_binop_bx
                        .type            n00032_assign_bx, @function
n00032_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:          mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n00027_unmark_α
                        .size            n00032_assign_bx, .-n00032_assign_bx
                        .type            n00027_unmark_bx, @function
n00027_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_unmark_α:          mov              rsp, qword ptr [rsp + 192];          jmp   n00019_to_β
                        .size            n00027_unmark_bx, .-n00027_unmark_bx
                        .type            n00020_line_mark_bx, @function
n00020_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_334_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_334_stno
                        .long            0
                        .long            21
                        .quad            .Lstnof1
                        .popsection
n00020_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00033_var_ref_α
                        .size            n00020_line_mark_bx, .-n00020_line_mark_bx
                        .type            n00033_var_ref_bx, @function
n00033_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2656]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n00034_deref_α
                        .size            n00033_var_ref_bx, .-n00033_var_ref_bx
                        .type            n00034_deref_bx, @function
n00034_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_deref_α:           mov              rdi, qword ptr [rsp + 48]            # d
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_main_150:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_149:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00035_line_mark_α
                        .size            n00034_deref_bx, .-n00034_deref_bx
                        .type            n00035_line_mark_bx, @function
n00035_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_339_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_339_stno
                        .long            0
                        .long            21
                        .quad            .Lstnof1
                        .popsection
n00035_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00036_call_byname_α
                        .size            n00035_line_mark_bx, .-n00035_line_mark_bx
                        .type            n00036_call_byname_bx, @function
n00036_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_call_byname_α:     mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfn342: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfn342]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_151:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:184
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_152:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00036_call_byname_β:                                                           jmp   main_ω
                        .size            n00036_call_byname_bx, .-n00036_call_byname_bx
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
                        add              rsp, 2816;                           jmp   qword ptr [rsp]
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
                        add              rsp, 2816;                           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            12095974362458
                        .quad            107374182496
                        .quad            .Lgcmap_main_s
                        .quad            2704
                        .quad            13
                        .quad            140737488355328
                        .quad            17596481011840
                        .quad            52776558133392
                        .quad            17596481011904
                        .quad            299067162755280
                        .quad            17596481012192
                        .quad            52776558133744
                        .quad            17596481012256
                        .quad            263882790666800
                        .quad            17596481012512
                        .quad            52776558134064
                        .quad            17596481012576
                        .quad            2005509209064304
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_0:       .quad            153
                        .quad            .Lgcmap_main
                        .quad            10376311131500186368
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
                        .quad            137438953473
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
                        .quad            137438953473
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
                        .quad            137438953473
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
                        .quad            1
                        .quad            .Lgcsite_main_27
                        .quad            137438953473
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
                        .quad            137438953473
                        .quad            .Lgcsite_main_35
                        .quad            1
                        .quad            .Lgcsite_main_36
                        .quad            1
                        .quad            .Lgcsite_main_37
                        .quad            1
                        .quad            .Lgcsite_main_38
                        .quad            1
                        .quad            .Lgcsite_main_39
                        .quad            1
                        .quad            .Lgcsite_main_40
                        .quad            1
                        .quad            .Lgcsite_main_41
                        .quad            137438953473
                        .quad            .Lgcsite_main_42
                        .quad            1
                        .quad            .Lgcsite_main_43
                        .quad            1
                        .quad            .Lgcsite_main_44
                        .quad            1
                        .quad            .Lgcsite_main_45
                        .quad            1
                        .quad            .Lgcsite_main_46
                        .quad            1
                        .quad            .Lgcsite_main_47
                        .quad            1
                        .quad            .Lgcsite_main_48
                        .quad            1
                        .quad            .Lgcsite_main_49
                        .quad            1
                        .quad            .Lgcsite_main_50
                        .quad            1
                        .quad            .Lgcsite_main_51
                        .quad            1
                        .quad            .Lgcsite_main_52
                        .quad            1
                        .quad            .Lgcsite_main_53
                        .quad            1
                        .quad            .Lgcsite_main_54
                        .quad            1
                        .quad            .Lgcsite_main_55
                        .quad            1
                        .quad            .Lgcsite_main_56
                        .quad            1
                        .quad            .Lgcsite_main_57
                        .quad            1
                        .quad            .Lgcsite_main_58
                        .quad            1
                        .quad            .Lgcsite_main_59
                        .quad            1
                        .quad            .Lgcsite_main_60
                        .quad            1
                        .quad            .Lgcsite_main_61
                        .quad            1
                        .quad            .Lgcsite_main_62
                        .quad            1
                        .quad            .Lgcsite_main_63
                        .quad            1
                        .quad            .Lgcsite_main_64
                        .quad            1
                        .quad            .Lgcsite_main_65
                        .quad            1
                        .quad            .Lgcsite_main_66
                        .quad            1
                        .quad            .Lgcsite_main_67
                        .quad            1
                        .quad            .Lgcsite_main_68
                        .quad            1
                        .quad            .Lgcsite_main_69
                        .quad            1
                        .quad            .Lgcsite_main_70
                        .quad            1
                        .quad            .Lgcsite_main_71
                        .quad            1
                        .quad            .Lgcsite_main_72
                        .quad            1
                        .quad            .Lgcsite_main_73
                        .quad            1
                        .quad            .Lgcsite_main_74
                        .quad            1
                        .quad            .Lgcsite_main_75
                        .quad            1
                        .quad            .Lgcsite_main_76
                        .quad            1
                        .quad            .Lgcsite_main_77
                        .quad            1
                        .quad            .Lgcsite_main_78
                        .quad            1
                        .quad            .Lgcsite_main_79
                        .quad            1
                        .quad            .Lgcsite_main_80
                        .quad            1
                        .quad            .Lgcsite_main_81
                        .quad            1
                        .quad            .Lgcsite_main_82
                        .quad            1
                        .quad            .Lgcsite_main_83
                        .quad            1
                        .quad            .Lgcsite_main_84
                        .quad            1
                        .quad            .Lgcsite_main_85
                        .quad            1
                        .quad            .Lgcsite_main_86
                        .quad            1
                        .quad            .Lgcsite_main_87
                        .quad            1
                        .quad            .Lgcsite_main_88
                        .quad            1
                        .quad            .Lgcsite_main_89
                        .quad            1
                        .quad            .Lgcsite_main_90
                        .quad            137438953473
                        .quad            .Lgcsite_main_91
                        .quad            1
                        .quad            .Lgcsite_main_92
                        .quad            1
                        .quad            .Lgcsite_main_93
                        .quad            1
                        .quad            .Lgcsite_main_94
                        .quad            1
                        .quad            .Lgcsite_main_95
                        .quad            1
                        .quad            .Lgcsite_main_96
                        .quad            1
                        .quad            .Lgcsite_main_97
                        .quad            1
                        .quad            .Lgcsite_main_98
                        .quad            1
                        .quad            .Lgcsite_main_99
                        .quad            1
                        .quad            .Lgcsite_main_100
                        .quad            1
                        .quad            .Lgcsite_main_101
                        .quad            1
                        .quad            .Lgcsite_main_102
                        .quad            1
                        .quad            .Lgcsite_main_103
                        .quad            1
                        .quad            .Lgcsite_main_104
                        .quad            1
                        .quad            .Lgcsite_main_105
                        .quad            1
                        .quad            .Lgcsite_main_106
                        .quad            1
                        .quad            .Lgcsite_main_107
                        .quad            137438953473
                        .quad            .Lgcsite_main_108
                        .quad            1
                        .quad            .Lgcsite_main_109
                        .quad            137438953473
                        .quad            .Lgcsite_main_110
                        .quad            1
                        .quad            .Lgcsite_main_111
                        .quad            1
                        .quad            .Lgcsite_main_112
                        .quad            1
                        .quad            .Lgcsite_main_113
                        .quad            1
                        .quad            .Lgcsite_main_114
                        .quad            1
                        .quad            .Lgcsite_main_115
                        .quad            1
                        .quad            .Lgcsite_main_116
                        .quad            1
                        .quad            .Lgcsite_main_117
                        .quad            1
                        .quad            .Lgcsite_main_118
                        .quad            1
                        .quad            .Lgcsite_main_119
                        .quad            1
                        .quad            .Lgcsite_main_120
                        .quad            1
                        .quad            .Lgcsite_main_121
                        .quad            1
                        .quad            .Lgcsite_main_122
                        .quad            1
                        .quad            .Lgcsite_main_123
                        .quad            1
                        .quad            .Lgcsite_main_124
                        .quad            1
                        .quad            .Lgcsite_main_125
                        .quad            1
                        .quad            .Lgcsite_main_126
                        .quad            1
                        .quad            .Lgcsite_main_127
                        .quad            1
                        .quad            .Lgcsite_main_128
                        .quad            1
                        .quad            .Lgcsite_main_129
                        .quad            1
                        .quad            .Lgcsite_main_130
                        .quad            1
                        .quad            .Lgcsite_main_131
                        .quad            1
                        .quad            .Lgcsite_main_132
                        .quad            1
                        .quad            .Lgcsite_main_133
                        .quad            1
                        .quad            .Lgcsite_main_134
                        .quad            137438953473
                        .quad            .Lgcsite_main_135
                        .quad            1
                        .quad            .Lgcsite_main_136
                        .quad            137438953473
                        .quad            .Lgcsite_main_137
                        .quad            1
                        .quad            .Lgcsite_main_138
                        .quad            1
                        .quad            .Lgcsite_main_139
                        .quad            1
                        .quad            .Lgcsite_main_140
                        .quad            1
                        .quad            .Lgcsite_main_141
                        .quad            1
                        .quad            .Lgcsite_main_142
                        .quad            1
                        .quad            .Lgcsite_main_143
                        .quad            1
                        .quad            .Lgcsite_main_144
                        .quad            1
                        .quad            .Lgcsite_main_145
                        .quad            1
                        .quad            .Lgcsite_main_146
                        .quad            1
                        .quad            .Lgcsite_main_147
                        .quad            1
                        .quad            .Lgcsite_main_148
                        .quad            1
                        .quad            .Lgcsite_main_149
                        .quad            1
                        .quad            .Lgcsite_main_150
                        .quad            1
                        .quad            .Lgcsite_main_151
                        .quad            1
                        .quad            .Lgcsite_main_152
                        .quad            1
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
.Lstartup_ign2:         .string          "string"
.Lstartup_ign3:         .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign3]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00037_0:    .string          "t"
.Lstartup_iln00037_1:    .string          "i"
.Lstartup_iln00037_2:    .string          "s"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00037_0
                        .quad            .Lstartup_iln00037_1
                        .quad            .Lstartup_iln00037_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            2688
                        .long            2672
                        .long            2656
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
