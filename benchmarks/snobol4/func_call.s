                        .intel_syntax    noprefix
                        .text
                        .file            1 "func_call.sno"
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
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 4
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
.Lgvan0:                .string          "inc"
.Lgvan1:                .string          "n"
.Lgvan2:                .string          "count"
.Lgvan3:                .string          "i"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "inc"
.Llbln1:                .string          "inc_end"
.Llbln2:                .string          "loop"
.Llbln3:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 392], rax
                        mov              dword ptr [rsp + 384], 160
                        mov              dword ptr [rsp + 388], 400
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_45_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_45_240:        mov              qword ptr [rsp + 0], rax             # result
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
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_46_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_α_46_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
.Lstno1:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno1
                        .long            1
                        .long            0
                        .popsection
#=======================================================================================================================
#         DEFINE('inc(n)')                                :(inc_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n2_statement_begin_α:                                                         jmp   n3_define_α
n2_statement_begin_β:                                                         jmp   n11_statement_begin_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_define_bx, @function
n3_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_define_α:            mov              rdi, qword ptr [rip + .Ldefine_α_50_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_50_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__inc]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_define.cpp:157
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
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_50_0]
                        lea              rsi, [rip + inc_α]
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
entry_cell$inc:         .quad            LBL__inc
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__inc]
                        mov              rcx, qword ptr [rip + entry_cell$inc@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n4_statement_end_α
n3_define_β:                                                                  jmp   n2_statement_begin_β
.Ldefine_α_50_0:        .quad            .Ldefine_α_50_0_s
.Ldefine_α_50_0_s:      .string          "inc"
.Ldefine_α_50_1:        .quad            .Ldefine_α_50_1_s
.Ldefine_α_50_1_s:      .string          "n"
                                                                              jmp   .Ldefine_α_51_245
#-----------------------------------------------------------------------------------------------------------------------
inc_α:                  sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # inc
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_51_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # n
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_51_11
.Ldefine_α_51_10:       mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_51_11:       push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_51_231
.Ldefine_α_51_232:      .quad            .Ldefine_α_51_232_s
.Ldefine_α_51_232_s:    .string          "inc"
.Ldefine_α_51_231:      lea              rcx, [rip + inc_γ]
                        lea              rax, [rip + inc_ω]
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
                        mov              rax, qword ptr [rip + entry_cell$inc@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
inc_γ:                  mov              rdi, qword ptr [r9 + 0]              # inc
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_51_236
.Ldefine_α_51_237:      .quad            .Ldefine_α_51_237_s
.Ldefine_α_51_237_s:    .string          "inc"
.Ldefine_α_51_236:      pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_51_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_51_81
.Ldefine_α_51_80:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_51_81:       push             rcx
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
inc_ω:                  mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # inc
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_51_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_51_151
.Ldefine_α_51_150:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_51_151:      push             rcx
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
.Ldefine_α_51_245:
                        .size            n3_define_bx, .-n3_define_bx
                        .type            n4_statement_end_bx, @function
n4_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:                                                           jmp   n11_statement_begin_α
                        .size            n4_statement_end_bx, .-n4_statement_end_bx
                        .type            n5_statement_begin_bx, @function
n5_statement_begin_bx:
.Lstno2:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno2
                        .long            2
                        .long            0
                        .popsection
#=======================================================================================================================
# inc     inc = n + 1                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
LBL__inc:                                                                     jmp   n6_var_α
n5_statement_begin_β:                                                         jmp   RETURN
                        .size            n5_statement_begin_bx, .-n5_statement_begin_bx
                        .type            n6_var_bx, @function
n6_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # n
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n7_lit_integer_α
                        .size            n6_var_bx, .-n6_var_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_57_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_binop_α
n7_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Llit_integer_α_57_0:   .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_binop_bx, @function
n8_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_binop_α:             sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_58_2
                        add              rax, 1;                              jo    .Lbinop_α_58_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_58_7
.Lbinop_α_58_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_58_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_58_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_58_4
.Lbinop_α_58_3:         movq             xmm0, rsi
.Lbinop_α_58_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_58_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_58_7:                                                               jmp   n9_assign_α
.Lbinop_α_58_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_58_240
                        add              rsp, 16;                             jmp   n7_lit_integer_β
.Lbinop_α_58_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n9_assign_α
n8_binop_β:             add              rsp, 16;                             jmp   n7_lit_integer_β
                        .size            n8_binop_bx, .-n8_binop_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # inc
                        mov              qword ptr [r9 + 8], rdx;             jmp   n10_statement_end_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_statement_end_bx, @function
n10_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 48;                             jmp   RETURN
                        .size            n10_statement_end_bx, .-n10_statement_end_bx
                        .type            n11_statement_begin_bx, @function
n11_statement_begin_bx:
.Lstno3:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno3
                        .long            3
                        .long            0
                        .popsection
#=======================================================================================================================
# inc_end count = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n11_statement_begin_α:                                                        jmp   n12_lit_integer_α
n11_statement_begin_β:                                                        jmp   n15_statement_begin_α
                        .size            n11_statement_begin_bx, .-n11_statement_begin_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_64_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_assign_α
.Llit_integer_α_64_0:   .quad            0
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # count
                        mov              qword ptr [r9 + 40], rdx;            jmp   n14_statement_end_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    add              rsp, 16;                             jmp   n15_statement_begin_α
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_statement_begin_bx, @function
n15_statement_begin_bx:
.Lstno4:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno4
                        .long            4
                        .long            0
                        .popsection
#=======================================================================================================================
#         i = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n15_statement_begin_α:                                                        jmp   n16_lit_integer_α
n15_statement_begin_β:                                                        jmp   n19_statement_begin_α
                        .size            n15_statement_begin_bx, .-n15_statement_begin_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_70_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
.Llit_integer_α_70_0:   .quad            1
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_assign_bx, @function
n17_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # i
                        mov              qword ptr [r9 + 56], rdx;            jmp   n18_statement_end_α
                        .size            n17_assign_bx, .-n17_assign_bx
                        .type            n18_statement_end_bx, @function
n18_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    add              rsp, 16;                             jmp   n19_statement_begin_α
                        .size            n18_statement_end_bx, .-n18_statement_end_bx
                        .type            n19_statement_begin_bx, @function
n19_statement_begin_bx:
.Lstno5:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno5
                        .long            5
                        .long            0
                        .popsection
#=======================================================================================================================
# loop    count = inc(count)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n19_statement_begin_α:                                                        jmp   n20_var_α
n19_statement_begin_β:                                                        jmp   n24_statement_begin_α
                        .size            n19_statement_begin_bx, .-n19_statement_begin_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # count
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_call_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             sub              rsp, 16
                        lea              rcx, [rip + .Lcall_α_sig78z]
                        lea              rax, [rip + inc_α];                  jmp   rax
.Lcall_α_sig78z:        .quad            1
                        .quad            .Lcall_α_78_2
                        .quad            .Lcall_α_78_2
                        .quad            16
.Lcall_α_78_2:          mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_78_29
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
.Lcall_α_78_29:         mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_78_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n19_statement_begin_β
.Lcall_α_78_240:                                                              jmp   n22_assign_α
n21_call_β:                                                                   jmp   n19_statement_begin_β
.Lcall_β_78_0:          .quad            .Lcall_β_78_0_s
.Lcall_β_78_0_s:        .string          "inc"
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # count
                        mov              qword ptr [r9 + 40], rdx;            jmp   n23_statement_end_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    add              rsp, 32;                             jmp   n24_statement_begin_α
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
.Lstno6:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno6
                        .long            6
                        .long            0
                        .popsection
#=======================================================================================================================
#         i = LT(i, 1000) i + 1                           :S(loop)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n24_statement_begin_α:                                                        jmp   n25_var_α
n24_statement_begin_β:                                                        jmp   n35_statement_begin_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_var_bx, @function
n25_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # i
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_lit_integer_α
                        .size            n25_var_bx, .-n25_var_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_85_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_coerce_numeric_α
n26_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
.Llit_integer_α_85_0:   .quad            1000
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_87_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_87_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_87_0
.Lcoerce_numeric_α_87_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_coerce_numeric_α
.Lcoerce_numeric_α_87_0:
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
1:                                                                            jmp   n28_coerce_numeric_α
n27_coerce_numeric_β:   add              rsp, 16;                             jmp   n26_lit_integer_β
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_coerce_numeric_bx, @function
n28_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_89_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_89_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_89_0
.Lcoerce_numeric_α_89_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_cmp_test_α
.Lcoerce_numeric_α_89_0:
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
1:                                                                            jmp   n29_cmp_test_α
n28_coerce_numeric_β:   add              rsp, 16;                             jmp   n27_coerce_numeric_β
                        .size            n28_coerce_numeric_bx, .-n28_coerce_numeric_bx
                        .type            n29_cmp_test_bx, @function
n29_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_91_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_91_239
                        add              rsp, 16;                             jmp   n28_coerce_numeric_β
.Lcmp_test_α_91_239:                                                          jmp   n30_var_α
.Lcmp_test_α_91_0:      lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_91_240
                        add              rsp, 16;                             jmp   n28_coerce_numeric_β
.Lcmp_test_α_91_240:                                                          jmp   n30_var_α
n29_cmp_test_β:         add              rsp, 16;                             jmp   n28_coerce_numeric_β
                        .size            n29_cmp_test_bx, .-n29_cmp_test_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # i
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_lit_integer_α
n30_var_β:              add              rsp, 16;                             jmp   n29_cmp_test_β
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_binop_α
n31_lit_integer_β:      add              rsp, 16;                             jmp   n30_var_β
.Llit_integer_α_93_0:   .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_binop_bx, @function
n32_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_94_2
                        add              rax, 1;                              jo    .Lbinop_α_94_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_94_7
.Lbinop_α_94_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_94_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_94_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_94_4
.Lbinop_α_94_3:         movq             xmm0, rsi
.Lbinop_α_94_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_94_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_94_7:                                                               jmp   n33_assign_α
.Lbinop_α_94_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_94_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lbinop_α_94_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n33_assign_α
n32_binop_β:            add              rsp, 16;                             jmp   n31_lit_integer_β
                        .size            n32_binop_bx, .-n32_binop_bx
                        .type            n33_assign_bx, @function
n33_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # i
                        mov              qword ptr [r9 + 56], rdx;            jmp   n34_statement_end_α
                        .size            n33_assign_bx, .-n33_assign_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 128;                            jmp   n19_statement_begin_α
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
.Lstno7:                .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstno7
                        .long            7
                        .long            0
                        .popsection
#=======================================================================================================================
#         OUTPUT = '1000 chained calls = ' count
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n35_statement_begin_α:                                                        jmp   n36_lit_string_α
n35_statement_begin_β:                                                        jmp   main_γ
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_lit_string_bx, @function
n36_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Llit_string_α_100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_var_α
.Llit_string_α_100_0:   .quad            .Llit_string_α_100_0_s
.Llit_string_α_100_0_s: .string          "1000 chained calls = "
                        .size            n36_lit_string_bx, .-n36_lit_string_bx
                        .type            n37_var_bx, @function
n37_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # count
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_binop_α
n37_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n35_statement_begin_β
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_binop_bx, @function
n38_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
1:                                                                            jmp   n39_assign_α
n38_binop_β:            add              rsp, 16;                             jmp   n37_var_β
                        .size            n38_binop_bx, .-n38_binop_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_103_0]
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
1:                                                                            jmp   n40_statement_end_α
.Lassign_α_103_0:       .quad            .Lassign_α_103_0_s
.Lassign_α_103_0_s:     .string          "OUTPUT"
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    add              rsp, 48;                             jmp   main_γ
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_goto_bx, @function
n41_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:                                                                   jmp   LBL__inc
n41_goto_β:                                                                   jmp   main_ω
                        .size            n41_goto_bx, .-n41_goto_bx
                        .type            n42_goto_bx, @function
n42_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:                                                                   jmp   n11_statement_begin_α
n42_goto_β:                                                                   jmp   main_ω
                        .size            n42_goto_bx, .-n42_goto_bx
                        .type            n43_goto_bx, @function
n43_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_goto_α:                                                                   jmp   n19_statement_begin_α
n43_goto_β:                                                                   jmp   main_ω
                        .size            n43_goto_bx, .-n43_goto_bx
                        .type            n44_define_bx, @function
n44_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n44_define_bx, .-n44_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:48
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
                        .quad            1719333375322
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            384
                        .quad            1
                        .quad            422212465065984
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__inc"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__inc
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            384
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "inc"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            inc_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + inc_α@GOTPCREL]
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
