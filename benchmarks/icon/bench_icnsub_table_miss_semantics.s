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
                        sub              rsp, 2480
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 309
                        rep              stosq
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2472], rbp
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_136_999
                        add              rsp, 16;                             jmp   n1_line_mark_α
.Lcall_direct_α_136_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n1_line_mark_α
n0_call_direct_β:       add              rsp, 16;                             jmp   n1_line_mark_α
                        .size            n0_call_direct_bx, .-n0_call_direct_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
                        .pushsection     .rodata
.Lstnof1:               .string          "bench_icnsub_table_miss_semantics.icn"
                        .popsection
.Lline_mark_α_137_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_138_0: .quad .Lline_mark_α_138_0_s; .popsection
.Lline_mark_α_138_0_s:  .string          "bench_icnsub_table_miss_semantics.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
.Lline_mark_α_139_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n3_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_line_mark_α
.Llit_integer_α_141_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_142_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n5_call_byname_α:       sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd145: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd145]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
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
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_144_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_line_mark_α
.Lcall_byname_α_144_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_assign_α
                        .size            n5_call_byname_bx, .-n5_call_byname_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        add              rsp, 32;                             jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
.Lline_mark_α_147_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n8_var_ref_α:           sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_151_0: .quad .Llit_string_α_151_0_s; .popsection
.Llit_string_α_151_0_s: .string          "alpha"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_assign_var_α
.Llit_integer_α_152_0:  .quad            11
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_assign_var_bx, @function
n11_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
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
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_12:       cmp              al, 255;                             jne   .Lassign_var_vd_154_2
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_11:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_154_2:  cmp              al, 104;                             jne   .Lassign_var_α_154_997
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n12_line_mark_α
.Lassign_var_α_154_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n12_line_mark_α
.Lassign_var_α_154_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_9:        cmp              al, 255;                             jne   .Lassign_var_vd_154_1
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_154_1:  push             rax
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
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_154_998
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n12_line_mark_α
.Lassign_var_α_154_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_6:        cmp              al, 255;                             jne   .Lassign_var_vd_154_0
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_5:        mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_154_0:  cmp              al, 104;                             jne   .Lassign_var_α_154_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n12_line_mark_α
.Lassign_var_α_154_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n12_line_mark_α
                        .size            n11_assign_var_bx, .-n11_assign_var_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
.Lline_mark_α_155_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n13_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_lit_string_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_159_0: .quad .Llit_string_α_159_0_s; .popsection
.Llit_string_α_159_0_s: .string          "beta"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_assign_var_α
.Llit_integer_α_160_0:  .quad            22
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_assign_var_bx, @function
n16_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
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
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_21:       cmp              al, 255;                             jne   .Lassign_var_vd_162_5
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_162_5:  cmp              al, 104;                             jne   .Lassign_var_α_162_997
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n17_line_mark_α
.Lassign_var_α_162_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n17_line_mark_α
.Lassign_var_α_162_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_18:       cmp              al, 255;                             jne   .Lassign_var_vd_162_4
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_162_4:  push             rax
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
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_162_998
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n17_line_mark_α
.Lassign_var_α_162_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_15:       cmp              al, 255;                             jne   .Lassign_var_vd_162_3
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_162_3:  cmp              al, 104;                             jne   .Lassign_var_α_162_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n17_line_mark_α
.Lassign_var_α_162_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n17_line_mark_α
                        .size            n16_assign_var_bx, .-n16_assign_var_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
.Lline_mark_α_163_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n18_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_lit_integer_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_lit_integer_α
.Llit_integer_α_167_0:  .quad            7
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_assign_var_α
.Llit_integer_α_168_0:  .quad            77
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_assign_var_bx, @function
n21_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
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
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_30:       cmp              al, 255;                             jne   .Lassign_var_vd_170_8
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_29:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_170_8:  cmp              al, 104;                             jne   .Lassign_var_α_170_997
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n22_line_mark_α
.Lassign_var_α_170_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n22_line_mark_α
.Lassign_var_α_170_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_27:       cmp              al, 255;                             jne   .Lassign_var_vd_170_7
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_170_7:  push             rax
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_170_998
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n22_line_mark_α
.Lassign_var_α_170_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_24:       cmp              al, 255;                             jne   .Lassign_var_vd_170_6
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_170_6:  cmp              al, 104;                             jne   .Lassign_var_α_170_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n22_line_mark_α
.Lassign_var_α_170_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n22_line_mark_α
                        .size            n21_assign_var_bx, .-n21_assign_var_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
.Lline_mark_α_171_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n23_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_lit_integer_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_lit_integer_α
.Llit_integer_α_175_0:  .quad            18446744073709551613
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_var_α
.Llit_integer_α_176_0:  .quad            33
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_var_bx, @function
n26_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
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
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_39:       cmp              al, 255;                             jne   .Lassign_var_vd_178_11
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_38:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_178_11: cmp              al, 104;                             jne   .Lassign_var_α_178_997
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n27_line_mark_α
.Lassign_var_α_178_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_37:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n27_line_mark_α
.Lassign_var_α_178_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_36:       cmp              al, 255;                             jne   .Lassign_var_vd_178_10
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_178_10: push             rax
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
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_178_998
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n27_line_mark_α
.Lassign_var_α_178_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_33:       cmp              al, 255;                             jne   .Lassign_var_vd_178_9
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_178_9:  cmp              al, 104;                             jne   .Lassign_var_α_178_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n27_line_mark_α
.Lassign_var_α_178_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n27_line_mark_α
                        .size            n26_assign_var_bx, .-n26_assign_var_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
.Lline_mark_α_179_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n28_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_lit_integer_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_lit_integer_α
.Llit_integer_α_183_0:  .quad            0
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_assign_var_α
.Llit_integer_α_184_0:  .quad            99
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_assign_var_bx, @function
n31_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
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
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_48:       cmp              al, 255;                             jne   .Lassign_var_vd_186_14
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_47:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_186_14: cmp              al, 104;                             jne   .Lassign_var_α_186_997
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n32_line_mark_α
.Lassign_var_α_186_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n32_line_mark_α
.Lassign_var_α_186_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_45:       cmp              al, 255;                             jne   .Lassign_var_vd_186_13
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_44:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_186_13: push             rax
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
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_186_998
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n32_line_mark_α
.Lassign_var_α_186_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_42:       cmp              al, 255;                             jne   .Lassign_var_vd_186_12
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_41:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_186_12: cmp              al, 104;                             jne   .Lassign_var_α_186_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n32_line_mark_α
.Lassign_var_α_186_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_40:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n32_line_mark_α
                        .size            n31_assign_var_bx, .-n31_assign_var_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
.Lline_mark_α_187_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n33_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_191_0: .quad .Llit_string_α_191_0_s; .popsection
.Llit_string_α_191_0_s: .string          "alpha"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_assign_var_α
.Llit_integer_α_192_0:  .quad            111
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_assign_var_bx, @function
n36_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # var_ref
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
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
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_57:       cmp              al, 255;                             jne   .Lassign_var_vd_194_17
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_194_17: cmp              al, 104;                             jne   .Lassign_var_α_194_997
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n37_line_mark_α
.Lassign_var_α_194_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n37_line_mark_α
.Lassign_var_α_194_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_54:       cmp              al, 255;                             jne   .Lassign_var_vd_194_16
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_53:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_194_16: push             rax
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
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_194_998
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n37_line_mark_α
.Lassign_var_α_194_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_51:       cmp              al, 255;                             jne   .Lassign_var_vd_194_15
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_50:       mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_194_15: cmp              al, 104;                             jne   .Lassign_var_α_194_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n37_line_mark_α
.Lassign_var_α_194_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_49:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      add              rsp, 64;                             jmp   n37_line_mark_α
                        .size            n36_assign_var_bx, .-n36_assign_var_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
.Lline_mark_α_195_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n38_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2368]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_subscript_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_199_0: .quad .Llit_string_α_199_0_s; .popsection
.Llit_string_α_199_0_s: .string          "alpha"
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_subscript_bx, @function
n40_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_60:       cmp              al, 255;                             jne   .Lsubscript_vd_200_18
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_200_18:  cmp              al, 104;                             jne   .Lsubscript_α_200_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n74_line_mark_α
.Lsubscript_α_200_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n41_lit_string_α
                        .size            n40_subscript_bx, .-n40_subscript_bx
                        .type            n41_lit_string_bx, @function
n41_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_201_0: .quad .Llit_string_α_201_0_s; .popsection
.Llit_string_α_201_0_s: .string          " "
                        .size            n41_lit_string_bx, .-n41_lit_string_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_lit_string_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_lit_string_bx, @function
n43_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_subscript_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_204_0: .quad .Llit_string_α_204_0_s; .popsection
.Llit_string_α_204_0_s: .string          "beta"
                        .size            n43_lit_string_bx, .-n43_lit_string_bx
                        .type            n44_subscript_bx, @function
n44_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_63:       cmp              al, 255;                             jne   .Lsubscript_vd_205_19
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_205_19:  cmp              al, 104;                             jne   .Lsubscript_α_205_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n74_line_mark_α
.Lsubscript_α_205_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n45_lit_string_α
                        .size            n44_subscript_bx, .-n44_subscript_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_206_0: .quad .Llit_string_α_206_0_s; .popsection
.Llit_string_α_206_0_s: .string          " "
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2496]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_lit_integer_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_209_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_subscript_α
.Llit_integer_α_209_0:  .quad            7
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_subscript_bx, @function
n48_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_66:       cmp              al, 255;                             jne   .Lsubscript_vd_210_20
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_65:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_210_20:  cmp              al, 104;                             jne   .Lsubscript_α_210_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n74_line_mark_α
.Lsubscript_α_210_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n49_lit_string_α
                        .size            n48_subscript_bx, .-n48_subscript_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_211_0: .quad .Llit_string_α_211_0_s; .popsection
.Llit_string_α_211_0_s: .string          " "
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2560]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_lit_integer_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_subscript_α
.Llit_integer_α_214_0:  .quad            18446744073709551613
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_subscript_bx, @function
n52_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_69:       cmp              al, 255;                             jne   .Lsubscript_vd_215_21
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_68:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_215_21:  cmp              al, 104;                             jne   .Lsubscript_α_215_999
                        add              rsp, 16
                        add              rsp, 224;                            jmp   n74_line_mark_α
.Lsubscript_α_215_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_67:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n53_lit_string_α
                        .size            n52_subscript_bx, .-n52_subscript_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_216_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_216_0: .quad .Llit_string_α_216_0_s; .popsection
.Llit_string_α_216_0_s: .string          " "
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2624]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_lit_integer_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_219_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_subscript_α
.Llit_integer_α_219_0:  .quad            0
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_subscript_bx, @function
n56_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_72:       cmp              al, 255;                             jne   .Lsubscript_vd_220_22
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_220_22:  cmp              al, 104;                             jne   .Lsubscript_α_220_999
                        add              rsp, 16
                        add              rsp, 288;                            jmp   n74_line_mark_α
.Lsubscript_α_220_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_70:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n57_lit_string_α
                        .size            n56_subscript_bx, .-n56_subscript_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_221_0: .quad .Llit_string_α_221_0_s; .popsection
.Llit_string_α_221_0_s: .string          " "
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2688]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_lit_string_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_subscript_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_224_0: .quad .Llit_string_α_224_0_s; .popsection
.Llit_string_α_224_0_s: .string          "missing"
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_subscript_bx, @function
n60_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_75:       cmp              al, 255;                             jne   .Lsubscript_vd_225_23
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_74:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_225_23:  cmp              al, 104;                             jne   .Lsubscript_α_225_999
                        add              rsp, 16
                        add              rsp, 352;                            jmp   n74_line_mark_α
.Lsubscript_α_225_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_73:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n61_lit_string_α
                        .size            n60_subscript_bx, .-n60_subscript_bx
                        .type            n61_lit_string_bx, @function
n61_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_226_0: .quad .Llit_string_α_226_0_s; .popsection
.Llit_string_α_226_0_s: .string          " "
                        .size            n61_lit_string_bx, .-n61_lit_string_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2752]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_integer_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_subscript_α
.Llit_integer_α_229_0:  .quad            12345
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_subscript_bx, @function
n64_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_78:       cmp              al, 255;                             jne   .Lsubscript_vd_230_24
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_230_24:  cmp              al, 104;                             jne   .Lsubscript_α_230_999
                        add              rsp, 16
                        add              rsp, 416;                            jmp   n74_line_mark_α
.Lsubscript_α_230_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:78
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n65_deref_α
                        .size            n64_subscript_bx, .-n64_subscript_bx
                        .type            n65_deref_bx, @function
n65_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 400]           # subscript
                        mov              rsi, qword ptr [rsp + 408]           # d
                        call             rt_deref@PLT
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_231_999
                        add              rsp, 16
                        add              rsp, 432;                            jmp   n74_line_mark_α
.Lderef_α_231_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_79:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n66_deref_α
                        .size            n65_deref_bx, .-n65_deref_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 352]           # subscript
                        mov              rsi, qword ptr [rsp + 360]           # d
                        call             rt_deref@PLT
.Lgcsite_main_82:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_232_999
                        add              rsp, 16
                        add              rsp, 448;                            jmp   n74_line_mark_α
.Lderef_α_232_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_81:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n67_deref_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_deref_bx, @function
n67_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 304]           # subscript
                        mov              rsi, qword ptr [rsp + 312]           # d
                        call             rt_deref@PLT
.Lgcsite_main_84:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_233_999
                        add              rsp, 16
                        add              rsp, 464;                            jmp   n74_line_mark_α
.Lderef_α_233_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n68_deref_α
                        .size            n67_deref_bx, .-n67_deref_bx
                        .type            n68_deref_bx, @function
n68_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 256]           # subscript
                        mov              rsi, qword ptr [rsp + 264]           # d
                        call             rt_deref@PLT
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_234_999
                        add              rsp, 16
                        add              rsp, 480;                            jmp   n74_line_mark_α
.Lderef_α_234_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n69_deref_α
                        .size            n68_deref_bx, .-n68_deref_bx
                        .type            n69_deref_bx, @function
n69_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]           # subscript
                        mov              rsi, qword ptr [rsp + 216]           # d
                        call             rt_deref@PLT
.Lgcsite_main_88:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_235_999
                        add              rsp, 16
                        add              rsp, 496;                            jmp   n74_line_mark_α
.Lderef_α_235_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_87:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n70_deref_α
                        .size            n69_deref_bx, .-n69_deref_bx
                        .type            n70_deref_bx, @function
n70_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 160]           # subscript
                        mov              rsi, qword ptr [rsp + 168]           # d
                        call             rt_deref@PLT
.Lgcsite_main_90:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_236_999
                        add              rsp, 16
                        add              rsp, 512;                            jmp   n74_line_mark_α
.Lderef_α_236_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_89:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n71_deref_α
                        .size            n70_deref_bx, .-n70_deref_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # subscript
                        mov              rsi, qword ptr [rsp + 120]           # d
                        call             rt_deref@PLT
.Lgcsite_main_92:       mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_237_999
                        add              rsp, 16
                        add              rsp, 528;                            jmp   n74_line_mark_α
.Lderef_α_237_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_91:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n72_line_mark_α
                        .size            n71_deref_bx, .-n71_deref_bx
                        .type            n72_line_mark_bx, @function
n72_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_238_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n73_call_byname_α:      sub              rsp, 16
                        sub              rsp, 208
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 168], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd241: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd241]
                        lea              rsi, [rsp + 0]
                        mov              edx, 13
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_93:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_94:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 208
                        cmp              al, 104;                             jne   .Lcall_byname_α_240_999
                        add              rsp, 16
                        add              rsp, 544;                            jmp   n74_line_mark_α
.Lcall_byname_α_240_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 560;                            jmp   n74_line_mark_α
                        .size            n73_call_byname_bx, .-n73_call_byname_bx
                        .type            n74_line_mark_bx, @function
n74_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
.Lline_mark_α_242_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n75_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_244_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_assign_α
.Llit_integer_α_244_0:  .quad            0
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        add              rsp, 16;                             jmp   n77_line_mark_α
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_line_mark_bx, @function
n77_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
.Lline_mark_α_246_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n78_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_248_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_lit_integer_α
.Llit_integer_α_248_0:  .quad            1
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_to_α
.Llit_integer_α_249_0:  .quad            5000
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_to_bx, @function
n80_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_104:      cmp              eax, -2;                             jne   .Lto_vd_251_26
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_103:      mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_251_26:         test             eax, eax;                            jne   .Lto_α_251_996
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n91_line_mark_α
.Lto_α_251_996:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_102:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_101:      cmp              eax, -2;                             jne   .Lto_vd_251_25
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_251_25:         test             eax, eax;                            jne   .Lto_α_251_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n91_line_mark_α
.Lto_α_251_997:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        push             rax                                  # gc_poll bb_to.cpp:106
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_97:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_96:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 760], rax
.Lto_α_251_0:           mov              rax, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        cmp              rax, rcx;                            jle   .Lto_α_251_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n91_line_mark_α
.Lto_α_251_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:126
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_95:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n81_assign_α
n80_to_β:               inc              qword ptr [rsp + 752];               jno   .Lto_β_251_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n91_line_mark_α
.Lto_β_251_999:                                                               jmp   .Lto_α_251_0
                        .size            n80_to_bx, .-n80_to_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n82_bound_α
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_bound_bx, @function
n82_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_bound_α:            mov              qword ptr [rsp + 816], rsp;          jmp   n83_var_ref_α
n82_bound_β:                                                                  jmp   n83_var_ref_α
                        .size            n82_bound_bx, .-n82_bound_bx
                        .type            n83_var_ref_bx, @function
n83_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_var_ref_α
                        .size            n83_var_ref_bx, .-n83_var_ref_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_deref_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_deref_bx, @function
n85_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_106:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_259_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n90_unmark_α
.Lderef_α_259_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_105:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n86_line_mark_α
                        .size            n85_deref_bx, .-n85_deref_bx
                        .type            n86_line_mark_bx, @function
n86_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_260_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n87_call_byname_α:      sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd263: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd263]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_107:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_262_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n90_unmark_α
.Lcall_byname_α_262_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_var_α
                        .size            n87_call_byname_bx, .-n87_call_byname_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:                                                                    jmp   n89_assign_var_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_assign_var_bx, @function
n89_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var_ref
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
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
                        mov              r8, qword ptr [rsp + 2480]           # var
                        mov              r9, qword ptr [rsp + 2488]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_117:      cmp              al, 255;                             jne   .Lassign_var_vd_267_29
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_116:      mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_267_29: cmp              al, 104;                             jne   .Lassign_var_α_267_997
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n90_unmark_α
.Lassign_var_α_267_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_115:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n90_unmark_α
.Lassign_var_α_267_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_114:      cmp              al, 255;                             jne   .Lassign_var_vd_267_28
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_113:      mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_267_28: push             rax
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
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_267_998
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n90_unmark_α
.Lassign_var_α_267_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 2480]          # var
                        mov              rcx, qword ptr [rsp + 2488]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_main_111:      cmp              al, 255;                             jne   .Lassign_var_vd_267_27
                        call             c_rt_assign_var_strict@PLT
.Lgcsite_main_110:      mov              r9,  qword ptr [rip + rtccb+48]
.Lassign_var_vd_267_27: cmp              al, 104;                             jne   .Lassign_var_α_267_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n90_unmark_α
.Lassign_var_α_267_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:96
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_109:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n90_unmark_α
                        .size            n89_assign_var_bx, .-n89_assign_var_bx
                        .type            n90_unmark_bx, @function
n90_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_unmark_α:           add              rsp, 80;                             jmp   n80_to_β
                        .size            n90_unmark_bx, .-n90_unmark_bx
                        .type            n91_line_mark_bx, @function
n91_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
.Lline_mark_α_270_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n92_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_lit_integer_α
.Llit_integer_α_272_0:  .quad            1
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_to_α
.Llit_integer_α_273_0:  .quad            5000
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_to_bx, @function
n94_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_127:      cmp              eax, -2;                             jne   .Lto_vd_275_31
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_126:      mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_275_31:         test             eax, eax;                            jne   .Lto_α_275_996
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00001_line_mark_α
.Lto_α_275_996:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_125:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_124:      cmp              eax, -2;                             jne   .Lto_vd_275_30
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_275_30:         test             eax, eax;                            jne   .Lto_α_275_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00001_line_mark_α
.Lto_α_275_997:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_122:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_121:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 464], rax
                        push             rax                                  # gc_poll bb_to.cpp:106
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_120:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_119:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 472], rax
.Lto_α_275_0:           mov              rax, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        cmp              rax, rcx;                            jle   .Lto_α_275_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00001_line_mark_α
.Lto_α_275_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:126
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_118:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n95_assign_α
n94_to_β:               inc              qword ptr [rsp + 464];               jno   .Lto_β_275_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00001_line_mark_α
.Lto_β_275_999:                                                               jmp   .Lto_α_275_0
                        .size            n94_to_bx, .-n94_to_bx
                        .type            n95_assign_bx, @function
n95_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n96_bound_α
                        .size            n95_assign_bx, .-n95_assign_bx
                        .type            n96_bound_bx, @function
n96_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_bound_α:            mov              qword ptr [rsp + 528], rsp;          jmp   n97_var_α
n96_bound_β:                                                                  jmp   n97_var_α
                        .size            n96_bound_bx, .-n96_bound_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:                                                                    jmp   n98_var_ref_α
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_var_ref_bx, @function
n98_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_var_ref_α
                        .size            n98_var_ref_bx, .-n98_var_ref_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00002_deref_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n00002_deref_bx, @function
n00002_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_129:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_285_999
                        add              rsp, 16
                        add              rsp, -112;                           jmp   n00003_unmark_α
.Lderef_α_285_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_128:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00004_line_mark_α
                        .size            n00002_deref_bx, .-n00002_deref_bx
                        .type            n00004_line_mark_bx, @function
n00004_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_286_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00005_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd289: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd289]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_130:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_131:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_288_999
                        add              rsp, 16
                        add              rsp, -96;                            jmp   n00003_unmark_α
.Lcall_byname_α_288_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00006_subscript_α
                        .size            n00005_call_byname_bx, .-n00005_call_byname_bx
                        .type            n00006_subscript_bx, @function
n00006_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_290_1:    mov              rdi, qword ptr [rsp + 64]            # var_ref
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_290_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_137:      cmp              al, 255;                             jne   .Lsubscript_vd_290_33
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_290_33:  cmp              al, 255;                             jne   .Lsubscript_α_290_4
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
.Lgcsite_main_135:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_290_3
.Lsubscript_α_290_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_134:      cmp              al, 255;                             jne   .Lsubscript_vd_290_32
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_133:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_290_32:  push             rax
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
.Lgcsite_main_132:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_290_3:    cmp              al, 104;                             jne   .Lsubscript_α_290_999
                        add              rsp, 16
                        add              rsp, -80;                            jmp   n00003_unmark_α
.Lsubscript_α_290_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00007_deref_α
                        .size            n00006_subscript_bx, .-n00006_subscript_bx
                        .type            n00007_deref_bx, @function
n00007_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_291_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00003_unmark_α
.Lderef_α_291_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_138:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00008_coerce_numeric_α
                        .size            n00007_deref_bx, .-n00007_deref_bx
                        .type            n00008_coerce_numeric_bx, @function
n00008_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 2496]          # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_293_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_293_0
                        mov              eax, dword ptr [rsp + 16]            # deref
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_293_0
.Lcoerce_numeric_α_293_1:
                        mov              rax, qword ptr [rsp + 2496]          # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 2504]          # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00009_coerce_numeric_α
.Lcoerce_numeric_α_293_0:
                        lea              rdi, [rsp + 2496]
                        lea              rsi, [rsp + 16]                      # deref
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_142:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_293_34
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_141:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_293_34:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_293_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00003_unmark_α
.Lcoerce_numeric_α_293_999:
                                                                              jmp   n00009_coerce_numeric_α
                        .size            n00008_coerce_numeric_bx, .-n00008_coerce_numeric_bx
                        .type            n00009_coerce_numeric_bx, @function
n00009_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # deref
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_295_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_295_0
                        mov              eax, dword ptr [rsp + 2512]          # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_295_0
.Lcoerce_numeric_α_295_1:
                        mov              rax, qword ptr [rsp + 32]            # deref
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # deref
                        mov              qword ptr [rsp + 8], rax;            jmp   n00010_binop_α
.Lcoerce_numeric_α_295_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 2512]                    # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_145:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_295_35
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_144:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_295_35:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_143:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_295_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00003_unmark_α
.Lcoerce_numeric_α_295_999:
                                                                              jmp   n00010_binop_α
                        .size            n00009_coerce_numeric_bx, .-n00009_coerce_numeric_bx
                        .type            n00010_binop_bx, @function
n00010_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_296_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_296_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_296_7
.Lbinop_α_296_2:        and              edx, 1;                              jz    .Lbinop_α_296_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
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
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_296_7:                                                              jmp   n00011_assign_α
.Lbinop_α_296_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_main_147:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_296_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00003_unmark_α
.Lbinop_α_296_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_146:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00011_assign_α
                        .size            n00010_binop_bx, .-n00010_binop_bx
                        .type            n00011_assign_bx, @function
n00011_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n00003_unmark_α
                        .size            n00011_assign_bx, .-n00011_assign_bx
                        .type            n00003_unmark_bx, @function
n00003_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_unmark_α:          add              rsp, 144;                            jmp   n94_to_β
                        .size            n00003_unmark_bx, .-n00003_unmark_bx
                        .type            n00001_line_mark_bx, @function
n00001_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
.Lline_mark_α_300_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00012_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2336]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00013_deref_α
                        .size            n00012_var_ref_bx, .-n00012_var_ref_bx
                        .type            n00013_deref_bx, @function
n00013_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_149:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_304_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00014_line_mark_α
.Lderef_α_304_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_148:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00015_line_mark_α
                        .size            n00013_deref_bx, .-n00013_deref_bx
                        .type            n00015_line_mark_bx, @function
n00015_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_305_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00016_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd308: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd308]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_150:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_151:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_307_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00014_line_mark_α
.Lcall_byname_α_307_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   n00014_line_mark_α
                        .size            n00016_call_byname_bx, .-n00016_call_byname_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
.Lline_mark_α_309_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00017_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00018_lit_integer_α
.Llit_integer_α_311_0:  .quad            1
                        .size            n00017_lit_integer_bx, .-n00017_lit_integer_bx
                        .type            n00018_lit_integer_bx, @function
n00018_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_312_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00019_to_α
.Llit_integer_α_312_0:  .quad            5000
                        .size            n00018_lit_integer_bx, .-n00018_lit_integer_bx
                        .type            n00019_to_bx, @function
n00019_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_to_α:              sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_161:      cmp              eax, -2;                             jne   .Lto_vd_314_37
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_160:      mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_314_37:         test             eax, eax;                            jne   .Lto_α_314_996
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00020_line_mark_α
.Lto_α_314_996:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_159:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_main_158:      cmp              eax, -2;                             jne   .Lto_vd_314_36
                        call             c_core_icn_int_operand_ok@PLT
.Lgcsite_main_157:      mov              r9,  qword ptr [rip + rtccb+48]
.Lto_vd_314_36:         test             eax, eax;                            jne   .Lto_α_314_997
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00020_line_mark_α
.Lto_α_314_997:         push             rax                                  # gc_poll bb_to.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_156:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_155:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 160], rax
                        push             rax                                  # gc_poll bb_to.cpp:106
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_154:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rsp + 32]            # lit_integer
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_153:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 168], rax
.Lto_α_314_0:           mov              rax, qword ptr [rsp + 160]
                        mov              rcx, qword ptr [rsp + 168]
                        cmp              rax, rcx;                            jle   .Lto_α_314_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00020_line_mark_α
.Lto_α_314_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:126
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_152:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00021_assign_α
n00019_to_β:              inc              qword ptr [rsp + 160];               jno   .Lto_β_314_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00020_line_mark_α
.Lto_β_314_999:                                                               jmp   .Lto_α_314_0
                        .size            n00019_to_bx, .-n00019_to_bx
                        .type            n00021_assign_bx, @function
n00021_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_assign_α:          mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n00022_bound_α
                        .size            n00021_assign_bx, .-n00021_assign_bx
                        .type            n00022_bound_bx, @function
n00022_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_bound_α:           mov              qword ptr [rsp + 224], rsp;          jmp   n00023_var_α
n00022_bound_β:                                                                 jmp   n00023_var_α
                        .size            n00022_bound_bx, .-n00022_bound_bx
                        .type            n00023_var_bx, @function
n00023_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_var_α:                                                                   jmp   n00024_var_ref_α
                        .size            n00023_var_bx, .-n00023_var_bx
                        .type            n00024_var_ref_bx, @function
n00024_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2432]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00025_var_α
                        .size            n00024_var_ref_bx, .-n00024_var_ref_bx
                        .type            n00025_var_bx, @function
n00025_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_α:                                                                   jmp   n00026_subscript_α
                        .size            n00025_var_bx, .-n00025_var_bx
                        .type            n00026_subscript_bx, @function
n00026_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_324_1:    mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 2432]          # var
                        mov              rcx, qword ptr [rsp + 2440]
                        test             eax, eax;                            jne   .Lsubscript_α_324_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_167:      cmp              al, 255;                             jne   .Lsubscript_vd_324_39
                        call             c_rt_subscript_val_strict@PLT
.Lgcsite_main_166:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_324_39:  cmp              al, 255;                             jne   .Lsubscript_α_324_4
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
.Lgcsite_main_165:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_324_3
.Lsubscript_α_324_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_164:      cmp              al, 255;                             jne   .Lsubscript_vd_324_38
                        call             c_rt_subscript_var_strict@PLT
.Lgcsite_main_163:      mov              r9,  qword ptr [rip + rtccb+48]
.Lsubscript_vd_324_38:  push             rax
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
.Lgcsite_main_162:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_324_3:    cmp              al, 104;                             jne   .Lsubscript_α_324_999
                        add              rsp, 16
                        add              rsp, -80;                            jmp   n00027_unmark_α
.Lsubscript_α_324_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00028_deref_α
                        .size            n00026_subscript_bx, .-n00026_subscript_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_169:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_325_999
                        add              rsp, 16
                        add              rsp, -64;                            jmp   n00027_unmark_α
.Lderef_α_325_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_168:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00029_coerce_numeric_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00029_coerce_numeric_bx, @function
n00029_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 2448]          # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_327_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
                        mov              eax, dword ptr [rsp + 16]            # deref
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_327_0
.Lcoerce_numeric_α_327_1:
                        mov              rax, qword ptr [rsp + 2448]          # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 2456]          # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00030_coerce_numeric_α
.Lcoerce_numeric_α_327_0:
                        lea              rdi, [rsp + 2448]
                        lea              rsi, [rsp + 16]                      # deref
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_172:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_327_40
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_171:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_327_40:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_170:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_327_999
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n00027_unmark_α
.Lcoerce_numeric_α_327_999:
                                                                              jmp   n00030_coerce_numeric_α
                        .size            n00029_coerce_numeric_bx, .-n00029_coerce_numeric_bx
                        .type            n00030_coerce_numeric_bx, @function
n00030_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # deref
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_329_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_329_0
                        mov              eax, dword ptr [rsp + 2464]          # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_329_0
.Lcoerce_numeric_α_329_1:
                        mov              rax, qword ptr [rsp + 32]            # deref
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # deref
                        mov              qword ptr [rsp + 8], rax;            jmp   n00031_binop_α
.Lcoerce_numeric_α_329_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 2464]                    # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_175:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_329_41
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_174:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_329_41:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_173:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_329_999
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n00027_unmark_α
.Lcoerce_numeric_α_329_999:
                                                                              jmp   n00031_binop_α
                        .size            n00030_coerce_numeric_bx, .-n00030_coerce_numeric_bx
                        .type            n00031_binop_bx, @function
n00031_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_330_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_330_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_330_7
.Lbinop_α_330_2:        and              edx, 1;                              jz    .Lbinop_α_330_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
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
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_330_7:                                                              jmp   n00032_assign_α
.Lbinop_α_330_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_main_177:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_330_999
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n00027_unmark_α
.Lbinop_α_330_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_176:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00032_assign_α
                        .size            n00031_binop_bx, .-n00031_binop_bx
                        .type            n00032_assign_bx, @function
n00032_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n00027_unmark_α
                        .size            n00032_assign_bx, .-n00032_assign_bx
                        .type            n00027_unmark_bx, @function
n00027_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_unmark_α:          add              rsp, 96;                             jmp   n00019_to_β
                        .size            n00027_unmark_bx, .-n00027_unmark_bx
                        .type            n00020_line_mark_bx, @function
n00020_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
.Lline_mark_α_334_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00033_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 2336]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00034_deref_α
                        .size            n00033_var_ref_bx, .-n00033_var_ref_bx
                        .type            n00034_deref_bx, @function
n00034_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_179:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_338_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lderef_α_338_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:26
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_178:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n00035_line_mark_α
                        .size            n00034_deref_bx, .-n00034_deref_bx
                        .type            n00035_line_mark_bx, @function
n00035_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_339_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
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
n00036_call_byname_α:     sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd342: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd342]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_180:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_181:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_byname_α_341_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   main_ω
.Lcall_byname_α_341_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 48;                             jmp   main_ω
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
                        lea              rsp, [rbp + 2480]
                        mov              rbp, qword ptr [rbp + 2472];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2480]
                        mov              rbp, qword ptr [rbp + 2472];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            10652865351002
                        .quad            382252089440
                        .quad            .Lgcmap_main_s
                        .quad            2368
                        .quad            13
                        .quad            105553116266496
                        .quad            17596481011808
                        .quad            52776558133360
                        .quad            17596481011872
                        .quad            246290604622000
                        .quad            17596481012112
                        .quad            52776558133664
                        .quad            17596481012176
                        .quad            228698418577888
                        .quad            17596481012400
                        .quad            52776558133952
                        .quad            17596481012464
                        .quad            1759218604442368
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_0:       .quad            182
                        .quad            .Lgcmap_main
                        .quad            9223389626893339056
                        .quad            .Lgccode_main_0
                        .quad            .Lgcsite_main_0-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_2-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_3-.Lgccode_main_0
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
                        .quad            .Lgcsite_main_21-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_20-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_19-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_18-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_17-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_16-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_15-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_14-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_13-.Lgccode_main_0
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
                        .quad            .Lgcsite_main_24-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_23-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_22-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_39-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_38-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_37-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_36-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_35-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_34-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_33-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_32-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_31-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_48-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_47-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_46-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_45-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_44-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_43-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_42-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_41-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_40-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_57-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_56-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_55-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_54-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_53-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_52-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_51-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_50-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_49-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_60-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_59-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_58-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_63-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_62-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_61-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_66-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_65-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_64-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_69-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_68-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_67-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_72-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_71-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_70-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_75-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_74-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_73-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_78-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_77-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_76-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_80-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_79-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_82-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_81-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_84-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_83-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_86-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_85-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_88-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_87-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_90-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_89-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_92-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_91-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_93-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_94-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_104-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_103-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_102-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_101-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_100-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_99-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_98-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_97-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_96-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_95-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_106-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_105-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_107-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_108-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_117-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_116-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_115-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_114-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_113-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_112-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_111-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_110-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_109-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_127-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_126-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_125-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_124-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_123-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_122-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_121-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_120-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_119-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_118-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_129-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_128-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_130-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_131-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_137-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_136-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_135-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_134-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_133-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_132-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_139-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_138-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_142-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_141-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_140-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_145-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_144-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_143-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_147-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_146-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_149-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_148-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_150-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_151-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_161-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_160-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_159-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_158-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_157-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_156-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_155-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_154-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_153-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_152-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_167-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_166-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_165-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_164-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_163-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_162-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_169-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_168-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_172-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_171-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_170-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_175-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_174-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_173-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_177-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_176-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_179-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_178-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_180-.Lgccode_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_181-.Lgccode_main_0
                        .quad            65537
                        .popsection
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
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            2352
                        .long            2336
                        .long            2320
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
