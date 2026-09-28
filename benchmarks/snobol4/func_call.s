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
                        mov              qword ptr [rsp + 504], rax
                        mov              dword ptr [rsp + 496], 160
                        mov              dword ptr [rsp + 500], 512
                        mov              eax, 0
main_α_body:
                        .type            n0_call_bx, @function
n0_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              sub              rsp, 16
                        mov              r11, 1
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
1:                      cmp              al, 104;                             jne   .Lcall_α_56_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_56_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_call_α
n0_call_β:              mov              r11, 1
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
                        mov              r11, 2
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
1:                      cmp              al, 104;                             jne   .Lcall_α_57_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_lit_integer_α
.Lcall_α_57_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_lit_integer_α
n1_call_β:              mov              r11, 2
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_lit_integer_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('inc(n)')                                :(inc_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n2_lit_integer_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_58_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_integer_α
.Llit_integer_α_58_0:   .quad            18446744073709551615
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_59_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_lit_string_α
.Llit_integer_α_59_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_60_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_call_α
.Llit_string_α_60_0:    .quad            .Llit_string_α_60_0_s
.Llit_string_α_60_0_s:  .string          "func_call.sno"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              sub              rsp, 16
                        mov              r11, 6
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
.Lcall_α_rkfnzd62:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd62]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_61_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n6_stmt_mark_α
.Lcall_α_61_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
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
1:                                                                            jmp   n6_stmt_mark_α
n5_call_β:              mov              r11, 6
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n6_stmt_mark_α
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_stmt_mark_bx, @function
n6_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_stmt_mark_α:         mov              r11, 7
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n7_statement_begin_α
                        .size            n6_stmt_mark_bx, .-n6_stmt_mark_bx
                        .type            n7_statement_begin_bx, @function
n7_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:   mov              r11, 8;                              jmp   n8_define_α
n7_statement_begin_β:   mov              r11, 8;                              jmp   n10_stmt_mark_α
                        .size            n7_statement_begin_bx, .-n7_statement_begin_bx
                        .type            n8_define_bx, @function
n8_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_define_α:            mov              r11, 9
                        mov              rdi, qword ptr [rip + .Ldefine_α_68_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_68_1]
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
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_68_0]
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
                        mov              qword ptr [rcx + 0], rax;            jmp   n9_statement_end_α
n8_define_β:            mov              r11, 9;                              jmp   n7_statement_begin_β
.Ldefine_α_68_0:        .quad            .Ldefine_α_68_0_s
.Ldefine_α_68_0_s:      .string          "inc"
.Ldefine_α_68_1:        .quad            .Ldefine_α_68_1_s
.Ldefine_α_68_1_s:      .string          "n"
                                                                              jmp   .Ldefine_α_69_245
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_69_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # n
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_69_11
.Ldefine_α_69_10:       mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_69_11:       push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_69_231
.Ldefine_α_69_232:      .quad            .Ldefine_α_69_232_s
.Ldefine_α_69_232_s:    .string          "inc"
.Ldefine_α_69_231:      lea              rcx, [rip + inc_γ]
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
                        push             rdx;                                 jmp   .Ldefine_α_69_236
.Ldefine_α_69_237:      .quad            .Ldefine_α_69_237_s
.Ldefine_α_69_237_s:    .string          "inc"
.Ldefine_α_69_236:      pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_69_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_69_81
.Ldefine_α_69_80:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_69_81:       push             rcx
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
                        cmp              rdx, 0;                              jbe   .Ldefine_α_69_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_69_151
.Ldefine_α_69_150:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_69_151:      push             rcx
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
.Ldefine_α_69_245:
                        .size            n8_define_bx, .-n8_define_bx
                        .type            n9_statement_end_bx, @function
n9_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     mov              r11, 10;                             jmp   n10_stmt_mark_α
                        .size            n9_statement_end_bx, .-n9_statement_end_bx
                        .type            n10_stmt_mark_bx, @function
n10_stmt_mark_bx:
#=======================================================================================================================
# inc_end count = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n10_stmt_mark_α:        mov              r11, 11
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n17_statement_begin_α
                        .size            n10_stmt_mark_bx, .-n10_stmt_mark_bx
                        .type            n11_statement_begin_bx, @function
n11_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_begin_α:  mov              r11, 12;                             jmp   n12_var_α
n11_statement_begin_β:  mov              r11, 12;                             jmp   RETURN
                        .size            n11_statement_begin_bx, .-n11_statement_begin_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              sub              rsp, 16
                        mov              r11, 13
                        mov              rax, qword ptr [r9 + 16]             # n
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n13_lit_integer_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_77_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_binop_α
n13_lit_integer_β:      mov              r11, 14
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n11_statement_begin_β
.Llit_integer_α_77_0:   .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_binop_bx, @function
n14_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            sub              rsp, 16
                        mov              r11, 15
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_78_2
                        add              rax, 1;                              jo    .Lbinop_α_78_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_78_7
.Lbinop_α_78_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_78_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_78_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_78_4
.Lbinop_α_78_3:         movq             xmm0, rsi
.Lbinop_α_78_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_78_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_78_7:                                                               jmp   n15_assign_α
.Lbinop_α_78_0:         mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_78_240
                        add              rsp, 16;                             jmp   n13_lit_integer_β
.Lbinop_α_78_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
1:                                                                            jmp   n15_assign_α
n14_binop_β:            mov              r11, 15
                        add              rsp, 16;                             jmp   n13_lit_integer_β
                        .size            n14_binop_bx, .-n14_binop_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # inc
                        mov              qword ptr [r9 + 8], rdx;             jmp   n16_statement_end_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_statement_end_bx, @function
n16_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17
                        add              rsp, 48;                             jmp   RETURN
                        .size            n16_statement_end_bx, .-n16_statement_end_bx
                        .type            n17_statement_begin_bx, @function
n17_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18;                             jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n21_stmt_mark_α
                        .size            n17_statement_begin_bx, .-n17_statement_begin_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_84_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Llit_integer_α_84_0:   .quad            0
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # count
                        mov              qword ptr [r9 + 40], rdx;            jmp   n20_statement_end_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_statement_end_bx, @function
n20_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        add              rsp, 16;                             jmp   n21_stmt_mark_α
                        .size            n20_statement_end_bx, .-n20_statement_end_bx
                        .type            n21_stmt_mark_bx, @function
n21_stmt_mark_bx:
#=======================================================================================================================
#         i = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n21_stmt_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n22_statement_begin_α
                        .size            n21_stmt_mark_bx, .-n21_stmt_mark_bx
                        .type            n22_statement_begin_bx, @function
n22_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:  mov              r11, 23;                             jmp   n23_lit_integer_α
n22_statement_begin_β:  mov              r11, 23;                             jmp   n26_stmt_mark_α
                        .size            n22_statement_begin_bx, .-n22_statement_begin_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_assign_α
.Llit_integer_α_92_0:   .quad            1
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_assign_bx, @function
n24_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # i
                        mov              qword ptr [r9 + 56], rdx;            jmp   n25_statement_end_α
                        .size            n24_assign_bx, .-n24_assign_bx
                        .type            n25_statement_end_bx, @function
n25_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        add              rsp, 16;                             jmp   n26_stmt_mark_α
                        .size            n25_statement_end_bx, .-n25_statement_end_bx
                        .type            n26_stmt_mark_bx, @function
n26_stmt_mark_bx:
#=======================================================================================================================
# loop    count = inc(count)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n26_stmt_mark_α:        mov              r11, 27
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n27_statement_begin_α
                        .size            n26_stmt_mark_bx, .-n26_stmt_mark_bx
                        .type            n27_statement_begin_bx, @function
n27_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 28;                             jmp   n28_var_α
n27_statement_begin_β:  mov              r11, 28;                             jmp   n32_stmt_mark_α
                        .size            n27_statement_begin_bx, .-n27_statement_begin_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 32]             # count
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_call_α
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             sub              rsp, 16
                        mov              r11, 30
                        lea              rcx, [rip + .Lcall_α_sig102z]
                        lea              rax, [rip + inc_α];                  jmp   rax
.Lcall_α_sig102z:       .quad            1
                        .quad            .Lcall_α_102_2
                        .quad            .Lcall_α_102_2
                        .quad            16
.Lcall_α_102_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_102_29
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
.Lcall_α_102_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_102_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n27_statement_begin_β
.Lcall_α_102_240:                                                             jmp   n30_assign_α
n29_call_β:             mov              r11, 30;                             jmp   n27_statement_begin_β
.Lcall_β_102_0:         .quad            .Lcall_β_102_0_s
.Lcall_β_102_0_s:       .string          "inc"
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_assign_bx, @function
n30_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # count
                        mov              qword ptr [r9 + 40], rdx;            jmp   n31_statement_end_α
                        .size            n30_assign_bx, .-n30_assign_bx
                        .type            n31_statement_end_bx, @function
n31_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32
                        add              rsp, 32;                             jmp   n32_stmt_mark_α
                        .size            n31_statement_end_bx, .-n31_statement_end_bx
                        .type            n32_stmt_mark_bx, @function
n32_stmt_mark_bx:
#=======================================================================================================================
#         i = LT(i, 1000) i + 1                           :S(loop)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n32_stmt_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n33_statement_begin_α
                        .size            n32_stmt_mark_bx, .-n32_stmt_mark_bx
                        .type            n33_statement_begin_bx, @function
n33_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 34;                             jmp   n34_var_α
n33_statement_begin_β:  mov              r11, 34;                             jmp   n44_stmt_mark_α
                        .size            n33_statement_begin_bx, .-n33_statement_begin_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              sub              rsp, 16
                        mov              r11, 35
                        mov              rax, qword ptr [r9 + 48]             # i
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_lit_integer_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_111_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_coerce_numeric_α
n35_lit_integer_β:      mov              r11, 36
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Llit_integer_α_111_0:  .quad            1000
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_coerce_numeric_bx, @function
n36_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 37
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_113_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_113_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_113_0
.Lcoerce_numeric_α_113_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_coerce_numeric_α
.Lcoerce_numeric_α_113_0:
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
1:                                                                            jmp   n37_coerce_numeric_α
n36_coerce_numeric_β:   mov              r11, 37
                        add              rsp, 16;                             jmp   n35_lit_integer_β
                        .size            n36_coerce_numeric_bx, .-n36_coerce_numeric_bx
                        .type            n37_coerce_numeric_bx, @function
n37_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 38
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_115_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_115_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_115_0
.Lcoerce_numeric_α_115_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_cmp_test_α
.Lcoerce_numeric_α_115_0:
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
1:                                                                            jmp   n38_cmp_test_α
n37_coerce_numeric_β:   mov              r11, 38
                        add              rsp, 16;                             jmp   n36_coerce_numeric_β
                        .size            n37_coerce_numeric_bx, .-n37_coerce_numeric_bx
                        .type            n38_cmp_test_bx, @function
n38_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_cmp_test_α:         sub              rsp, 16
                        mov              r11, 39
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_117_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_117_239
                        add              rsp, 16;                             jmp   n37_coerce_numeric_β
.Lcmp_test_α_117_239:                                                         jmp   n39_var_α
.Lcmp_test_α_117_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_117_240
                        add              rsp, 16;                             jmp   n37_coerce_numeric_β
.Lcmp_test_α_117_240:                                                         jmp   n39_var_α
n38_cmp_test_β:         mov              r11, 39
                        add              rsp, 16;                             jmp   n37_coerce_numeric_β
                        .size            n38_cmp_test_bx, .-n38_cmp_test_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 48]             # i
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_lit_integer_α
n39_var_β:              mov              r11, 40
                        add              rsp, 16;                             jmp   n38_cmp_test_β
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_binop_α
n40_lit_integer_β:      mov              r11, 41
                        add              rsp, 16;                             jmp   n39_var_β
.Llit_integer_α_119_0:  .quad            1
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_binop_bx, @function
n41_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            sub              rsp, 16
                        mov              r11, 42
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_120_2
                        add              rax, 1;                              jo    .Lbinop_α_120_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_120_7
.Lbinop_α_120_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_120_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_120_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_120_4
.Lbinop_α_120_3:        movq             xmm0, rsi
.Lbinop_α_120_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_120_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_120_7:                                                              jmp   n42_assign_α
.Lbinop_α_120_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_120_240
                        add              rsp, 16;                             jmp   n40_lit_integer_β
.Lbinop_α_120_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
1:                                                                            jmp   n42_assign_α
n41_binop_β:            mov              r11, 42
                        add              rsp, 16;                             jmp   n40_lit_integer_β
                        .size            n41_binop_bx, .-n41_binop_bx
                        .type            n42_assign_bx, @function
n42_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 43
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # i
                        mov              qword ptr [r9 + 56], rdx;            jmp   n43_statement_end_α
                        .size            n42_assign_bx, .-n42_assign_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 44
                        add              rsp, 128;                            jmp   n26_stmt_mark_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_stmt_mark_bx, @function
n44_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = '1000 chained calls = ' count
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n44_stmt_mark_α:        mov              r11, 45
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n45_statement_begin_α
                        .size            n44_stmt_mark_bx, .-n44_stmt_mark_bx
                        .type            n45_statement_begin_bx, @function
n45_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 46;                             jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 46;                             jmp   main_γ
                        .size            n45_statement_begin_bx, .-n45_statement_begin_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 21
                        mov              rax, qword ptr [rip + .Llit_string_α_128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_var_α
.Llit_string_α_128_0:   .quad            .Llit_string_α_128_0_s
.Llit_string_α_128_0_s: .string          "1000 chained calls = "
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 32]             # count
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_binop_α
n47_var_β:              mov              r11, 48
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n45_statement_begin_β
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_binop_bx, @function
n48_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_binop_α:            sub              rsp, 16
                        mov              r11, 49
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
1:                                                                            jmp   n49_assign_α
n48_binop_β:            mov              r11, 49
                        add              rsp, 16;                             jmp   n47_var_β
                        .size            n48_binop_bx, .-n48_binop_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 50
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_131_0]
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
1:                                                                            jmp   n50_statement_end_α
.Lassign_α_131_0:       .quad            .Lassign_α_131_0_s
.Lassign_α_131_0_s:     .string          "OUTPUT"
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 51
                        add              rsp, 48;                             jmp   main_γ
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_goto_bx, @function
n51_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_goto_α:             mov              r11, 52;                             jmp   LBL__inc
n51_goto_β:             mov              r11, 52;                             jmp   main_ω
                        .size            n51_goto_bx, .-n51_goto_bx
                        .type            n52_stmt_mark_bx, @function
n52_stmt_mark_bx:
#=======================================================================================================================
# inc     inc = n + 1                                     :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
LBL__inc:               mov              r11, 53
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n11_statement_begin_α
                        .size            n52_stmt_mark_bx, .-n52_stmt_mark_bx
                        .type            n53_goto_bx, @function
n53_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_goto_α:             mov              r11, 54;                             jmp   n10_stmt_mark_α
n53_goto_β:             mov              r11, 54;                             jmp   main_ω
                        .size            n53_goto_bx, .-n53_goto_bx
                        .type            n54_goto_bx, @function
n54_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_goto_α:             mov              r11, 55;                             jmp   n26_stmt_mark_α
n54_goto_β:             mov              r11, 55;                             jmp   main_ω
                        .size            n54_goto_bx, .-n54_goto_bx
                        .type            n55_define_bx, @function
n55_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 56
                        mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n55_define_bx, .-n55_define_bx
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
                        .quad            2200369712474
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            496
                        .quad            1
                        .quad            545357767376896
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
                        .long            496
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
