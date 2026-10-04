                        .intel_syntax    noprefix
                        .text
                        .file            1 "fib_recur.sno"
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
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 3
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
.Lgvan0:                .string          "FIB"
.Lgvan1:                .string          "N"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "FIB"
.Llbln1:                .string          "FIB_END"
.Llbln2:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 488], rax
                        mov              dword ptr [rsp + 480], 160
                        mov              dword ptr [rsp + 484], 496
                        mov              eax, 0
main_α_body:
                        .type            n0_call_bx, @function
n0_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              sub              rsp, 16
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
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_41_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_41_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_call_α
n0_call_β:              add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
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
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_42_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_α_42_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "fib_recur.sno"
                        .popsection
.Lstatement_begin_α_43_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_43_stno
                        .long            1
                        .long            3
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	DEFINE('FIB(N)')				:(FIB_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n2_statement_begin_α:                                                         jmp   n3_define_α
n2_statement_begin_β:                                                         jmp   n5_setexit_test_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_define_bx, @function
n3_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_define_α:            mov              rdi, qword ptr [rip + .Ldefine_α_46_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_46_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__FIB]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_define.cpp:155
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
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_46_0]
                        lea              rsi, [rip + FIB_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .data
                        .align           8
entry_cell$FIB:         .quad            LBL__FIB
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__FIB]
                        mov              rcx, qword ptr [rip + entry_cell$FIB@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n4_statement_end_α
n3_define_β:                                                                  jmp   n2_statement_begin_β
.Ldefine_α_46_0:        .quad            .Ldefine_α_46_0_s
.Ldefine_α_46_0_s:      .string          "FIB"
.Ldefine_α_46_1:        .quad            .Ldefine_α_46_1_s
.Ldefine_α_46_1_s:      .string          "N"
                                                                              jmp   .Ldefine_α_47_245
#-----------------------------------------------------------------------------------------------------------------------
FIB_α:                  sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [rip + rt_g_ret_by_name@GOTPCREL]
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # FIB
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_47_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_47_11
.Ldefine_α_47_10:       mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_47_11:       push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx;                                 jmp   .Ldefine_α_47_231
.Ldefine_α_47_232:      .quad            .Ldefine_α_47_232_s
.Ldefine_α_47_232_s:    .string          "FIB"
.Ldefine_α_47_231:      lea              rcx, [rip + FIB_γ]
                        lea              rax, [rip + FIB_ω]
                        push             rax
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rip + entry_cell$FIB@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
FIB_γ:                  mov              rdi, qword ptr [r9 + 0]              # FIB
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rdx
                        push             rax;                                 jmp   .Ldefine_α_47_236
.Ldefine_α_47_237:      .quad            .Ldefine_α_47_237_s
.Ldefine_α_47_237_s:    .string          "FIB"
.Ldefine_α_47_236:      pop              rax
                        pop              rdx
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_47_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_47_81
.Ldefine_α_47_80:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_47_81:       push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
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
FIB_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_47_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_47_151
.Ldefine_α_47_150:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_47_151:      push             rcx
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 0]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              qword ptr [rcx + 16], 0
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rcx + 8]
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
.Ldefine_α_47_245:
                        .size            n3_define_bx, .-n3_define_bx
                        .type            n4_statement_end_bx, @function
n4_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:                                                           jmp   n29_statement_begin_α
                        .size            n4_statement_end_bx, .-n4_statement_end_bx
                        .type            n5_setexit_test_bx, @function
n5_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_setexit_test_α:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_50_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_50_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_50_61:
.Lsetexit_test_α_50_1:                                                        jmp   n29_statement_begin_α
                        .size            n5_setexit_test_bx, .-n5_setexit_test_bx
                        .type            n6_statement_begin_bx, @function
n6_statement_begin_bx:
.Lstatement_begin_α_51_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_51_stno
                        .long            2
                        .long            4
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# FIB	FIB = LT(N, 2) N				:S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
LBL__FIB:                                                                     jmp   n7_var_α
n6_statement_begin_β:                                                         jmp   n15_setexit_test_α
                        .size            n6_statement_begin_bx, .-n6_statement_begin_bx
                        .type            n7_var_bx, @function
n7_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_lit_integer_α
                        .size            n7_var_bx, .-n7_var_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_54_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_coerce_numeric_α
n8_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n6_statement_begin_β
.Llit_integer_α_54_0:   .quad            2
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_coerce_numeric_bx, @function
n9_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_coerce_numeric_α:    sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_56_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_56_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_56_0
.Lcoerce_numeric_α_56_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_coerce_numeric_α
.Lcoerce_numeric_α_56_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_56_240
                        add              rsp, 16;                             jmp   n8_lit_integer_β
.Lcoerce_numeric_α_56_240:
                                                                              jmp   n10_coerce_numeric_α
n9_coerce_numeric_β:    add              rsp, 16;                             jmp   n8_lit_integer_β
                        .size            n9_coerce_numeric_bx, .-n9_coerce_numeric_bx
                        .type            n10_coerce_numeric_bx, @function
n10_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_58_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_58_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_58_0
.Lcoerce_numeric_α_58_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_cmp_test_α
.Lcoerce_numeric_α_58_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_58_240
                        add              rsp, 16;                             jmp   n9_coerce_numeric_β
.Lcoerce_numeric_α_58_240:
                                                                              jmp   n11_cmp_test_α
n10_coerce_numeric_β:   add              rsp, 16;                             jmp   n9_coerce_numeric_β
                        .size            n10_coerce_numeric_bx, .-n10_coerce_numeric_bx
                        .type            n11_cmp_test_bx, @function
n11_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_60_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_60_239
                        add              rsp, 16;                             jmp   n10_coerce_numeric_β
.Lcmp_test_α_60_239:                                                          jmp   n12_var_α
.Lcmp_test_α_60_0:      lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_60_240
                        add              rsp, 16;                             jmp   n10_coerce_numeric_β
.Lcmp_test_α_60_240:                                                          jmp   n12_var_α
n11_cmp_test_β:         add              rsp, 16;                             jmp   n10_coerce_numeric_β
                        .size            n11_cmp_test_bx, .-n11_cmp_test_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_assign_α
n12_var_β:              add              rsp, 16;                             jmp   n11_cmp_test_β
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              qword ptr [r9 + 8], rdx;             jmp   n14_statement_end_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    add              rsp, 96;                             jmp   RETURN
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_setexit_test_bx, @function
n15_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_65_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_65_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_65_61:
.Lsetexit_test_α_65_1:                                                        jmp   n16_statement_begin_α
                        .size            n15_setexit_test_bx, .-n15_setexit_test_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
.Lstatement_begin_α_66_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_66_stno
                        .long            3
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	FIB = FIB(N - 1) + FIB(N - 2)			:(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n16_statement_begin_α:                                                        jmp   n17_var_α
n16_statement_begin_β:                                                        jmp   n28_setexit_test_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n18_lit_integer_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_69_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_binop_α
n18_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Llit_integer_α_69_0:   .quad            1
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_70_2
                        sub              rax, 1;                              jo    .Lbinop_α_70_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_70_7
.Lbinop_α_70_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_70_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_70_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_70_4
.Lbinop_α_70_3:         movq             xmm0, rsi
.Lbinop_α_70_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_70_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_70_7:                                                               jmp   n20_call_α
.Lbinop_α_70_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_sub_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_70_240
                        add              rsp, 16;                             jmp   n18_lit_integer_β
.Lbinop_α_70_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n20_call_α
n19_binop_β:            add              rsp, 16;                             jmp   n18_lit_integer_β
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig72z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lcall_α_sig72z:        .quad            1
                        .quad            .Lcall_α_72_2
                        .quad            .Lcall_α_72_2
                        .quad            16
.Lcall_α_72_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_72_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_72_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_72_240
                        add              rsp, 16;                             jmp   n19_binop_β
.Lcall_α_72_240:                                                              jmp   n21_var_α
n20_call_β:                                                                   jmp   n19_binop_β
.Lcall_β_72_0:          .quad            .Lcall_β_72_0_s
.Lcall_β_72_0_s:        .string          "FIB"
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_bx, @function
n21_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n22_lit_integer_α
n21_var_β:              add              rsp, 32;                             jmp   n19_binop_β
                        .size            n21_var_bx, .-n21_var_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_74_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_binop_α
n22_lit_integer_β:      add              rsp, 16;                             jmp   n21_var_β
.Llit_integer_α_74_0:   .quad            2
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_binop_bx, @function
n23_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_75_2
                        sub              rax, 2;                              jo    .Lbinop_α_75_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_75_7
.Lbinop_α_75_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_75_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lbinop_α_75_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_75_4
.Lbinop_α_75_3:         movq             xmm0, rsi
.Lbinop_α_75_4:         cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_75_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_75_7:                                                               jmp   n24_call_α
.Lbinop_α_75_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_sub_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_75_240
                        add              rsp, 16;                             jmp   n22_lit_integer_β
.Lbinop_α_75_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n24_call_α
n23_binop_β:            add              rsp, 16;                             jmp   n22_lit_integer_β
                        .size            n23_binop_bx, .-n23_binop_bx
                        .type            n24_call_bx, @function
n24_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig77z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lcall_α_sig77z:        .quad            1
                        .quad            .Lcall_α_77_2
                        .quad            .Lcall_α_77_2
                        .quad            16
.Lcall_α_77_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_77_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_77_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_77_240
                        add              rsp, 16;                             jmp   n23_binop_β
.Lcall_α_77_240:                                                              jmp   n25_binop_α
n24_call_β:                                                                   jmp   n23_binop_β
.Lcall_β_77_0:          .quad            .Lcall_β_77_0_s
.Lcall_β_77_0_s:        .string          "FIB"
                        .size            n24_call_bx, .-n24_call_bx
                        .type            n25_binop_bx, @function
n25_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # call
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_78_2
                        mov              rax, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_78_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_78_7
.Lbinop_α_78_2:         and              edx, 1;                              jz    .Lbinop_α_78_0
                        mov              rsi, qword ptr [rsp + 88]            # call
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_78_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_78_4
.Lbinop_α_78_3:         movq             xmm0, rsi
.Lbinop_α_78_4:         cmp              cl, 5;                               je    .Lbinop_α_78_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_78_6
.Lbinop_α_78_5:         movq             xmm1, rdi
.Lbinop_α_78_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_78_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_78_7:                                                               jmp   n26_assign_α
.Lbinop_α_78_0:         mov              rdi, qword ptr [rsp + 80]            # call
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_78_240
                        add              rsp, 32;                             jmp   n23_binop_β
.Lbinop_α_78_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n26_assign_α
n25_binop_β:            add              rsp, 32;                             jmp   n23_binop_β
                        .size            n25_binop_bx, .-n25_binop_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # FIB
                        mov              qword ptr [r9 + 8], rdx;             jmp   n27_statement_end_α
                        .size            n26_assign_bx, .-n26_assign_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    add              rsp, 144;                            jmp   RETURN
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_setexit_test_bx, @function
n28_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_82_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_82_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_82_61:
.Lsetexit_test_α_82_1:                                                        jmp   RETURN
                        .size            n28_setexit_test_bx, .-n28_setexit_test_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
.Lstatement_begin_α_83_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_83_stno
                        .long            4
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# FIB_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n29_statement_begin_α:                                                        jmp   n30_statement_end_α
n29_statement_begin_β:                                                        jmp   n31_setexit_test_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:                                                          jmp   n32_statement_begin_α
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_setexit_test_bx, @function
n31_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_87_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_87_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_87_61:
.Lsetexit_test_α_87_1:                                                        jmp   n32_statement_begin_α
                        .size            n31_setexit_test_bx, .-n31_setexit_test_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
.Lstatement_begin_α_88_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_88_stno
                        .long            5
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# 	OUTPUT = FIB(24)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n32_statement_begin_α:                                                        jmp   n33_lit_integer_α
n32_statement_begin_β:                                                        jmp   n37_setexit_test_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_90_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
.Llit_integer_α_90_0:   .quad            24
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig92z]
                        lea              rax, [rip + FIB_α];                  jmp   rax
.Lcall_α_sig92z:        .quad            1
                        .quad            .Lcall_α_92_2
                        .quad            .Lcall_α_92_2
                        .quad            16
.Lcall_α_92_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_92_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lcall_α_92_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_92_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n32_statement_begin_β
.Lcall_α_92_240:                                                              jmp   n35_assign_α
n34_call_β:                                                                   jmp   n32_statement_begin_β
.Lcall_β_92_0:          .quad            .Lcall_β_92_0_s
.Lcall_β_92_0_s:        .string          "FIB"
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_assign_bx, @function
n35_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_93_0]
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
1:                                                                            jmp   n36_statement_end_α
.Lassign_α_93_0:        .quad            .Lassign_α_93_0_s
.Lassign_α_93_0_s:      .string          "OUTPUT"
                        .size            n35_assign_bx, .-n35_assign_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    add              rsp, 32;                             jmp   main_γ
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_setexit_test_bx, @function
n37_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_96_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_96_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_96_61:
.Lsetexit_test_α_96_1:                                                        jmp   main_γ
                        .size            n37_setexit_test_bx, .-n37_setexit_test_bx
                        .type            n38_goto_bx, @function
n38_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_goto_α:                                                                   jmp   LBL__FIB
n38_goto_β:                                                                   jmp   main_ω
                        .size            n38_goto_bx, .-n38_goto_bx
                        .type            n39_goto_bx, @function
n39_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_goto_α:                                                                   jmp   n29_statement_begin_α
n39_goto_β:                                                                   jmp   main_ω
                        .size            n39_goto_bx, .-n39_goto_bx
                        .type            n40_define_bx, @function
n40_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n40_define_bx, .-n40_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:45
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
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            2131650235738
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            480
                        .quad            1
                        .quad            527765581332480
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__FIB"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__FIB
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            480
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "FIB"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            FIB_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + FIB_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
