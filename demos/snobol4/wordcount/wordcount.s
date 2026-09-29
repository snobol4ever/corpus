                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/wordcount/wordcount.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 120
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -112], rax
                        mov              dword ptr [rbp + -120], 160
                        mov              dword ptr [rbp + -116], 120
                        mov              eax, 0
                        lea              rdi, [rbp + -104]
                        xor              eax, eax
                        mov              ecx, 104
                        rep              stosb
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_var_bx, @function
n0_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:               sub              rsp, 16
                        mov              r11, 1
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lvar_α_6_1
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lvar_α_6_1
                        cmp              qword ptr [rdi + 40], 2;             jl    .Lvar_α_6_1
                        mov              rax, qword ptr [rsi + 16]
                        mov              rdx, qword ptr [rsi + 24];           jmp   .Lvar_α_6_2
.Lvar_α_6_1:            mov              rax, qword ptr [r9 + 96]             # PAT$0$V1
                        mov              rdx, qword ptr [r9 + 104]
.Lvar_α_6_2:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_coerce_string_α
                        .size            n0_var_bx, .-n0_var_bx
                        .type            n1_coerce_string_bx, @function
n1_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_coerce_string_α:     sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rax, qword ptr [rdi + 0]
                        cmp              al, 2;                               jne   .Lcoerce_string_α_8_21
                        mov              rdx, qword ptr [rdi + 8]
                        test             rdx, rdx;                            je    .Lcoerce_string_α_8_21
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            je    .Lcoerce_string_α_8_21
                        cmp              ecx, -1;                             je    .Lcoerce_string_α_8_21
                        mov              qword ptr [rsi + 0], rax
                        mov              qword ptr [rsi + 8], rdx;            jmp   .Lcoerce_string_α_8_22
.Lcoerce_string_α_8_21: mov              rdx, 12320956
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_coerce_string.cpp:41
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
1:
.Lcoerce_string_α_8_22:                                                       jmp   n2_var_α
                        .size            n1_coerce_string_bx, .-n1_coerce_string_bx
                        .type            n2_var_bx, @function
n2_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               sub              rsp, 16
                        mov              r11, 3
                        mov              rdi, qword ptr [rbp + -24]
                        test             rdi, rdi;                            je    .Lvar_α_9_1
                        mov              rsi, qword ptr [rdi + 32]
                        test             rsi, rsi;                            je    .Lvar_α_9_1
                        cmp              qword ptr [rdi + 40], 1;             jl    .Lvar_α_9_1
                        mov              rax, qword ptr [rsi + 0]
                        mov              rdx, qword ptr [rsi + 8];            jmp   .Lvar_α_9_2
.Lvar_α_9_1:            mov              rax, qword ptr [r9 + 80]             # PAT$0$V0
                        mov              rdx, qword ptr [r9 + 88]
.Lvar_α_9_2:            mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_coerce_string_α
                        .size            n2_var_bx, .-n2_var_bx
                        .type            n3_coerce_string_bx, @function
n3_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_string_α:     sub              rsp, 16
                        mov              r11, 4
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rax, qword ptr [rdi + 0]
                        cmp              al, 2;                               jne   .Lcoerce_string_α_11_21
                        mov              rdx, qword ptr [rdi + 8]
                        test             rdx, rdx;                            je    .Lcoerce_string_α_11_21
                        mov              ecx, dword ptr [rdi + 4]
                        test             ecx, ecx;                            je    .Lcoerce_string_α_11_21
                        cmp              ecx, -1;                             je    .Lcoerce_string_α_11_21
                        mov              qword ptr [rsi + 0], rax
                        mov              qword ptr [rsi + 8], rdx;            jmp   .Lcoerce_string_α_11_22
.Lcoerce_string_α_11_21:
                        mov              rdx, 4522053
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_coerce_string.cpp:41
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
1:
.Lcoerce_string_α_11_22:
                                                                              jmp   n4_match_break_α
                        .size            n3_coerce_string_bx, .-n3_coerce_string_bx
                        .type            n4_match_break_bx, @function
n4_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_break_α:       sub              rsp, 16
                        mov              r11, 5
                        mov              edi, r14d
                        mov              rsi, qword ptr [rsp + 24]            # coerce_string
                        mov              edx, dword ptr [rsp + 20]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sg_scan_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, r15d;                           jl    .Lmatch_break_α_13_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   PAT$0_ω
.Lmatch_break_α_13_240: mov              dword ptr [rbp + -64], r14d
                        mov              r14d, eax;                           jmp   n5_match_span_α
n4_match_break_β:       mov              r11, 5
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 64;                             jmp   PAT$0_ω
                        .size            n4_match_break_bx, .-n4_match_break_bx
                        .type            n5_match_span_bx, @function
n5_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_span_α:        sub              rsp, 16
                        mov              r11, 6
                        mov              dword ptr [rbp + -96], r14d
.Lmatch_span_α_15_0:    mov              eax, dword ptr [rbp + -96]
                        cmp              eax, r15d;                           jge   .Lmatch_span_α_15_1
                        movsxd           rcx, eax
                        movzx            edi, byte ptr [r13+rcx]
                        mov              rsi, qword ptr [rsp + 72]            # coerce_string
                        mov              edx, dword ptr [rsp + 68]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sg_member@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lmatch_span_α_15_1
                        mov              eax, dword ptr [rbp + -96]
                        add              eax, 1
                        mov              dword ptr [rbp + -96], eax;          jmp   .Lmatch_span_α_15_0
.Lmatch_span_α_15_1:    mov              eax, dword ptr [rbp + -96]
                        cmp              eax, r14d;                           jne   .Lmatch_span_α_15_240
                        add              rsp, 16;                             jmp   n4_match_break_β
.Lmatch_span_α_15_240:  mov              dword ptr [rbp + -96], r14d
                        mov              r14d, eax;                           jmp   PAT$0_γ
n5_match_span_β:        mov              r11, 6
                        mov              r14d, dword ptr [rbp + -96]
                        add              rsp, 16;                             jmp   n4_match_break_β
                        .size            n5_match_span_bx, .-n5_match_span_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n5_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              rcx, qword ptr [rbp + -16]
                        push             rbp
                        push             rcx
                        mov              rcx, qword ptr [rbp + -8]
                        push             rcx
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r12, qword ptr [rbp + -32]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_PAT$0:
                        .quad            516742532442
                        .quad            17179869208
                        .quad            .Lgcmap_PAT$0_s
                        .quad            120
                        .quad            14
                        .quad            8804682956696
                        .quad            17600775978912
                        .quad            8808977924016
                        .quad            8804682956728
                        .quad            17600775978944
                        .quad            8808977924048
                        .quad            8804682956760
                        .quad            8804682956768
                        .quad            8808977924072
                        .quad            8813272891376
                        .quad            8813272891384
                        .quad            8800387989504
                        .quad            8808977924104
                        .quad            8808977924112
.Lgcmap_PAT$0_s:        .string          "PAT$0"
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
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
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
.Lgvan0:                .string          "NUMERALS"
.Lgvan1:                .string          "WORD"
.Lgvan2:                .string          "WPAT"
.Lgvan3:                .string          "LINE"
.Lgvan4:                .string          "N"
.Lgvan5:                .string          "PAT$0$V0"
.Lgvan6:                .string          "PAT$0$V1"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "NEXTL"
.Llbln1:                .string          "NEXTW"
.Llbln2:                .string          "DONE"
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
                        mov              qword ptr [rsp + 664], rax
                        mov              dword ptr [rsp + 656], 160
                        mov              dword ptr [rsp + 660], 656
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n16_call_bx, @function
n16_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             sub              rsp, 16
                        mov              r11, 7
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
1:                      cmp              al, 104;                             jne   .Lcall_α_85_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n17_call_α
.Lcall_α_85_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n17_call_α
n16_call_β:             mov              r11, 7
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n17_call_α
                        .size            n16_call_bx, .-n16_call_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             sub              rsp, 16
                        mov              r11, 8
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
1:                      cmp              al, 104;                             jne   .Lcall_α_86_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_line_mark_α
.Lcall_α_86_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n18_line_mark_α
n17_call_β:             mov              r11, 8
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_line_mark_α
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#=======================================================================================================================
#       &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n18_line_mark_α:        sub              rsp, 16
                        mov              r11, 9
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_88_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n19_stmt_mark_α
.Lline_mark_α_88_0:     .quad            .Lline_mark_α_88_0_s
.Lline_mark_α_88_0_s:   .string          "snobol4/wordcount/wordcount.sno"
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_stmt_mark_bx, @function
n19_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_stmt_mark_α:        mov              r11, 10
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 16;                             jmp   n20_statement_begin_α
                        .size            n19_stmt_mark_bx, .-n19_stmt_mark_bx
                        .type            n20_statement_begin_bx, @function
n20_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 11;                             jmp   n21_lit_integer_α
n20_statement_begin_β:  mov              r11, 11;                             jmp   n24_stmt_mark_α
                        .size            n20_statement_begin_bx, .-n20_statement_begin_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_kw_assign_snobol4_α
.Llit_integer_α_93_0:   .quad            1
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_kw_assign_snobol4_bx, @function
n22_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 13
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_94_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_94_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n20_statement_begin_β
.Lkw_assign_snobol4_α_94_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_keyword_assign_snobol4.cpp:27
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
1:                                                                            jmp   n23_statement_end_α
.Lkw_assign_snobol4_α_94_0:
                        .quad            1
                        .size            n22_kw_assign_snobol4_bx, .-n22_kw_assign_snobol4_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 14
                        add              rsp, 32;                             jmp   n24_stmt_mark_α
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_stmt_mark_bx, @function
n24_stmt_mark_bx:
#=======================================================================================================================
#       NUMERALS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n24_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n25_statement_begin_α
                        .size            n24_stmt_mark_bx, .-n24_stmt_mark_bx
                        .type            n25_statement_begin_bx, @function
n25_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 16;                             jmp   n26_lit_string_α
n25_statement_begin_β:  mov              r11, 16;                             jmp   n29_stmt_mark_α
                        .size            n25_statement_begin_bx, .-n25_statement_begin_bx
                        .type            n26_lit_string_bx, @function
n26_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Llit_string_α_101_0:   .quad            .Llit_string_α_101_0_s
.Llit_string_α_101_0_s: .string          "0123456789"
                        .size            n26_lit_string_bx, .-n26_lit_string_bx
                        .type            n27_assign_bx, @function
n27_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # NUMERALS
                        mov              qword ptr [r9 + 8], rdx;             jmp   n28_statement_end_α
                        .size            n27_assign_bx, .-n27_assign_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 19
                        add              rsp, 16;                             jmp   n29_stmt_mark_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_stmt_mark_bx, @function
n29_stmt_mark_bx:
#=======================================================================================================================
#       WORD = "'-" NUMERALS &UCASE &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n29_stmt_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n30_statement_begin_α
                        .size            n29_stmt_mark_bx, .-n29_stmt_mark_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 21;                             jmp   n31_lit_string_α
n30_statement_begin_β:  mov              r11, 21;                             jmp   n40_stmt_mark_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_lit_string_bx, @function
n31_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       sub              rsp, 16
                        mov              r11, 22
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_var_α
.Llit_string_α_109_0:   .quad            .Llit_string_α_109_0_s
.Llit_string_α_109_0_s: .string          "'-"
                        .size            n31_lit_string_bx, .-n31_lit_string_bx
                        .type            n32_var_bx, @function
n32_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              r11, 23
                        mov              rax, qword ptr [r9 + 0]              # NUMERALS
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_binop_α
n32_var_β:              mov              r11, 23
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
                        .size            n32_var_bx, .-n32_var_bx
                        .type            n33_binop_bx, @function
n33_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:            sub              rsp, 16
                        mov              r11, 24
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
1:                                                                            jmp   n34_lit_string_α
n33_binop_β:            mov              r11, 24
                        add              rsp, 16;                             jmp   n32_var_β
                        .size            n33_binop_bx, .-n33_binop_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Llit_string_α_112_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_binop_α
n34_lit_string_β:       mov              r11, 25
                        add              rsp, 16;                             jmp   n33_binop_β
.Llit_string_α_112_0:   .quad            .Llit_string_α_112_0_s
.Llit_string_α_112_0_s: .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_binop_bx, @function
n35_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:            sub              rsp, 16
                        mov              r11, 26
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
1:                                                                            jmp   n36_lit_string_α
n35_binop_β:            mov              r11, 26
                        add              rsp, 16;                             jmp   n34_lit_string_β
                        .size            n35_binop_bx, .-n35_binop_bx
                        .type            n36_lit_string_bx, @function
n36_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Llit_string_α_114_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_binop_α
n36_lit_string_β:       mov              r11, 27
                        add              rsp, 16;                             jmp   n35_binop_β
.Llit_string_α_114_0:   .quad            .Llit_string_α_114_0_s
.Llit_string_α_114_0_s: .string          "abcdefghijklmnopqrstuvwxyz"
                        .size            n36_lit_string_bx, .-n36_lit_string_bx
                        .type            n37_binop_bx, @function
n37_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            sub              rsp, 16
                        mov              r11, 28
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
1:                                                                            jmp   n38_assign_α
n37_binop_β:            mov              r11, 28
                        add              rsp, 16;                             jmp   n36_lit_string_β
                        .size            n37_binop_bx, .-n37_binop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # WORD
                        mov              qword ptr [r9 + 24], rdx;            jmp   n39_statement_end_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_statement_end_bx, @function
n39_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 30
                        add              rsp, 112;                            jmp   n40_stmt_mark_α
                        .size            n39_statement_end_bx, .-n39_statement_end_bx
                        .type            n40_stmt_mark_bx, @function
n40_stmt_mark_bx:
#=======================================================================================================================
#       WPAT = BREAK(WORD) SPAN(WORD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n40_stmt_mark_α:        mov              r11, 31
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n41_statement_begin_α
                        .size            n40_stmt_mark_bx, .-n40_stmt_mark_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 32;                             jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 32;                             jmp   n51_stmt_mark_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 16]             # WORD
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rax, qword ptr [r9 + 16]             # WORD
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
n43_var_β:              mov              r11, 34
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_assign_bx, @function
n44_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 80], rax             # PAT$0$V0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n45_assign_α
n44_assign_β:           mov              r11, 35;                             jmp   n43_var_β
                        .size            n44_assign_bx, .-n44_assign_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT$0$V1
                        mov              qword ptr [r9 + 104], rdx;           jmp   n46_lit_string_α
n45_assign_β:           mov              r11, 36;                             jmp   n44_assign_β
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 37
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_lit_string_α
n46_lit_string_β:       mov              r11, 37
                        add              rsp, 16;                             jmp   n45_assign_β
.Llit_string_α_127_0:   .quad            .Llit_string_α_127_0_s
.Llit_string_α_127_0_s: .string          "PAT$0"
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_128_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_call_α
n47_lit_string_β:       mov              r11, 38
                        add              rsp, 16;                             jmp   n46_lit_string_β
.Llit_string_α_128_0:   .quad            .Llit_string_α_128_0_s
.Llit_string_α_128_0_s: .string          "2"
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_call_bx, @function
n48_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:             sub              rsp, 16
                        mov              r11, 39
                        sub              rsp, 32
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_α_rkfnzd130:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd130]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_129_240
                        add              rsp, 16;                             jmp   n47_lit_string_β
.Lcall_α_129_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n49_assign_α
n48_call_β:             mov              r11, 39
                        add              rsp, 16;                             jmp   n47_lit_string_β
                        .size            n48_call_bx, .-n48_call_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # WPAT
                        mov              qword ptr [r9 + 40], rdx;            jmp   n50_statement_end_α
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    mov              r11, 41
                        add              rsp, 80;                             jmp   n51_stmt_mark_α
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_stmt_mark_bx, @function
n51_stmt_mark_bx:
#=======================================================================================================================
# NEXTL LINE = INPUT  :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n51_stmt_mark_α:        mov              r11, 42
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n52_statement_begin_α
                        .size            n51_stmt_mark_bx, .-n51_stmt_mark_bx
                        .type            n52_statement_begin_bx, @function
n52_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 43;                             jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 43;                             jmp   n57_stmt_mark_α
                        .size            n52_statement_begin_bx, .-n52_statement_begin_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rdi, qword ptr [rip + .Lvar_α_138_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_138_240
                        add              rsp, 16;                             jmp   n52_statement_begin_β
.Lvar_α_138_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:69
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
1:                                                                            jmp   n54_assign_α
.Lvar_α_138_0:          .quad            .Lvar_α_138_0_s
.Lvar_α_138_0_s:        .string          "INPUT"
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_assign_bx, @function
n54_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # LINE
                        mov              qword ptr [r9 + 56], rdx;            jmp   n55_statement_end_α
                        .size            n54_assign_bx, .-n54_assign_bx
                        .type            n55_statement_end_bx, @function
n55_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 46
                        add              rsp, 16;                             jmp   n56_stmt_mark_α
                        .size            n55_statement_end_bx, .-n55_statement_end_bx
                        .type            n56_stmt_mark_bx, @function
n56_stmt_mark_bx:
#=======================================================================================================================
# NEXTW LINE ? WPAT =  :F(NEXTL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n56_stmt_mark_α:        mov              r11, 47
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n58_statement_begin_α
                        .size            n56_stmt_mark_bx, .-n56_stmt_mark_bx
                        .type            n57_stmt_mark_bx, @function
n57_stmt_mark_bx:
#=======================================================================================================================
# DONE  OUTPUT = +N ' words'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n57_stmt_mark_α:        mov              r11, 48
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n75_statement_begin_α
                        .size            n57_stmt_mark_bx, .-n57_stmt_mark_bx
                        .type            n58_statement_begin_bx, @function
n58_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 49;                             jmp   n59_var_α
n58_statement_begin_β:  mov              r11, 49;                             jmp   n51_stmt_mark_α
                        .size            n58_statement_begin_bx, .-n58_statement_begin_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 48]             # LINE
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n60_var_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 32]             # WPAT
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_assign_α
n60_var_β:              mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_stmt_mark_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_assign_bx, @function
n61_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_150_0]
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
1:                                                                            jmp   n62_match_begin_α
n61_assign_β:           mov              r11, 52;                             jmp   n60_var_β
.Lassign_α_150_0:       .quad            .Lassign_α_150_0_s
.Lassign_α_150_0_s:     .string          "PATV$0"
                        .size            n61_assign_bx, .-n61_assign_bx
                        .type            n62_match_begin_bx, @function
n62_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_match_begin_α:      mov              r11, 53
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
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
                        push             rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [r12 + 0], 0               # cas_mark
                        mov              qword ptr [r12 + 8], 0
                        mov              qword ptr [r12 + 16], 0
                        add              r12, 24
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_152_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_152_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n63_match_defer_α
n62_match_begin_β:      mov              r11, 53
.Lmatch_begin_α_152_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_152_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_152_1
                                                                              jmp   .Lmatch_begin_α_152_0
.Lmatch_begin_β_152_1:
.Lmatch_begin_γ_62_af:  mov              r11, 53
.Lmatch_begin_ω_62_af:  mov              r11, 53
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n61_assign_β
                        .size            n62_match_begin_bx, .-n62_match_begin_bx
                        .type            n63_match_defer_bx, @function
n63_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_defer_α:      mov              r11, 54
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S0]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_153_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_153_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_153_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_153_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_153_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_153_23
                                                                              jmp   .Lmatch_defer_α_153_22
.Lmatch_defer_α_153_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_153_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_153_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_153_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_153_0
.Lmatch_defer_α_153_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_153_0
.Lmatch_defer_α_153_22: sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S0]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
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
                        test             rax, rax;                            je    .Lmatch_defer_α_153_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_153_50: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                      mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
.Lmatch_defer_α_153_23: test             rax, rax;                            jz    .Lmatch_defer_α_153_0
.Lmatch_defer_α_153_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_153_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_153_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_153_4:                                                        jmp   n64_match_end_α
.Lmatch_defer_α_153_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_62_af
                                                                              jmp   n62_match_begin_β
.Lmatch_defer_α_153_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_153_49
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S0]
                        xor              esi, esi
                        mov              qword ptr [1879048192], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_open_entry@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_153_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_153_51: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:
.Lmatch_defer_α_153_2:  test             rax, rax;                            je    .Lmatch_defer_α_153_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_153_40
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
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_153_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_153_141
                        lea              rcx, [rip + .Lmatch_defer_α_153_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_153_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_153_42]
                        lea              rdx, [rip + .Lmatch_defer_α_153_43]; jmp   rax
.Lmatch_defer_α_153_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_153_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_153_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_153_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_153_46
.Lmatch_defer_α_153_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_153_47
.Lmatch_defer_α_153_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_153_46
.Lmatch_defer_α_153_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_153_47
.Lmatch_defer_α_153_141:
                        lea              rcx, [rip + .Lmatch_defer_α_153_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_153_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_153_142]
                        lea              rdx, [rip + .Lmatch_defer_α_153_143]
                                                                              jmp   rax
.Lmatch_defer_α_153_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_153_46
.Lmatch_defer_α_153_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_153_47
.Lmatch_defer_α_153_46: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_153_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_153_52: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_153_2
.Lmatch_defer_α_153_47: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_153_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_153_53: lea              rdi, [rsp + 0]
                        mov              esi, 3
                        mov              edx, 0
                        lea              rcx, [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 40]
                        add              rsp, 48
1:                                                                            jmp   .Lmatch_defer_α_153_2
.Lmatch_defer_α_153_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_153_48
.Lmatch_defer_α_153_3:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lmatch_defer_α_153_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_62_af
                        test             eax, eax;                            js    n62_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_153_6]
                        push             rcx
                        push             rax;                                 jmp   n64_match_end_α
.Lmatch_defer_α_153_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n62_match_begin_β
n63_match_defer_β:      mov              r11, 54
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_153_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_153_12
                                                                              jmp   rax
.Lmatch_defer_β_153_12:                                                       jmp   qword ptr [rsp]
                        .size            n63_match_defer_bx, .-n63_match_defer_bx
                        .type            n64_match_end_bx, @function
n64_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_end_α:        mov              r11, 55
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
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:
.Lmatch_end_α_155_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_155_2
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
                        and              rcx, 255
                        cmp              rcx, 2;                              je    .Lmatch_end_α_155_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_155_120
                        lea              rcx, [rip + .Lmatch_end_α_155_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_155_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_155_21]
                        lea              rdx, [rip + .Lmatch_end_α_155_22];   jmp   rax
.Lmatch_end_α_155_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_155_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_155_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_155_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_155_8
.Lmatch_end_α_155_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_155_9
.Lmatch_end_α_155_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_155_8
.Lmatch_end_α_155_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_155_9
.Lmatch_end_α_155_120:  lea              rcx, [rip + .Lmatch_end_α_155_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_155_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_155_121]
                        lea              rdx, [rip + .Lmatch_end_α_155_122];  jmp   rax
.Lmatch_end_α_155_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_155_8
.Lmatch_end_α_155_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_155_9
.Lmatch_end_α_155_8:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
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
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_155_1
.Lmatch_end_α_155_9:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
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
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                                                                            jmp   .Lmatch_end_α_155_1
.Lmatch_end_α_155_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        lea              rdx, [rbp + -88]
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_155_13
                                                                              jmp   .Lmatch_begin_ω_62_af
.Lmatch_end_α_155_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        pop              rbp;                                 jmp   n65_lit_string_α
                        .size            n64_match_end_bx, .-n64_match_end_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_match_replace_α
.Llit_string_α_156_0:   .quad            .Llit_string_α_156_0_s
.Llit_string_α_156_0_s: .string          ""
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_match_replace_bx, @function
n66_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_replace_α:    mov              r11, 57
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_158_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        call             qword ptr [rip + rt_match_replace@GOTPCREL]
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_158_1
.Lmatch_replace_α_158_0:
                        .quad            .Lmatch_replace_α_158_0_s
.Lmatch_replace_α_158_0_s:
                        .string          "LINE"
.Lmatch_replace_α_158_1:
                        push             rax                                  # gc_poll bb_match_replace.cpp:45
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
1:                                                                            jmp   n67_statement_end_α
                        .size            n66_match_replace_bx, .-n66_match_replace_bx
                        .type            n67_statement_end_bx, @function
n67_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 58
                        add              rsp, 32;                             jmp   n68_stmt_mark_α
                        .size            n67_statement_end_bx, .-n67_statement_end_bx
                        .type            n68_stmt_mark_bx, @function
n68_stmt_mark_bx:
#=======================================================================================================================
#       N = N + 1  :(NEXTW)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n68_stmt_mark_α:        mov              r11, 59
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n69_statement_begin_α
                        .size            n68_stmt_mark_bx, .-n68_stmt_mark_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 60;                             jmp   n70_var_α
n69_statement_begin_β:  mov              r11, 60;                             jmp   n56_stmt_mark_α
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 64]             # N
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_lit_integer_α
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_binop_α
n71_lit_integer_β:      mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
.Llit_integer_α_166_0:  .quad            1
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_binop_bx, @function
n72_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
                        mov              r11, 63
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_167_2
                        add              rax, 1;                              jo    .Lbinop_α_167_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_167_7
.Lbinop_α_167_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_167_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_167_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_167_4
.Lbinop_α_167_3:        movq             xmm0, rsi
.Lbinop_α_167_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_167_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_167_7:                                                              jmp   n73_assign_α
.Lbinop_α_167_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_167_240
                        add              rsp, 16;                             jmp   n71_lit_integer_β
.Lbinop_α_167_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n73_assign_α
n72_binop_β:            mov              r11, 63
                        add              rsp, 16;                             jmp   n71_lit_integer_β
                        .size            n72_binop_bx, .-n72_binop_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # N
                        mov              qword ptr [r9 + 72], rdx;            jmp   n74_statement_end_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 65
                        add              rsp, 48;                             jmp   n56_stmt_mark_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 66;                             jmp   n76_var_α
n75_statement_begin_β:  mov              r11, 66;                             jmp   main_γ
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 64]             # N
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_unop_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_unop_bx, @function
n77_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_unop_α:             sub              rsp, 16
                        mov              r11, 68
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_pos@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:36
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
1:                                                                            jmp   n78_lit_string_α
n77_unop_β:             mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
                        .size            n77_unop_bx, .-n77_unop_bx
                        .type            n78_lit_string_bx, @function
n78_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_175_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_binop_α
n78_lit_string_β:       mov              r11, 69
                        add              rsp, 16;                             jmp   n77_unop_β
.Llit_string_α_175_0:   .quad            .Llit_string_α_175_0_s
.Llit_string_α_175_0_s: .string          " words"
                        .size            n78_lit_string_bx, .-n78_lit_string_bx
                        .type            n79_binop_bx, @function
n79_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_binop_α:            sub              rsp, 16
                        mov              r11, 70
                        mov              rdi, qword ptr [rsp + 32]            # unop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
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
1:                                                                            jmp   n80_assign_α
n79_binop_β:            mov              r11, 70
                        add              rsp, 16;                             jmp   n78_lit_string_β
                        .size            n79_binop_bx, .-n79_binop_bx
                        .type            n80_assign_bx, @function
n80_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 71
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_177_0]
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
1:                                                                            jmp   n81_statement_end_α
.Lassign_α_177_0:       .quad            .Lassign_α_177_0_s
.Lassign_α_177_0_s:     .string          "OUTPUT"
                        .size            n80_assign_bx, .-n80_assign_bx
                        .type            n81_statement_end_bx, @function
n81_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 72
                        add              rsp, 64;                             jmp   main_γ
                        .size            n81_statement_end_bx, .-n81_statement_end_bx
                        .type            n82_goto_bx, @function
n82_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_goto_α:             mov              r11, 73;                             jmp   n51_stmt_mark_α
n82_goto_β:             mov              r11, 73;                             jmp   main_ω
                        .size            n82_goto_bx, .-n82_goto_bx
                        .type            n83_goto_bx, @function
n83_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_goto_α:             mov              r11, 74;                             jmp   n56_stmt_mark_α
n83_goto_β:             mov              r11, 74;                             jmp   main_ω
                        .size            n83_goto_bx, .-n83_goto_bx
                        .type            n84_goto_bx, @function
n84_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_goto_α:             mov              r11, 75;                             jmp   n57_stmt_mark_α
n84_goto_β:             mov              r11, 75;                             jmp   main_ω
                        .size            n84_goto_bx, .-n84_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
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
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            2818845003098
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            640
                        .quad            7
                        .quad            351843720888320
                        .quad            8800387989824
                        .quad            17600775979336
                        .quad            61576946123096
                        .quad            35184372089232
                        .quad            17596481012144
                        .quad            211106232533440
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "PAT$0"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__PAT$0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            96
                        .long            18
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            2
                        .quad            .Lgcmap_PAT$0
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.S0:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
