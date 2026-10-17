                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/roman/roman.sno"
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
                        mov              edi, 748
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 748
                        call             gva_register@PLT
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 5
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
.Lgvan741:              .string          "ROMAN"
.Lgvan742:              .string          "N"
.Lgvan743:              .string          "UNITS"
.Lgvan744:              .string          "TEST"
.Lgvan745:              .string          "I"
.Lgvan746:              .string          "J"
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
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "ROMAN"
.Llbln1:                .string          "ROMAN_END"
.Llbln2:                .string          "TEST"
.Llbln3:                .string          "TEST_END"
.Llbln4:                .string          "END"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_0:
main_α:
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp$ + 1288]
main_α_body:
                        sub              rsp, 0
                        .type            n0_call_direct_bx, @function
n0_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_direct_α:       sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_108_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_direct_α
.Lcall_direct_α_108_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_call_direct_α
n0_call_direct_β:       add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_direct_α
                        .size            n0_call_direct_bx, .-n0_call_direct_bx
                        .type            n1_call_direct_bx, @function
n1_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_direct_α:       sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_109_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_direct_α_109_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_direct_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_direct_bx, .-n1_call_direct_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "snobol4/roman/roman.sno"
                        .popsection
.Lstatement_begin_α_110_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_110_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       DEFINE('ROMAN(N)UNITS')  :(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n2_statement_begin_α:                                                         jmp   n3_define_α
n2_statement_begin_β:                                                         jmp   n5_setexit_test_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_define_bx, @function
n3_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_define_α:            mov              rdi, qword ptr [rip + .Ldefine_α_113_0] # name
                        mov              rsi, qword ptr [rip + .Ldefine_α_113_1] # params_csv
                        mov              edx, 2                               # nparams
                        mov              ecx, 1                               # nformals
                        mov              r8d, 0                               # frame_bytes
                        lea              r9, [rip + LBL__ROMAN]               # fn
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
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_113_0]
                        lea              rsi, [rip + ROMAN_α]
                        call             bb_ab_seal_alpha@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .data
                        .align           8
entry_cell$ROMAN:       .quad            LBL__ROMAN
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__ROMAN]
                        mov              rcx, qword ptr [rip + entry_cell$ROMAN@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n4_statement_end_α
n3_define_β:                                                                  jmp   n2_statement_begin_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_113_0: .quad .Ldefine_α_113_0_s; .popsection
.Ldefine_α_113_0_s:     .string          "ROMAN"
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_113_1: .quad .Ldefine_α_113_1_s; .popsection
.Ldefine_α_113_1_s:     .string          "N,UNITS"
                                                                              jmp   .Ldefine_α_114_245
#-----------------------------------------------------------------------------------------------------------------------
ROMAN_α:                sub              rsp, 80
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 56], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 11888]          # UNITS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 11888], 0
                        mov              qword ptr [r9 + 11896], 0
                        mov              rax, qword ptr [r9 + 11856]          # ROMAN
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 11856], 0
                        mov              qword ptr [r9 + 11864], 0
                        mov              qword ptr [rsp + 48], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_114_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 11872]          # N
                        mov              qword ptr [r9 + 11872], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 11880]
                        mov              qword ptr [r9 + 11880], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_114_11
.Ldefine_α_114_10:      mov              rax, qword ptr [r9 + 11872]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 11872], 0
                        mov              qword ptr [r9 + 11880], 0
.Ldefine_α_114_11:      push             rcx
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
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 48], rax
                        pop              rcx;                                 jmp   .Ldefine_α_114_231
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_114_232: .quad .Ldefine_α_114_232_s; .popsection
.Ldefine_α_114_232_s:   .string          "ROMAN"
.Ldefine_α_114_231:     lea              rcx, [rip + ROMAN_γ]
                        lea              rax, [rip + ROMAN_ω]
                        push             rax
                        push             rcx
                        mov              rax, qword ptr [rip + entry_cell$ROMAN@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ROMAN_γ:
.Lgcsite_main_7:        mov              rdi, qword ptr [r9 + 11856]          # ROMAN
                        mov              rsi, qword ptr [r9 + 11864]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rdx
                        push             rax;                                 jmp   .Ldefine_α_114_236
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_114_237: .quad .Ldefine_α_114_237_s; .popsection
.Ldefine_α_114_237_s:   .string          "ROMAN"
.Ldefine_α_114_236:     pop              rax
                        pop              rdx
                        mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 11856], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 11864], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 11888], rax          # UNITS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11896], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_114_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11872], rax          # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11880], rax;         jmp   .Ldefine_α_114_81
.Ldefine_α_114_80:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 11872], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 11880], rax
.Ldefine_α_114_81:      push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 48]
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
                        mov              rdx, qword ptr [rsp + 56]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ROMAN_ω:                mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 11856], rax          # ROMAN
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 11864], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 11888], rax          # UNITS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11896], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_114_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11872], rax          # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11880], rax;         jmp   .Ldefine_α_114_151
.Ldefine_α_114_150:     mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 11872], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 11880], rax
.Ldefine_α_114_151:     push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rsp + 48]
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
                        mov              rdx, qword ptr [rsp + 56]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_114_245:
                        .size            n3_define_bx, .-n3_define_bx
                        .type            n4_statement_end_bx, @function
n4_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:                                                           jmp   n43_statement_begin_α
                        .size            n4_statement_end_bx, .-n4_statement_end_bx
                        .type            n5_setexit_test_bx, @function
n5_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_setexit_test_α:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_117_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_117_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_117_61:
.Lsetexit_test_α_117_1:                                                       jmp   n43_statement_begin_α
                        .size            n5_setexit_test_bx, .-n5_setexit_test_bx
                        .type            n6_statement_begin_bx, @function
n6_statement_begin_bx:
.Lstatement_begin_α_118_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_118_stno
                        .long            2
                        .long            2
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# ROMAN N RPOS(1) LEN(1) . UNITS =  :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
LBL__ROMAN:                                                                   jmp   n7_var_α
n6_statement_begin_β:                                                         jmp   n17_setexit_test_α
                        .size            n6_statement_begin_bx, .-n6_statement_begin_bx
                        .type            n7_var_bx, @function
n7_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # N
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_match_begin_α
                        .size            n7_var_bx, .-n7_var_bx
                        .type            n8_match_begin_bx, @function
n8_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
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
.Lgcsite_main_11:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_122_0
                        call             c_rt_match_enter@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_122_0: push             rax
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
                        test             r13, r13;                            jne   .Lmatch_begin_α_122_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_122_1
.Lmatch_begin_α_122_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_122_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_122_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n9_match_rpos_α
n8_match_begin_β:
.Lmatch_begin_α_122_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_122_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_122_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_122_1
                                                                              jmp   .Lmatch_begin_α_122_0
.Lmatch_begin_α_122_1:
.Lmatch_begin_γ_8_af:
.Lmatch_begin_ω_8_af:   mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp
                        add              rsp, 16;                             jmp   n17_setexit_test_α
                        .size            n8_match_begin_bx, .-n8_match_begin_bx
                        .type            n9_match_rpos_bx, @function
n9_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_rpos_α:        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n8_match_begin_β
                                                                              jmp   n10_match_assign_save_α
n9_match_rpos_β:                                                              jmp   n8_match_begin_β
                        .size            n9_match_rpos_bx, .-n9_match_rpos_bx
                        .type            n10_match_assign_save_bx, @function
n10_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n11_match_len_α
n10_match_assign_save_β:
                        add              rsp, 16;                             jmp   n8_match_begin_β
                        .size            n10_match_assign_save_bx, .-n10_match_assign_save_bx
                        .type            n11_match_len_bx, @function
n11_match_len_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_len_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lmatch_len_α_126_240
                        add              rsp, 16;                             jmp   n8_match_begin_β
.Lmatch_len_α_126_240:  add              r14d, 1;                             jmp   n12_match_assign_cond_α
n11_match_len_β:        sub              r14d, 1
                        add              rsp, 16;                             jmp   n8_match_begin_β
                        .size            n11_match_len_bx, .-n11_match_len_bx
                        .type            n12_match_assign_cond_bx, @function
n12_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n13_match_end_α
n12_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n11_match_len_β
                        .size            n12_match_assign_cond_bx, .-n12_match_assign_cond_bx
                        .type            n13_match_end_bx, @function
n13_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_8_af
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
.Lgcsite_main_44:       push             rax
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
.Lgcsite_main_43:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_130_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_130_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_130_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_130_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_130_120
                        lea              rcx, [rip + .Lmatch_end_α_130_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_21]
                        lea              rdx, [rip + .Lmatch_end_α_130_22];   jmp   rax
.Lmatch_end_α_130_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_130_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_130_23:
.Lgcsite_main_42:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_8
.Lmatch_end_α_130_24:
.Lgcsite_main_41:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_9
.Lmatch_end_α_130_21:
.Lgcsite_main_40:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_8
.Lmatch_end_α_130_22:
.Lgcsite_main_39:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_9
.Lmatch_end_α_130_120:  lea              rcx, [rip + .Lmatch_end_α_130_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_121]
                        lea              rdx, [rip + .Lmatch_end_α_130_122];  jmp   rax
.Lmatch_end_α_130_121:
.Lgcsite_main_38:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_8
.Lmatch_end_α_130_122:
.Lgcsite_main_37:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_9
.Lmatch_end_α_130_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_36:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_35:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_130_1
.Lmatch_end_α_130_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_34:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_33:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_130_1
.Lmatch_end_α_130_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_130_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_32:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_130_61
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_130_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_130_140
                        lea              rcx, [rip + .Lmatch_end_α_130_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_41]
                        lea              rdx, [rip + .Lmatch_end_α_130_42];   jmp   rax
.Lmatch_end_α_130_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_130_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_130_43:
.Lgcsite_main_30:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_45
.Lmatch_end_α_130_44:
.Lgcsite_main_29:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_46
.Lmatch_end_α_130_41:
.Lgcsite_main_28:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_45
.Lmatch_end_α_130_42:
.Lgcsite_main_27:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_46
.Lmatch_end_α_130_140:  lea              rcx, [rip + .Lmatch_end_α_130_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_130_141]
                        lea              rdx, [rip + .Lmatch_end_α_130_142];  jmp   rax
.Lmatch_end_α_130_141:
.Lgcsite_main_26:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_45
.Lmatch_end_α_130_142:
.Lgcsite_main_25:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_130_46
.Lmatch_end_α_130_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_23:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_130_62
.Lmatch_end_α_130_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_22:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_130_62
.Lmatch_end_α_130_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:292
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_130_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:296
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_130_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_130_1
.Lmatch_end_α_130_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_14:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_130_13
                                                                              jmp   .Lmatch_begin_ω_8_af
.Lmatch_end_α_130_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
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
.Lgcsite_main_13:                                                             jmp   n14_lit_string_α
                        .size            n13_match_end_bx, .-n13_match_end_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_match_replace_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_131_0: .quad .Llit_string_α_131_0_s; .popsection
.Llit_string_α_131_0_s: .string          ""
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_match_replace_bx, @function
n15_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_match_replace_α:    mov              rdi, qword ptr [rip + .Lmatch_replace_α_133_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        call             qword ptr [rip + rt_match_replace@GOTPCREL]
.Lgcsite_main_47:       cmp              al, 255;                             jne   .Lmatch_replace_vd_133_1
                        call             c_rt_match_replace@PLT
.Lgcsite_main_46:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_replace_vd_133_1:
                        add              rsp, 16                              # repl_subtree_free
                        push             rax                                  # gc_poll bb_match_replace.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_45:       mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n16_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lmatch_replace_α_133_0: .quad .Lmatch_replace_α_133_0_s; .popsection
.Lmatch_replace_α_133_0_s:
                        .string          "N"
                        .size            n15_match_replace_bx, .-n15_match_replace_bx
                        .type            n16_statement_end_bx, @function
n16_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 16;                             jmp   n18_statement_begin_α
                        .size            n16_statement_end_bx, .-n16_statement_end_bx
                        .type            n17_setexit_test_bx, @function
n17_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_136_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_136_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_136_61:
.Lsetexit_test_α_136_1:                                                       jmp   RETURN
                        .size            n17_setexit_test_bx, .-n17_setexit_test_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
.Lstatement_begin_α_137_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_137_stno
                        .long            3
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS BREAK(',') . UNITS  :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n18_statement_begin_α:                                                        jmp   n19_lit_string_α
n18_statement_begin_β:                                                        jmp   n31_setexit_test_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Llit_string_α_139_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_139_0: .quad .Llit_string_α_139_0_s; .popsection
.Llit_string_α_139_0_s: .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # UNITS
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_lit_integer_α
n20_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n31_setexit_test_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_call_direct_α
n21_lit_integer_β:      add              rsp, 16;                             jmp   n20_var_β
.Llit_integer_α_141_0:  .quad            8
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_call_direct_bx, @function
n22_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_direct_α:      sub              rsp, 16
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
.Lgcsite_main_48:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_49:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_direct_α_142_240
                        add              rsp, 16;                             jmp   n21_lit_integer_β
.Lcall_direct_α_142_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_assign_α
n22_call_direct_β:      add              rsp, 16;                             jmp   n21_lit_integer_β
                        .size            n22_call_direct_bx, .-n22_call_direct_bx
                        .type            n23_assign_bx, @function
n23_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n24_match_begin_α
n23_assign_β:           add              rsp, 16;                             jmp   n21_lit_integer_β
                        .size            n23_assign_bx, .-n23_assign_bx
                        .type            n24_match_begin_bx, @function
n24_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_match_begin_α:      mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
.Lgcsite_main_54:       push             rbp
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
.Lgcsite_main_53:       cmp              rax, -1;                             jne   .Lmatch_begin_vd_145_2
                        call             c_rt_match_enter@PLT
.Lgcsite_main_52:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_begin_vd_145_2: push             rax
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
.Lgcsite_main_51:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        test             r13, r13;                            jne   .Lmatch_begin_α_145_14
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax;          jmp   .Lmatch_begin_α_145_1
.Lmatch_begin_α_145_14: mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_145_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_145_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n25_match_defer_α
n24_match_begin_β:
.Lmatch_begin_α_145_13: lea              rsp, [rbp + -88]                     # retry_whack
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_α_145_1
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_α_145_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_α_145_1
                                                                              jmp   .Lmatch_begin_α_145_0
.Lmatch_begin_α_145_1:
.Lmatch_begin_γ_24_af:
.Lmatch_begin_ω_24_af:  mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
.Lgcsite_main_50:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n23_assign_β
                        .size            n24_match_begin_bx, .-n24_match_begin_bx
                        .type            n25_match_defer_bx, @function
n25_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_match_defer_α:      mov              rax, qword ptr [r9 + 11952]
                        mov              rdx, qword ptr [r9 + 11960]
                        cmp              al, 8;                               jne   .Lmatch_defer_α_146_9
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_146_10
                        mov              rdi, rdx
                        call             dtp_fn_of@PLT
.Lgcsite_main_77:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_match_defer.cpp:107
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_76:       mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdx, qword ptr [r9 + 11960];         jmp   .Lmatch_defer_α_146_10
.Lmatch_defer_α_146_9:  xor              eax, eax
.Lmatch_defer_α_146_10: test             rax, rax;                            jz    .Lmatch_defer_α_146_0
.Lmatch_defer_α_146_48: mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_146_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_146_4:
.Lgcsite_main_75:                                                             jmp   n26_match_assign_save_α
.Lmatch_defer_α_146_5:
.Lgcsite_main_74:       cmp              r14d, -2;                            je    .Lmatch_begin_ω_24_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_24_af
                                                                              jmp   n24_match_begin_β
.Lmatch_defer_α_146_0:  sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        sub              rsp, 144
                        lea              rdi, [r9 + 11952]
                        xor              esi, esi
                        mov              rdx, rsp
                        mov              qword ptr [1879048192], r12
                        call             qword ptr [rip + rt_defer_open_cell@GOTPCREL]
.Lgcsite_main_73:       cmp              rax, -1;                             jne   .Lmatch_defer_vd_146_4
                        call             c_rt_defer_open_cell@PLT
.Lgcsite_main_72:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_146_4: push             rax
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_146_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_146_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_71:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_146_2:  test             rax, rax;                            je    .Lmatch_defer_α_146_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_146_40
                        cmp              rdx, 5;                              je    .Lmatch_defer_α_146_61
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_146_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_146_141
                        lea              rcx, [rip + .Lmatch_defer_α_146_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_42]
                        lea              rdx, [rip + .Lmatch_defer_α_146_43]; jmp   rax
.Lmatch_defer_α_146_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_146_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_defer_α_146_44:
.Lgcsite_main_70:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_146_46
.Lmatch_defer_α_146_45:
.Lgcsite_main_69:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_146_47
.Lmatch_defer_α_146_42:
.Lgcsite_main_68:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_146_46
.Lmatch_defer_α_146_43:
.Lgcsite_main_67:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_146_47
.Lmatch_defer_α_146_141:
                        lea              rcx, [rip + .Lmatch_defer_α_146_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_146_142]
                        lea              rdx, [rip + .Lmatch_defer_α_146_143]
                                                                              jmp   rax
.Lmatch_defer_α_146_142:
.Lgcsite_main_66:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_146_46
.Lmatch_defer_α_146_143:
.Lgcsite_main_65:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_146_47
.Lmatch_defer_α_146_46: mov              rcx, rsp
                        call             rt_defer_land_γ@PLT
.Lgcsite_main_64:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_146_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_146_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_63:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_146_2
.Lmatch_defer_α_146_47: mov              rsi, rsp
                        call             rt_defer_land_ω@PLT
.Lgcsite_main_62:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_146_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_146_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_61:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_146_2
.Lmatch_defer_α_146_61: sub              rsp, 64
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
                        lea              rcx, [rip + .Lmatch_defer_α_146_62]
                        mov              rdx, rcx
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_146_62:
.Lgcsite_main_60:       add              rsp, 8
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64
                        mov              rsi, rsp                             # s
                        call             rt_defer_land_chain@PLT
.Lgcsite_main_59:       mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_146_63
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_146_63: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_58:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_146_2
.Lmatch_defer_α_146_40: add              rsp, 144
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_146_48
.Lmatch_defer_α_146_3:  mov              edi, r14d
                        mov              rsi, rsp
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
.Lgcsite_main_57:       cmp              eax, -2;                             jne   .Lmatch_defer_vd_146_3
                        call             c_rt_defer_close@PLT
.Lgcsite_main_56:       mov              r9,  qword ptr [rip + rtccb+48]
.Lmatch_defer_vd_146_3: add              rsp, 144
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
.Lgcsite_main_55:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_146_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_24_af
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_24_af
                        test             eax, eax;                            js    n24_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_146_6]
                        push             rcx
                        push             rax;                                 jmp   n26_match_assign_save_α
.Lmatch_defer_α_146_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n24_match_begin_β
n25_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_146_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_146_12
                                                                              jmp   rax
.Lmatch_defer_β_146_12:                                                       jmp   qword ptr [rsp]
                        .size            n25_match_defer_bx, .-n25_match_defer_bx
                        .type            n26_match_assign_save_bx, @function
n26_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n27_match_break_α
n26_match_assign_save_β:
                        add              rsp, 16;                             jmp   n25_match_defer_β
                        .size            n26_match_assign_save_bx, .-n26_match_assign_save_bx
                        .type            n27_match_break_bx, @function
n27_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_match_break_α:      sub              rsp, 16
                        movsxd           rcx, r14d
.Lmatch_break_α_150_0:  cmp              ecx, r15d;                           jl    .Lmatch_break_α_150_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n25_match_defer_β
.Lmatch_break_α_150_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_150_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_150_0
.Lmatch_break_α_150_1:  mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n28_match_assign_cond_α
n27_match_break_β:      mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n25_match_defer_β
                        .size            n27_match_break_bx, .-n27_match_break_bx
                        .type            n28_match_assign_cond_bx, @function
n28_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_match_assign_cond_α:
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n29_match_end_α
n28_match_assign_cond_β:
                        sub              r12, 24;                             jmp   n27_match_break_β
                        .size            n28_match_assign_cond_bx, .-n28_match_assign_cond_bx
                        .type            n29_match_end_bx, @function
n29_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 200]
                        test             rcx, rcx;                            jne   .Lmatch_begin_ω_24_af
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
.Lgcsite_main_109:      push             rax
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
.Lgcsite_main_108:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_154_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_154_2
                        cmp              rax, 2;                              je    .Lmatch_end_α_154_10
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_154_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_154_120
                        lea              rcx, [rip + .Lmatch_end_α_154_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_21]
                        lea              rdx, [rip + .Lmatch_end_α_154_22];   jmp   rax
.Lmatch_end_α_154_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_154_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_154_23:
.Lgcsite_main_107:      add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_8
.Lmatch_end_α_154_24:
.Lgcsite_main_106:      add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_9
.Lmatch_end_α_154_21:
.Lgcsite_main_105:      add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_8
.Lmatch_end_α_154_22:
.Lgcsite_main_104:      add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_9
.Lmatch_end_α_154_120:  lea              rcx, [rip + .Lmatch_end_α_154_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_121]
                        lea              rdx, [rip + .Lmatch_end_α_154_122];  jmp   rax
.Lmatch_end_α_154_121:
.Lgcsite_main_103:      add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_8
.Lmatch_end_α_154_122:
.Lgcsite_main_102:      add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_9
.Lmatch_end_α_154_8:    mov              rdx, rsp
                        call             rt_dcap_land_γ@PLT
.Lgcsite_main_101:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_100:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_154_1
.Lmatch_end_α_154_9:    mov              rdi, rsp
                        call             rt_dcap_land_ω@PLT
.Lgcsite_main_99:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_98:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_154_1
.Lmatch_end_α_154_10:   mov              rcx, qword ptr [rsp + 112]
                        test             rcx, rcx;                            jz    .Lmatch_end_α_154_60
                        lea              rdi, [rsp + 112]                     # args
                        mov              esi, 3                               # nargs
                        call             rt_apply_open@PLT
.Lgcsite_main_97:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_96:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jz    .Lmatch_end_α_154_61
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_154_40
                        cmp              rcx, 1;                              je    .Lmatch_end_α_154_140
                        lea              rcx, [rip + .Lmatch_end_α_154_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_41]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_41]
                        lea              rdx, [rip + .Lmatch_end_α_154_42];   jmp   rax
.Lmatch_end_α_154_40:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_154_43]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_44]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        mov              rcx, qword ptr [rip + rt_tiny_glue_enter@GOTPCREL]
                                                                              jmp   rcx
.Lmatch_end_α_154_43:
.Lgcsite_main_95:       add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_45
.Lmatch_end_α_154_44:
.Lgcsite_main_94:       add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_46
.Lmatch_end_α_154_41:
.Lgcsite_main_93:       add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_45
.Lmatch_end_α_154_42:
.Lgcsite_main_92:       add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_46
.Lmatch_end_α_154_140:  lea              rcx, [rip + .Lmatch_end_α_154_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_141]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_154_141]
                        lea              rdx, [rip + .Lmatch_end_α_154_142];  jmp   rax
.Lmatch_end_α_154_141:
.Lgcsite_main_91:       add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_45
.Lmatch_end_α_154_142:
.Lgcsite_main_90:       add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_154_46
.Lmatch_end_α_154_45:   mov              rcx, rsp
                        call             rt_apply_land_γ@PLT
.Lgcsite_main_89:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_88:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_154_62
.Lmatch_end_α_154_46:   mov              rsi, rsp
                        call             rt_apply_land_ω@PLT
.Lgcsite_main_87:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_86:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 16;                             jmp   .Lmatch_end_α_154_62
.Lmatch_end_α_154_61:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_run@PLT
.Lgcsite_main_85:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:292
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_84:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_154_62:   lea              rdi, [rsp + 112]                     # pend
                        call             rt_trace_pend_close@PLT
.Lgcsite_main_83:       mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_glue_flat.cpp:296
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_82:       mov              r9,  qword ptr [rip + rtccb+48]
1:
.Lmatch_end_α_154_60:   mov              rdi, rsp                             # c
                        call             rt_dcap_resume@PLT
.Lgcsite_main_81:       mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_80:       mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_154_1
.Lmatch_end_α_154_2:    add              rsp, 224
                        mov              qword ptr [rsp + 0], rax
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
.Lgcsite_main_79:       mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_154_13
                                                                              jmp   .Lmatch_begin_ω_24_af
.Lmatch_end_α_154_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp
.Lgcsite_main_78:                                                             jmp   n30_statement_end_α
                        .size            n29_match_end_bx, .-n29_match_end_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    add              rsp, 64;                             jmp   n32_statement_begin_α
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_setexit_test_bx, @function
n31_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_157_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_157_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_157_61:
.Lsetexit_test_α_157_1:                                                       jmp   FRETURN
                        .size            n31_setexit_test_bx, .-n31_setexit_test_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
.Lstatement_begin_α_158_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_158_stno
                        .long            4
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS  :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n32_statement_begin_α:                                                        jmp   n33_var_α
n32_statement_begin_β:                                                        jmp   n42_setexit_test_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # N
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_call_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig162z]
                        mov              rax, [rip + alpha_cellp$ROMAN]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig162z: .quad 1
                        .quad            .Lcall_α_162_2
                        .quad            .Lcall_α_162_2
                        .quad            16; .popsection
.Lcall_α_162_2:
.Lgcsite_main_111:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_162_29
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_162_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_162_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_110:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_162_23
.Lcall_α_162_24:
.Lcall_α_162_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_162_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_162_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lcall_α_162_240:                                                             jmp   n35_lit_string_α
n34_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_162_0: .quad .Lcall_β_162_0_s; .popsection
.Lcall_β_162_0_s:       .string          "ROMAN"
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_163_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_lit_string_α
n35_lit_string_β:       add              rsp, 16
                        add              rsp, 32;                             jmp   n32_statement_begin_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_163_0: .quad .Llit_string_α_163_0_s; .popsection
.Llit_string_α_163_0_s: .string          "IVXLCDM"
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_lit_string_bx, @function
n36_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_164_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_call_byname_α
n36_lit_string_β:       add              rsp, 16;                             jmp   n35_lit_string_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_164_0: .quad .Llit_string_α_164_0_s; .popsection
.Llit_string_α_164_0_s: .string          "XLCDM**"
                        .size            n36_lit_string_bx, .-n36_lit_string_bx
                        .type            n37_call_byname_bx, @function
n37_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_byname_α:      sub              rsp, 16
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
.Lcall_byname_α_rkfnzd166: .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd166]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 507950
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
.Lgcsite_main_113:      cmp              al, 255;                             jne   .Lcall_byname_vd_165_5
                        call             c_rt_call_bid_sn4@PLT
.Lgcsite_main_112:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcall_byname_vd_165_5: push             rax
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
.Lgcsite_main_114:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_byname_α_165_240
                        add              rsp, 16;                             jmp   n36_lit_string_β
.Lcall_byname_α_165_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_var_α
n37_call_byname_β:      add              rsp, 16;                             jmp   n36_lit_string_β
                        .size            n37_call_byname_bx, .-n37_call_byname_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11888]          # UNITS
                        mov              rdx, qword ptr [r9 + 11896]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_binop_α
n38_var_β:              add              rsp, 32;                             jmp   n36_lit_string_β
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_binop_bx, @function
n39_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_117:      cmp              al, 255;                             jne   .Lbinop_vd_168_6
                        call             c_sno_concat_d@PLT
.Lgcsite_main_116:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_168_6:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_115:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_168_240
                        add              rsp, 16;                             jmp   n38_var_β
.Lbinop_α_168_240:                                                            jmp   n40_assign_α
n39_binop_β:            add              rsp, 16;                             jmp   n38_var_β
                        .size            n39_binop_bx, .-n39_binop_bx
                        .type            n40_assign_bx, @function
n40_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # ROMAN
                        mov              qword ptr [r9 + 11864], rdx;         jmp   n41_statement_end_α
                        .size            n40_assign_bx, .-n40_assign_bx
                        .type            n41_statement_end_bx, @function
n41_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    add              rsp, 112;                            jmp   RETURN
                        .size            n41_statement_end_bx, .-n41_statement_end_bx
                        .type            n42_setexit_test_bx, @function
n42_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_172_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_172_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_172_61:
.Lsetexit_test_α_172_1:                                                       jmp   FRETURN
                        .size            n42_setexit_test_bx, .-n42_setexit_test_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
.Lstatement_begin_α_173_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_173_stno
                        .long            5
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# ROMAN_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n43_statement_begin_α:                                                        jmp   n44_statement_end_α
n43_statement_begin_β:                                                        jmp   n45_setexit_test_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_statement_end_bx, @function
n44_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:                                                          jmp   n46_statement_begin_α
                        .size            n44_statement_end_bx, .-n44_statement_end_bx
                        .type            n45_setexit_test_bx, @function
n45_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_177_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_177_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_177_61:
.Lsetexit_test_α_177_1:                                                       jmp   n46_statement_begin_α
                        .size            n45_setexit_test_bx, .-n45_setexit_test_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
.Lstatement_begin_α_178_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_178_stno
                        .long            6
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       DEFINE("TEST(I,J)")  :(TEST_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n46_statement_begin_α:                                                        jmp   n47_define_α
n46_statement_begin_β:                                                        jmp   n49_setexit_test_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_define_bx, @function
n47_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_define_α:           mov              rdi, qword ptr [rip + .Ldefine_α_181_0] # name
                        mov              rsi, qword ptr [rip + .Ldefine_α_181_1] # params_csv
                        mov              edx, 2                               # nparams
                        mov              ecx, 2                               # nformals
                        mov              r8d, 0                               # frame_bytes
                        lea              r9, [rip + LBL__TEST]                # fn
                        call             rt_define_site@PLT
.Lgcsite_main_119:      mov              r9,  qword ptr [rip + rtccb+48]
                        push             rax                                  # gc_poll bb_define.cpp:160
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_118:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_181_0]
                        lea              rsi, [rip + TEST_α]
                        call             bb_ab_seal_alpha@PLT
.Lgcsite_main_120:      mov              r9,  qword ptr [rip + rtccb+48]
                        .section         .data
                        .align           8
entry_cell$TEST:        .quad            LBL__TEST
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__TEST]
                        mov              rcx, qword ptr [rip + entry_cell$TEST@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n48_statement_end_α
n47_define_β:                                                                 jmp   n46_statement_begin_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_181_0: .quad .Ldefine_α_181_0_s; .popsection
.Ldefine_α_181_0_s:     .string          "TEST"
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_181_1: .quad .Ldefine_α_181_1_s; .popsection
.Ldefine_α_181_1_s:     .string          "I,J"
                                                                              jmp   .Ldefine_α_182_245
#-----------------------------------------------------------------------------------------------------------------------
TEST_α:                 sub              rsp, 80
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 11904]          # TEST
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 11912]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 11904], 0
                        mov              qword ptr [r9 + 11912], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_182_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 11920]          # I
                        mov              qword ptr [r9 + 11920], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 11928]
                        mov              qword ptr [r9 + 11928], rax
                        mov              qword ptr [rdi + 8], rsi
                        cmp              rdx, 1;                              jbe   .Ldefine_α_182_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 11936]          # J
                        mov              qword ptr [r9 + 11936], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 11944]
                        mov              qword ptr [r9 + 11944], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_182_12
.Ldefine_α_182_10:      mov              rax, qword ptr [r9 + 11920]          # I
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 11920], 0
                        mov              qword ptr [r9 + 11928], 0
.Ldefine_α_182_11:      mov              rax, qword ptr [r9 + 11936]          # J
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 11936], 0
                        mov              qword ptr [r9 + 11944], 0
.Ldefine_α_182_12:      push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_182_231
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_182_232: .quad .Ldefine_α_182_232_s; .popsection
.Ldefine_α_182_232_s:   .string          "TEST"
.Ldefine_α_182_231:     lea              rcx, [rip + TEST_γ]
                        lea              rax, [rip + TEST_ω]
                        push             rax
                        push             rcx
                        mov              rax, qword ptr [rip + entry_cell$TEST@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
TEST_γ:
.Lgcsite_main_121:      mov              rdi, qword ptr [r9 + 11904]          # TEST
                        mov              rsi, qword ptr [r9 + 11912]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rdx
                        push             rax;                                 jmp   .Ldefine_α_182_236
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Ldefine_α_182_237: .quad .Ldefine_α_182_237_s; .popsection
.Ldefine_α_182_237_s:   .string          "TEST"
.Ldefine_α_182_236:     pop              rax
                        pop              rdx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 11904], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11912], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_182_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11920], rax          # I
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11928], rax
                        cmp              rdx, 1;                              jbe   .Ldefine_α_182_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11936], rax          # J
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11944], rax;         jmp   .Ldefine_α_182_82
.Ldefine_α_182_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 11920], rax          # I
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 11928], rax
.Ldefine_α_182_81:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 11936], rax          # J
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 11944], rax
.Ldefine_α_182_82:      push             rcx
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
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
TEST_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 11904], rax          # TEST
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11912], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_182_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11920], rax          # I
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11928], rax
                        cmp              rdx, 1;                              jbe   .Ldefine_α_182_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 11936], rax          # J
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 11944], rax;         jmp   .Ldefine_α_182_152
.Ldefine_α_182_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 11920], rax          # I
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 11928], rax
.Ldefine_α_182_151:     mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 11936], rax          # J
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 11944], rax
.Ldefine_α_182_152:     push             rcx
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
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_182_245:
                        .size            n47_define_bx, .-n47_define_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:                                                          jmp   n75_statement_begin_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_setexit_test_bx, @function
n49_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_185_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_185_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_185_61:
.Lsetexit_test_α_185_1:                                                       jmp   n75_statement_begin_α
                        .size            n49_setexit_test_bx, .-n49_setexit_test_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
.Lstatement_begin_α_186_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_186_stno
                        .long            7
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# TEST  OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
LBL__TEST:                                                                    jmp   n51_var_α
n50_statement_begin_β:                                                        jmp   n59_setexit_test_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # I
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_lit_string_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_binop_α
n52_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_189_0: .quad .Llit_string_α_189_0_s; .popsection
.Llit_string_α_189_0_s: .string          " -> "
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_binop_bx, @function
n53_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_124:      cmp              al, 255;                             jne   .Lbinop_vd_190_7
                        call             c_sno_concat_d@PLT
.Lgcsite_main_123:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_190_7:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_122:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_190_240
                        add              rsp, 16;                             jmp   n52_lit_string_β
.Lbinop_α_190_240:                                                            jmp   n54_var_α
n53_binop_β:            add              rsp, 16;                             jmp   n52_lit_string_β
                        .size            n53_binop_bx, .-n53_binop_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # I
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_call_α
n54_var_β:              add              rsp, 16;                             jmp   n53_binop_β
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig193z]
                        mov              rax, [rip + alpha_cellp$ROMAN]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig193z: .quad 1
                        .quad            .Lcall_α_193_2
                        .quad            .Lcall_α_193_2
                        .quad            16; .popsection
.Lcall_α_193_2:
.Lgcsite_main_126:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_193_29
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_193_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_193_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_125:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_193_23
.Lcall_α_193_24:
.Lcall_α_193_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_193_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_193_240
                        add              rsp, 16;                             jmp   n54_var_β
.Lcall_α_193_240:                                                             jmp   n56_binop_α
n55_call_β:             add              rsp, 16;                             jmp   n54_var_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_193_0: .quad .Lcall_β_193_0_s; .popsection
.Lcall_β_193_0_s:       .string          "ROMAN"
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_binop_bx, @function
n56_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + sno_concat_d@GOTPCREL]
.Lgcsite_main_129:      cmp              al, 255;                             jne   .Lbinop_vd_194_8
                        call             c_sno_concat_d@PLT
.Lgcsite_main_128:      mov              r9,  qword ptr [rip + rtccb+48]
.Lbinop_vd_194_8:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_127:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_194_240
                        add              rsp, 32;                             jmp   n54_var_β
.Lbinop_α_194_240:                                                            jmp   n57_assign_α
n56_binop_β:            add              rsp, 32;                             jmp   n54_var_β
                        .size            n56_binop_bx, .-n56_binop_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]             # val
                        mov              rsi, rax                             # val
                        mov              rdi, qword ptr [rip + .Lassign_α_195_0] # name
                        call             NV_SET_fn@PLT
.Lgcsite_main_131:      mov              r9,  qword ptr [rip + rtccb+48]
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
.Lgcsite_main_130:      mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   n58_statement_end_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lassign_α_195_0: .quad .Lassign_α_195_0_s; .popsection
.Lassign_α_195_0_s:     .string          "OUTPUT"
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    add              rsp, 96;                             jmp   n60_statement_begin_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_setexit_test_bx, @function
n59_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_198_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_198_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_198_61:
.Lsetexit_test_α_198_1:                                                       jmp   n60_statement_begin_α
                        .size            n59_setexit_test_bx, .-n59_setexit_test_bx
                        .type            n60_statement_begin_bx, @function
n60_statement_begin_bx:
.Lstatement_begin_α_199_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_199_stno
                        .long            8
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       EQ(I,J)  :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n60_statement_begin_α:                                                        jmp   n61_var_α
n60_statement_begin_β:                                                        jmp   n67_setexit_test_α
                        .size            n60_statement_begin_bx, .-n60_statement_begin_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # I
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_var_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # J
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_coerce_numeric_α
n62_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_coerce_numeric_bx, @function
n63_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_204_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_204_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_204_0
.Lcoerce_numeric_α_204_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_coerce_numeric_α
.Lcoerce_numeric_α_204_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_134:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_204_9
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_133:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_204_9:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_132:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_204_240
                        add              rsp, 16;                             jmp   n62_var_β
.Lcoerce_numeric_α_204_240:
                                                                              jmp   n64_coerce_numeric_α
n63_coerce_numeric_β:   add              rsp, 16;                             jmp   n62_var_β
                        .size            n63_coerce_numeric_bx, .-n63_coerce_numeric_bx
                        .type            n64_coerce_numeric_bx, @function
n64_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_206_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_206_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_206_0
.Lcoerce_numeric_α_206_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_cmp_test_α
.Lcoerce_numeric_α_206_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_137:      cmp              al, 255;                             jne   .Lcoerce_numeric_vd_206_10
                        call             c_rt_coerce_num2_d@PLT
.Lgcsite_main_136:      mov              r9,  qword ptr [rip + rtccb+48]
.Lcoerce_numeric_vd_206_10:
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_135:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_206_240
                        add              rsp, 16;                             jmp   n63_coerce_numeric_β
.Lcoerce_numeric_α_206_240:
                                                                              jmp   n65_cmp_test_α
n64_coerce_numeric_β:   add              rsp, 16;                             jmp   n63_coerce_numeric_β
                        .size            n64_coerce_numeric_bx, .-n64_coerce_numeric_bx
                        .type            n65_cmp_test_bx, @function
n65_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_208_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lcmp_test_α_208_239
                        add              rsp, 16;                             jmp   n64_coerce_numeric_β
.Lcmp_test_α_208_239:                                                         jmp   n66_statement_end_α
.Lcmp_test_α_208_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_138:      test             eax, eax;                            je    .Lcmp_test_α_208_240
                        add              rsp, 16;                             jmp   n64_coerce_numeric_β
.Lcmp_test_α_208_240:                                                         jmp   n66_statement_end_α
                        .size            n65_cmp_test_bx, .-n65_cmp_test_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    add              rsp, 80;                             jmp   RETURN
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_setexit_test_bx, @function
n67_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_211_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_211_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_211_61:
.Lsetexit_test_α_211_1:                                                       jmp   n68_statement_begin_α
                        .size            n67_setexit_test_bx, .-n67_setexit_test_bx
                        .type            n68_statement_begin_bx, @function
n68_statement_begin_bx:
.Lstatement_begin_α_212_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_212_stno
                        .long            9
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       I = I + 1  :(TEST)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n68_statement_begin_α:                                                        jmp   n69_var_α
n68_statement_begin_β:                                                        jmp   n74_setexit_test_α
                        .size            n68_statement_begin_bx, .-n68_statement_begin_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11920]          # I
                        mov              rdx, qword ptr [r9 + 11928]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_integer_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_215_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_binop_α
n70_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
.Llit_integer_α_215_0:  .quad            1
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_216_2
                        add              rax, 1;                              jo    .Lbinop_α_216_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_216_7
.Lbinop_α_216_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_216_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_216_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_216_4
.Lbinop_α_216_3:        movq             xmm0, rsi
.Lbinop_α_216_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_216_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_216_7:                                                              jmp   n72_assign_α
.Lbinop_α_216_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             c_rt_add_sno@PLT
.Lgcsite_main_140:      mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_216_240
                        add              rsp, 16;                             jmp   n70_lit_integer_β
.Lbinop_α_216_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:246
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_139:      mov              r9,  qword ptr [rip + rtccb+48]
1:                                                                            jmp   n72_assign_α
n71_binop_β:            add              rsp, 16;                             jmp   n70_lit_integer_β
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_assign_bx, @function
n72_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # I
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n73_statement_end_α
                        .size            n72_assign_bx, .-n72_assign_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    add              rsp, 48;                             jmp   LBL__TEST
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_setexit_test_bx, @function
n74_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_220_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_220_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_220_61:
.Lsetexit_test_α_220_1:                                                       jmp   LBL__TEST
                        .size            n74_setexit_test_bx, .-n74_setexit_test_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
.Lstatement_begin_α_221_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_221_stno
                        .long            10
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# TEST_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n75_statement_begin_α:                                                        jmp   n76_statement_end_α
n75_statement_begin_β:                                                        jmp   n77_setexit_test_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_statement_end_bx, @function
n76_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:                                                          jmp   n78_statement_begin_α
                        .size            n76_statement_end_bx, .-n76_statement_end_bx
                        .type            n77_setexit_test_bx, @function
n77_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_225_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_225_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_225_61:
.Lsetexit_test_α_225_1:                                                       jmp   n78_statement_begin_α
                        .size            n77_setexit_test_bx, .-n77_setexit_test_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
.Lstatement_begin_α_226_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_226_stno
                        .long            11
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n78_statement_begin_α:                                                        jmp   n79_lit_integer_α
n78_statement_begin_β:                                                        jmp   n83_setexit_test_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_228_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_lit_integer_α
.Llit_integer_α_228_0:  .quad            1
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_call_α
n80_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Llit_integer_α_229_0:  .quad            100
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_call_bx, @function
n81_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig231z]
                        mov              rax, [rip + alpha_cellp$TEST]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig231z: .quad 2
                        .quad            .Lcall_α_231_2
                        .quad            .Lcall_α_231_2
                        .quad            32
                        .quad            16; .popsection
.Lcall_α_231_2:
.Lgcsite_main_142:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_231_29
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_231_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_231_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_141:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_231_23
.Lcall_α_231_24:
.Lcall_α_231_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_231_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_231_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lcall_α_231_240:                                                             jmp   n82_statement_end_α
n81_call_β:             add              rsp, 16;                             jmp   n80_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_231_0: .quad .Lcall_β_231_0_s; .popsection
.Lcall_β_231_0_s:       .string          "TEST"
                        .size            n81_call_bx, .-n81_call_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    add              rsp, 48;                             jmp   n84_statement_begin_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_setexit_test_bx, @function
n83_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_234_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_234_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_234_61:
.Lsetexit_test_α_234_1:                                                       jmp   n84_statement_begin_α
                        .size            n83_setexit_test_bx, .-n83_setexit_test_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
.Lstatement_begin_α_235_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_235_stno
                        .long            12
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n84_statement_begin_α:                                                        jmp   n85_lit_integer_α
n84_statement_begin_β:                                                        jmp   n89_setexit_test_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_237_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_lit_integer_α
.Llit_integer_α_237_0:  .quad            149
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_call_α
n86_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_β
.Llit_integer_α_238_0:  .quad            151
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_call_bx, @function
n87_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig240z]
                        mov              rax, [rip + alpha_cellp$TEST]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig240z: .quad 2
                        .quad            .Lcall_α_240_2
                        .quad            .Lcall_α_240_2
                        .quad            32
                        .quad            16; .popsection
.Lcall_α_240_2:
.Lgcsite_main_144:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_240_29
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_240_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_240_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_143:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_240_23
.Lcall_α_240_24:
.Lcall_α_240_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_240_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_240_240
                        add              rsp, 16;                             jmp   n86_lit_integer_β
.Lcall_α_240_240:                                                             jmp   n88_statement_end_α
n87_call_β:             add              rsp, 16;                             jmp   n86_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_240_0: .quad .Lcall_β_240_0_s; .popsection
.Lcall_β_240_0_s:       .string          "TEST"
                        .size            n87_call_bx, .-n87_call_bx
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
                        test             rax, rax;                            jz    .Lsetexit_test_α_243_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_243_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_243_61:
.Lsetexit_test_α_243_1:                                                       jmp   n90_statement_begin_α
                        .size            n89_setexit_test_bx, .-n89_setexit_test_bx
                        .type            n90_statement_begin_bx, @function
n90_statement_begin_bx:
.Lstatement_begin_α_244_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_244_stno
                        .long            13
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n90_statement_begin_α:                                                        jmp   n91_lit_integer_α
n90_statement_begin_β:                                                        jmp   n95_setexit_test_α
                        .size            n90_statement_begin_bx, .-n90_statement_begin_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_lit_integer_α
.Llit_integer_α_246_0:  .quad            480
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_247_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_call_α
n92_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n90_statement_begin_β
.Llit_integer_α_247_0:  .quad            520
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_call_bx, @function
n93_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig249z]
                        mov              rax, [rip + alpha_cellp$TEST]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig249z: .quad 2
                        .quad            .Lcall_α_249_2
                        .quad            .Lcall_α_249_2
                        .quad            32
                        .quad            16; .popsection
.Lcall_α_249_2:
.Lgcsite_main_146:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_249_29
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_249_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_249_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_145:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_249_23
.Lcall_α_249_24:
.Lcall_α_249_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_249_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_249_240
                        add              rsp, 16;                             jmp   n92_lit_integer_β
.Lcall_α_249_240:                                                             jmp   n94_statement_end_α
n93_call_β:             add              rsp, 16;                             jmp   n92_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_249_0: .quad .Lcall_β_249_0_s; .popsection
.Lcall_β_249_0_s:       .string          "TEST"
                        .size            n93_call_bx, .-n93_call_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    add              rsp, 48;                             jmp   n96_statement_begin_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_setexit_test_bx, @function
n95_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_252_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_252_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_252_61:
.Lsetexit_test_α_252_1:                                                       jmp   n96_statement_begin_α
                        .size            n95_setexit_test_bx, .-n95_setexit_test_bx
                        .type            n96_statement_begin_bx, @function
n96_statement_begin_bx:
.Lstatement_begin_α_253_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lstatement_begin_α_253_stno
                        .long            14
                        .long            14
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#       TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n96_statement_begin_α:                                                        jmp   n97_lit_integer_α
n96_statement_begin_β:                                                        jmp   n101_setexit_test_α
                        .size            n96_statement_begin_bx, .-n96_statement_begin_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_lit_integer_α
.Llit_integer_α_255_0:  .quad            1900
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_call_α
n98_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n96_statement_begin_β
.Llit_integer_α_256_0:  .quad            2100
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_call_bx, @function
n99_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig258z]
                        mov              rax, [rip + alpha_cellp$TEST]
                        mov              rax, [rax];                          jmp   rax
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_α_sig258z: .quad 2
                        .quad            .Lcall_α_258_2
                        .quad            .Lcall_α_258_2
                        .quad            32
                        .quad            16; .popsection
.Lcall_α_258_2:
.Lgcsite_main_148:      mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed): the fix-up is emitted here, rt_nret_fix_tiny is gone from the graph
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_258_29
                        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              jne   .Lcall_α_258_24
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
                        cmp              eax, 40;                             jne   .Lcall_α_258_23
                        mov              rdi, rax                             # d
                        mov              rsi, rdx                             # d
                        call             rt_deref@PLT
.Lgcsite_main_147:      mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8];            jmp   .Lcall_α_258_23
.Lcall_α_258_24:
.Lcall_α_258_23:        mov              rcx, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              dword ptr [rcx + 0], 0
.Lcall_α_258_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_258_240
                        add              rsp, 16;                             jmp   n98_lit_integer_β
.Lcall_α_258_240:                                                             jmp   n100_statement_end_α
n99_call_β:             add              rsp, 16;                             jmp   n98_lit_integer_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_β_258_0: .quad .Lcall_β_258_0_s; .popsection
.Lcall_β_258_0_s:       .string          "TEST"
                        .size            n99_call_bx, .-n99_call_bx
                        .type            n100_statement_end_bx, @function
n100_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   add              rsp, 48;                             jmp   main_γ
                        .size            n100_statement_end_bx, .-n100_statement_end_bx
                        .type            n101_setexit_test_bx, @function
n101_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_261_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_261_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_261_61:
.Lsetexit_test_α_261_1:                                                       jmp   main_γ
                        .size            n101_setexit_test_bx, .-n101_setexit_test_bx
                        .type            n102_goto_bx, @function
n102_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_goto_α:                                                                  jmp   LBL__ROMAN
n102_goto_β:                                                                  jmp   main_ω
                        .size            n102_goto_bx, .-n102_goto_bx
                        .type            n103_goto_bx, @function
n103_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_goto_α:                                                                  jmp   n43_statement_begin_α
n103_goto_β:                                                                  jmp   main_ω
                        .size            n103_goto_bx, .-n103_goto_bx
                        .type            n104_goto_bx, @function
n104_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_goto_α:                                                                  jmp   LBL__TEST
n104_goto_β:                                                                  jmp   main_ω
                        .size            n104_goto_bx, .-n104_goto_bx
                        .type            n105_goto_bx, @function
n105_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_goto_α:                                                                  jmp   n75_statement_begin_α
n105_goto_β:                                                                  jmp   main_ω
                        .size            n105_goto_bx, .-n105_goto_bx
                        .type            n106_define_bx, @function
n106_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
.Lgcsite_main_149:      pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n106_define_bx, .-n106_define_bx
                        .type            n107_define_bx, @function
n107_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              edi, 2
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
.Lgcsite_main_150:      add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n107_define_bx, .-n107_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_153:      push             rax                                  # gc_poll bb_glue_flat.cpp:51
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_152:      mov              r9,  qword ptr [rip + rtccb+48]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_151:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_154:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            5567624072538
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1280
                        .quad            15
                        .quad            52776558133248
                        .quad            8800387989552
                        .quad            17600775979064
                        .quad            61576946122824
                        .quad            87960930222208
                        .quad            8804682957008
                        .quad            8800387989720
                        .quad            35184372089056
                        .quad            8800387989760
                        .quad            17600775979272
                        .quad            79169132167448
                        .quad            35184372089184
                        .quad            8804682957184
                        .quad            8800387989896
                        .quad            967570232443280
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_0:       .quad            155
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgccode_main_0
                        .quad            .Lgcsite_main_0
                        .quad            68719476737
                        .quad            .Lgcsite_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_2
                        .quad            137438953473
                        .quad            .Lgcsite_main_3
                        .quad            274877906945
                        .quad            .Lgcsite_main_5
                        .quad            1
                        .quad            .Lgcsite_main_4
                        .quad            1
                        .quad            .Lgcsite_main_6
                        .quad            1
                        .quad            .Lgcsite_main_7
                        .quad            22518273015218182
                        .quad            .Lgcsite_main_12
                        .quad            68719476740
                        .quad            .Lgcsite_main_11
                        .quad            68719870209
                        .quad            .Lgcsite_main_10
                        .quad            68719870209
                        .quad            .Lgcsite_main_9
                        .quad            68719870209
                        .quad            .Lgcsite_main_8
                        .quad            68719870209
                        .quad            .Lgcsite_main_44
                        .quad            68719870209
                        .quad            .Lgcsite_main_43
                        .quad            68719870209
                        .quad            .Lgcsite_main_42
                        .quad            68719870210
                        .quad            .Lgcsite_main_41
                        .quad            68719870210
                        .quad            .Lgcsite_main_40
                        .quad            68719870210
                        .quad            .Lgcsite_main_39
                        .quad            68719870210
                        .quad            .Lgcsite_main_38
                        .quad            68719870210
                        .quad            .Lgcsite_main_37
                        .quad            68719870210
                        .quad            .Lgcsite_main_36
                        .quad            68719870209
                        .quad            .Lgcsite_main_35
                        .quad            68719870209
                        .quad            .Lgcsite_main_34
                        .quad            68719870209
                        .quad            .Lgcsite_main_33
                        .quad            68719870209
                        .quad            .Lgcsite_main_32
                        .quad            68719870209
                        .quad            .Lgcsite_main_31
                        .quad            68719870209
                        .quad            .Lgcsite_main_30
                        .quad            68719870210
                        .quad            .Lgcsite_main_29
                        .quad            68719870210
                        .quad            .Lgcsite_main_28
                        .quad            68719870210
                        .quad            .Lgcsite_main_27
                        .quad            68719870210
                        .quad            .Lgcsite_main_26
                        .quad            68719870210
                        .quad            .Lgcsite_main_25
                        .quad            68719870210
                        .quad            .Lgcsite_main_24
                        .quad            68719870209
                        .quad            .Lgcsite_main_23
                        .quad            68719870209
                        .quad            .Lgcsite_main_22
                        .quad            68719870209
                        .quad            .Lgcsite_main_21
                        .quad            68719870209
                        .quad            .Lgcsite_main_20
                        .quad            68719870209
                        .quad            .Lgcsite_main_19
                        .quad            68719870209
                        .quad            .Lgcsite_main_18
                        .quad            68719870209
                        .quad            .Lgcsite_main_17
                        .quad            68719870209
                        .quad            .Lgcsite_main_16
                        .quad            68719870209
                        .quad            .Lgcsite_main_15
                        .quad            68719870209
                        .quad            .Lgcsite_main_14
                        .quad            68719870209
                        .quad            .Lgcsite_main_13
                        .quad            137438953477
                        .quad            .Lgcsite_main_47
                        .quad            137438953473
                        .quad            .Lgcsite_main_46
                        .quad            137438953473
                        .quad            .Lgcsite_main_45
                        .quad            68719476737
                        .quad            .Lgcsite_main_48
                        .quad            412316860417
                        .quad            .Lgcsite_main_49
                        .quad            549755813889
                        .quad            .Lgcsite_main_54
                        .quad            274877906948
                        .quad            .Lgcsite_main_53
                        .quad            274878300417
                        .quad            .Lgcsite_main_52
                        .quad            274878300417
                        .quad            .Lgcsite_main_51
                        .quad            274878300417
                        .quad            .Lgcsite_main_50
                        .quad            274878300417
                        .quad            .Lgcsite_main_77
                        .quad            274878300417
                        .quad            .Lgcsite_main_76
                        .quad            274878300417
                        .quad            .Lgcsite_main_75
                        .quad            274878300418
                        .quad            .Lgcsite_main_74
                        .quad            274878300418
                        .quad            .Lgcsite_main_73
                        .quad            274878300417
                        .quad            .Lgcsite_main_72
                        .quad            274878300417
                        .quad            .Lgcsite_main_71
                        .quad            274878300417
                        .quad            .Lgcsite_main_70
                        .quad            274878300418
                        .quad            .Lgcsite_main_69
                        .quad            274878300418
                        .quad            .Lgcsite_main_68
                        .quad            274878300418
                        .quad            .Lgcsite_main_67
                        .quad            274878300418
                        .quad            .Lgcsite_main_66
                        .quad            274878300418
                        .quad            .Lgcsite_main_65
                        .quad            274878300418
                        .quad            .Lgcsite_main_64
                        .quad            274878300417
                        .quad            .Lgcsite_main_63
                        .quad            274878300417
                        .quad            .Lgcsite_main_62
                        .quad            274878300417
                        .quad            .Lgcsite_main_61
                        .quad            274878300417
                        .quad            .Lgcsite_main_60
                        .quad            274878300418
                        .quad            .Lgcsite_main_59
                        .quad            274878300417
                        .quad            .Lgcsite_main_58
                        .quad            274878300417
                        .quad            .Lgcsite_main_57
                        .quad            274878300417
                        .quad            .Lgcsite_main_56
                        .quad            274878300417
                        .quad            .Lgcsite_main_55
                        .quad            274878300417
                        .quad            .Lgcsite_main_109
                        .quad            274878300417
                        .quad            .Lgcsite_main_108
                        .quad            274878300417
                        .quad            .Lgcsite_main_107
                        .quad            274878300418
                        .quad            .Lgcsite_main_106
                        .quad            274878300418
                        .quad            .Lgcsite_main_105
                        .quad            274878300418
                        .quad            .Lgcsite_main_104
                        .quad            274878300418
                        .quad            .Lgcsite_main_103
                        .quad            274878300418
                        .quad            .Lgcsite_main_102
                        .quad            274878300418
                        .quad            .Lgcsite_main_101
                        .quad            274878300417
                        .quad            .Lgcsite_main_100
                        .quad            274878300417
                        .quad            .Lgcsite_main_99
                        .quad            274878300417
                        .quad            .Lgcsite_main_98
                        .quad            274878300417
                        .quad            .Lgcsite_main_97
                        .quad            274878300417
                        .quad            .Lgcsite_main_96
                        .quad            274878300417
                        .quad            .Lgcsite_main_95
                        .quad            274878300418
                        .quad            .Lgcsite_main_94
                        .quad            274878300418
                        .quad            .Lgcsite_main_93
                        .quad            274878300418
                        .quad            .Lgcsite_main_92
                        .quad            274878300418
                        .quad            .Lgcsite_main_91
                        .quad            274878300418
                        .quad            .Lgcsite_main_90
                        .quad            274878300418
                        .quad            .Lgcsite_main_89
                        .quad            274878300417
                        .quad            .Lgcsite_main_88
                        .quad            274878300417
                        .quad            .Lgcsite_main_87
                        .quad            274878300417
                        .quad            .Lgcsite_main_86
                        .quad            274878300417
                        .quad            .Lgcsite_main_85
                        .quad            274878300417
                        .quad            .Lgcsite_main_84
                        .quad            274878300417
                        .quad            .Lgcsite_main_83
                        .quad            274878300417
                        .quad            .Lgcsite_main_82
                        .quad            274878300417
                        .quad            .Lgcsite_main_81
                        .quad            274878300417
                        .quad            .Lgcsite_main_80
                        .quad            274878300417
                        .quad            .Lgcsite_main_79
                        .quad            274878300417
                        .quad            .Lgcsite_main_78
                        .quad            412316860421
                        .quad            .Lgcsite_main_111
                        .quad            137438953474
                        .quad            .Lgcsite_main_110
                        .quad            137438953473
                        .quad            .Lgcsite_main_113
                        .quad            549755813889
                        .quad            .Lgcsite_main_112
                        .quad            549755813889
                        .quad            .Lgcsite_main_114
                        .quad            687194767361
                        .quad            .Lgcsite_main_117
                        .quad            481036337153
                        .quad            .Lgcsite_main_116
                        .quad            481036337153
                        .quad            .Lgcsite_main_115
                        .quad            481036337153
                        .quad            .Lgcsite_main_119
                        .quad            1
                        .quad            .Lgcsite_main_118
                        .quad            1
                        .quad            .Lgcsite_main_120
                        .quad            1
                        .quad            .Lgcsite_main_121
                        .quad            22518204295741446
                        .quad            .Lgcsite_main_124
                        .quad            206158430209
                        .quad            .Lgcsite_main_123
                        .quad            206158430209
                        .quad            .Lgcsite_main_122
                        .quad            206158430209
                        .quad            .Lgcsite_main_126
                        .quad            343597383682
                        .quad            .Lgcsite_main_125
                        .quad            343597383681
                        .quad            .Lgcsite_main_129
                        .quad            412316860417
                        .quad            .Lgcsite_main_128
                        .quad            412316860417
                        .quad            .Lgcsite_main_127
                        .quad            412316860417
                        .quad            .Lgcsite_main_131
                        .quad            412316860417
                        .quad            .Lgcsite_main_130
                        .quad            549755813889
                        .quad            .Lgcsite_main_134
                        .quad            206158430209
                        .quad            .Lgcsite_main_133
                        .quad            206158430209
                        .quad            .Lgcsite_main_132
                        .quad            206158430209
                        .quad            .Lgcsite_main_137
                        .quad            274877906945
                        .quad            .Lgcsite_main_136
                        .quad            274877906945
                        .quad            .Lgcsite_main_135
                        .quad            274877906945
                        .quad            .Lgcsite_main_138
                        .quad            343597383681
                        .quad            .Lgcsite_main_140
                        .quad            206158430209
                        .quad            .Lgcsite_main_139
                        .quad            206158430209
                        .quad            .Lgcsite_main_142
                        .quad            206158430210
                        .quad            .Lgcsite_main_141
                        .quad            206158430209
                        .quad            .Lgcsite_main_144
                        .quad            206158430210
                        .quad            .Lgcsite_main_143
                        .quad            206158430209
                        .quad            .Lgcsite_main_146
                        .quad            206158430210
                        .quad            .Lgcsite_main_145
                        .quad            206158430209
                        .quad            .Lgcsite_main_148
                        .quad            206158430210
                        .quad            .Lgcsite_main_147
                        .quad            206158430209
                        .quad            .Lgcsite_main_149
                        .quad            1
                        .quad            .Lgcsite_main_150
                        .quad            1
                        .quad            .Lgcsite_main_153
                        .quad            18446744004990074881
                        .quad            .Lgcsite_main_152
                        .quad            18446744004990074881
                        .quad            .Lgcsite_main_151
                        .quad            18446744004990074881
                        .quad            .Lgcsite_main_154
                        .quad            18446744004990074881
                        .popsection
module_init:
                        sub              rsp, 8
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname0:       .string          "LBL__ROMAN"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__ROMAN
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1280
                        .long            16
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname1:       .string          "LBL__TEST"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__TEST
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1280
                        .long            16
                        .long            0
                        .long            0
                        .quad            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala2:               .string          "ROMAN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ROMAN_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + ROMAN_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "TEST"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            TEST_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + TEST_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
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
                        .section         .rodata
.S0:                    .string          "UNITS"
                        .text
                        .section         .data
                        .align           8
alpha_cellp$ROMAN:      .quad            alpha_cellp$ROMAN + 8
                        .quad            ROMAN_α
alpha_cellp$TEST:       .quad            alpha_cellp$TEST + 8
                        .quad            TEST_α
__alpha_cellp_tab:      .quad            .Lalphan0, alpha_cellp$ROMAN
                        .quad            .Lalphan1, alpha_cellp$TEST
                        .quad            0
                        .section         .rodata
.Lalphan0:              .string          "ROMAN"
.Lalphan1:              .string          "TEST"
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
