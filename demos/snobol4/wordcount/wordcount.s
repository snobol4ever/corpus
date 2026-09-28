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
                        mov              rax, qword ptr [r9 + 96]             # PAT$0$A1
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_coerce_string_α
                        .size            n0_var_bx, .-n0_var_bx
                        .type            n1_coerce_string_bx, @function
n1_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_coerce_string_α:     sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 12320956
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_coerce_string.cpp:22
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
1:                                                                            jmp   n2_var_α
                        .size            n1_coerce_string_bx, .-n1_coerce_string_bx
                        .type            n2_var_bx, @function
n2_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:               sub              rsp, 16
                        mov              r11, 3
                        mov              rax, qword ptr [r9 + 80]             # PAT$0$A0
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n3_coerce_string_α
                        .size            n2_var_bx, .-n2_var_bx
                        .type            n3_coerce_string_bx, @function
n3_coerce_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_coerce_string_α:     sub              rsp, 16
                        mov              r11, 4
                        lea              rdi, [rsp + 16]                      # var
                        lea              rsi, [rsp + 0]                       # result
                        mov              rdx, 4522053
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_str_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_coerce_string.cpp:22
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
1:                                                                            jmp   n4_match_break_α
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
.Lgvan5:                .string          "PAT$0$A0"
.Lgvan6:                .string          "PAT$0$A1"
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
                        mov              qword ptr [rsp + 760], rax
                        mov              dword ptr [rsp + 752], 160
                        mov              dword ptr [rsp + 756], 752
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
1:                      cmp              al, 104;                             jne   .Lcall_α_88_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n17_call_α
.Lcall_α_88_240:        mov              qword ptr [rsp + 0], rax             # result
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
1:                      cmp              al, 104;                             jne   .Lcall_α_89_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_lit_integer_α
.Lcall_α_89_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n18_lit_integer_α
n17_call_β:             mov              r11, 8
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_lit_integer_α
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#=======================================================================================================================
#       &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_90_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_lit_integer_α
.Llit_integer_α_90_0:   .quad            18446744073709551615
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_91_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_lit_string_α
.Llit_integer_α_91_0:   .quad            0
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_lit_string_bx, @function
n20_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_call_α
.Llit_string_α_92_0:    .quad            .Llit_string_α_92_0_s
.Llit_string_α_92_0_s:  .string          "snobol4/wordcount/wordcount.sno"
                        .size            n20_lit_string_bx, .-n20_lit_string_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             sub              rsp, 16
                        mov              r11, 12
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
.Lcall_α_rkfnzd94:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd94]
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
                        cmp              al, 104;                             jne   .Lcall_α_93_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n22_stmt_mark_α
.Lcall_α_93_240:        mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n22_stmt_mark_α
n21_call_β:             mov              r11, 12
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n22_stmt_mark_α
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_stmt_mark_bx, @function
n22_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_stmt_mark_α:        mov              r11, 13
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
                        add              rsp, 64;                             jmp   n23_statement_begin_α
                        .size            n22_stmt_mark_bx, .-n22_stmt_mark_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 14;                             jmp   n24_lit_integer_α
n23_statement_begin_β:  mov              r11, 14;                             jmp   n27_stmt_mark_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_99_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_kw_assign_snobol4_α
.Llit_integer_α_99_0:   .quad            1
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_kw_assign_snobol4_bx, @function
n25_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_100_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_100_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
.Lkw_assign_snobol4_α_100_240:
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
1:                                                                            jmp   n26_statement_end_α
.Lkw_assign_snobol4_α_100_0:
                        .quad            1
                        .size            n25_kw_assign_snobol4_bx, .-n25_kw_assign_snobol4_bx
                        .type            n26_statement_end_bx, @function
n26_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 17
                        add              rsp, 32;                             jmp   n27_stmt_mark_α
                        .size            n26_statement_end_bx, .-n26_statement_end_bx
                        .type            n27_stmt_mark_bx, @function
n27_stmt_mark_bx:
#=======================================================================================================================
#       NUMERALS = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n27_stmt_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n28_statement_begin_α
                        .size            n27_stmt_mark_bx, .-n27_stmt_mark_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 19;                             jmp   n29_lit_string_α
n28_statement_begin_β:  mov              r11, 19;                             jmp   n32_stmt_mark_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_lit_string_bx, @function
n29_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_assign_α
.Llit_string_α_107_0:   .quad            .Llit_string_α_107_0_s
.Llit_string_α_107_0_s: .string          "0123456789"
                        .size            n29_lit_string_bx, .-n29_lit_string_bx
                        .type            n30_assign_bx, @function
n30_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # NUMERALS
                        mov              qword ptr [r9 + 8], rdx;             jmp   n31_statement_end_α
                        .size            n30_assign_bx, .-n30_assign_bx
                        .type            n31_statement_end_bx, @function
n31_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 22
                        add              rsp, 16;                             jmp   n32_stmt_mark_α
                        .size            n31_statement_end_bx, .-n31_statement_end_bx
                        .type            n32_stmt_mark_bx, @function
n32_stmt_mark_bx:
#=======================================================================================================================
#       WORD = "'-" NUMERALS &UCASE &LCASE
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n32_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n33_statement_begin_α
                        .size            n32_stmt_mark_bx, .-n32_stmt_mark_bx
                        .type            n33_statement_begin_bx, @function
n33_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 24;                             jmp   n34_lit_string_α
n33_statement_begin_β:  mov              r11, 24;                             jmp   n43_stmt_mark_α
                        .size            n33_statement_begin_bx, .-n33_statement_begin_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_var_α
.Llit_string_α_115_0:   .quad            .Llit_string_α_115_0_s
.Llit_string_α_115_0_s: .string          "'-"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 0]              # NUMERALS
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_binop_α
n35_var_β:              mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_binop_bx, @function
n36_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            sub              rsp, 16
                        mov              r11, 27
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
1:                                                                            jmp   n37_kw_snobol4_α
n36_binop_β:            mov              r11, 27
                        add              rsp, 16;                             jmp   n35_var_β
                        .size            n36_binop_bx, .-n36_binop_bx
                        .type            n37_kw_snobol4_bx, @function
n37_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_kw_snobol4_α:       sub              rsp, 16
                        mov              r11, 28
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_binop_α
.Lkw_snobol4_α_118_0:   .quad            25
                        .size            n37_kw_snobol4_bx, .-n37_kw_snobol4_bx
                        .type            n38_binop_bx, @function
n38_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_α:            sub              rsp, 16
                        mov              r11, 29
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # kw_snobol4
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
1:                                                                            jmp   n39_kw_snobol4_α
n38_binop_β:            mov              r11, 29
                        add              rsp, 32;                             jmp   n36_binop_β
                        .size            n38_binop_bx, .-n38_binop_bx
                        .type            n39_kw_snobol4_bx, @function
n39_kw_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_kw_snobol4_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              rdi, qword ptr [rip + .Lkw_snobol4_α_120_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_read_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_binop_α
.Lkw_snobol4_α_120_0:   .quad            26
                        .size            n39_kw_snobol4_bx, .-n39_kw_snobol4_bx
                        .type            n40_binop_bx, @function
n40_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            sub              rsp, 16
                        mov              r11, 31
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # kw_snobol4
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
1:                                                                            jmp   n41_assign_α
n40_binop_β:            mov              r11, 31
                        add              rsp, 32;                             jmp   n38_binop_β
                        .size            n40_binop_bx, .-n40_binop_bx
                        .type            n41_assign_bx, @function
n41_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # WORD
                        mov              qword ptr [r9 + 24], rdx;            jmp   n42_statement_end_α
                        .size            n41_assign_bx, .-n41_assign_bx
                        .type            n42_statement_end_bx, @function
n42_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 33
                        add              rsp, 112;                            jmp   n43_stmt_mark_α
                        .size            n42_statement_end_bx, .-n42_statement_end_bx
                        .type            n43_stmt_mark_bx, @function
n43_stmt_mark_bx:
#=======================================================================================================================
#       WPAT = BREAK(WORD) SPAN(WORD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n43_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n44_statement_begin_α
                        .size            n43_stmt_mark_bx, .-n43_stmt_mark_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 35;                             jmp   n45_var_α
n44_statement_begin_β:  mov              r11, 35;                             jmp   n54_stmt_mark_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              r11, 36
                        mov              rax, qword ptr [r9 + 16]             # WORD
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_var_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 16]             # WORD
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_var_β:              mov              r11, 37
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 80], rax             # PAT$0$A0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n48_assign_α
n47_assign_β:           mov              r11, 38;                             jmp   n46_var_β
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT$0$A1
                        mov              qword ptr [r9 + 104], rdx;           jmp   n49_lit_string_α
n48_assign_β:           mov              r11, 39;                             jmp   n47_assign_β
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_lit_string_α
n49_lit_string_β:       mov              r11, 40
                        add              rsp, 16;                             jmp   n48_assign_β
.Llit_string_α_133_0:   .quad            .Llit_string_α_133_0_s
.Llit_string_α_133_0_s: .string          "PAT$0"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_call_α
n50_lit_string_β:       mov              r11, 41
                        add              rsp, 16;                             jmp   n49_lit_string_β
.Llit_string_α_134_0:   .quad            .Llit_string_α_134_0_s
.Llit_string_α_134_0_s: .string          "2"
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_call_bx, @function
n51_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             sub              rsp, 16
                        mov              r11, 42
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
.Lcall_α_rkfnzd136:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd136]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_135_240
                        add              rsp, 16;                             jmp   n50_lit_string_β
.Lcall_α_135_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n52_assign_α
n51_call_β:             mov              r11, 42
                        add              rsp, 16;                             jmp   n50_lit_string_β
                        .size            n51_call_bx, .-n51_call_bx
                        .type            n52_assign_bx, @function
n52_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 43
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # WPAT
                        mov              qword ptr [r9 + 40], rdx;            jmp   n53_statement_end_α
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 44
                        add              rsp, 80;                             jmp   n54_stmt_mark_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_stmt_mark_bx, @function
n54_stmt_mark_bx:
#=======================================================================================================================
# NEXTL LINE = INPUT  :F(DONE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n54_stmt_mark_α:        mov              r11, 45
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n55_statement_begin_α
                        .size            n54_stmt_mark_bx, .-n54_stmt_mark_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 46;                             jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 46;                             jmp   n60_stmt_mark_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 47
                        mov              rdi, qword ptr [rip + .Lvar_α_144_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_144_240
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Lvar_α_144_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_var_global.cpp:39
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
1:                                                                            jmp   n57_assign_α
.Lvar_α_144_0:          .quad            .Lvar_α_144_0_s
.Lvar_α_144_0_s:        .string          "INPUT"
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_assign_bx, @function
n57_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # LINE
                        mov              qword ptr [r9 + 56], rdx;            jmp   n58_statement_end_α
                        .size            n57_assign_bx, .-n57_assign_bx
                        .type            n58_statement_end_bx, @function
n58_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_end_α:    mov              r11, 49
                        add              rsp, 16;                             jmp   n59_stmt_mark_α
                        .size            n58_statement_end_bx, .-n58_statement_end_bx
                        .type            n59_stmt_mark_bx, @function
n59_stmt_mark_bx:
#=======================================================================================================================
# NEXTW LINE ? WPAT =  :F(NEXTL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n59_stmt_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n61_statement_begin_α
                        .size            n59_stmt_mark_bx, .-n59_stmt_mark_bx
                        .type            n60_stmt_mark_bx, @function
n60_stmt_mark_bx:
#=======================================================================================================================
# DONE  OUTPUT = +N ' words'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n60_stmt_mark_α:        mov              r11, 51
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n78_statement_begin_α
                        .size            n60_stmt_mark_bx, .-n60_stmt_mark_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 52;                             jmp   n62_var_α
n61_statement_begin_β:  mov              r11, 52;                             jmp   n54_stmt_mark_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 48]             # LINE
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_var_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 32]             # WPAT
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_α
n63_var_β:              mov              r11, 54
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_stmt_mark_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_156_0]
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
1:                                                                            jmp   n65_match_begin_α
n64_assign_β:           mov              r11, 55;                             jmp   n63_var_β
.Lassign_α_156_0:       .quad            .Lassign_α_156_0_s
.Lassign_α_156_0_s:     .string          "PATV$0"
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_match_begin_bx, @function
n65_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_begin_α:      mov              r11, 56
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
.Lmatch_begin_α_158_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_158_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n66_match_defer_α
n65_match_begin_β:      mov              r11, 56
.Lmatch_begin_α_158_13: lea              rsp, [rbp + -88]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_158_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_158_1
                                                                              jmp   .Lmatch_begin_α_158_0
.Lmatch_begin_β_158_1:
.Lmatch_begin_γ_65_af:  mov              r11, 56
.Lmatch_begin_ω_65_af:  mov              r11, 56
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
                        pop              rbp;                                 jmp   n64_assign_β
                        .size            n65_match_begin_bx, .-n65_match_begin_bx
                        .type            n66_match_defer_bx, @function
n66_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_defer_α:      mov              r11, 57
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S0]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_159_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_159_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_159_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_159_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_159_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_159_23
                                                                              jmp   .Lmatch_defer_α_159_22
.Lmatch_defer_α_159_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_159_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_159_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_159_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_159_0
.Lmatch_defer_α_159_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_159_0
.Lmatch_defer_α_159_22: sub              rsp, 32
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
                        test             rax, rax;                            je    .Lmatch_defer_α_159_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_159_50: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_159_23: test             rax, rax;                            jz    .Lmatch_defer_α_159_0
.Lmatch_defer_α_159_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_159_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_159_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_159_4:                                                        jmp   n67_match_end_α
.Lmatch_defer_α_159_5:  cmp              r14d, -2;                            je    .Lmatch_begin_ω_65_af
                                                                              jmp   n65_match_begin_β
.Lmatch_defer_α_159_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_159_49
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_159_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_159_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_159_2:  test             rax, rax;                            je    .Lmatch_defer_α_159_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_159_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_159_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_159_141
                        lea              rcx, [rip + .Lmatch_defer_α_159_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_159_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_159_42]
                        lea              rdx, [rip + .Lmatch_defer_α_159_43]; jmp   rax
.Lmatch_defer_α_159_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_159_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_159_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_159_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_159_46
.Lmatch_defer_α_159_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_159_47
.Lmatch_defer_α_159_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_159_46
.Lmatch_defer_α_159_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_159_47
.Lmatch_defer_α_159_141:
                        lea              rcx, [rip + .Lmatch_defer_α_159_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_159_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_159_142]
                        lea              rdx, [rip + .Lmatch_defer_α_159_143]
                                                                              jmp   rax
.Lmatch_defer_α_159_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_159_46
.Lmatch_defer_α_159_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_159_47
.Lmatch_defer_α_159_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_159_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_159_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_159_2
.Lmatch_defer_α_159_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_159_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_159_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_159_2
.Lmatch_defer_α_159_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_159_48
.Lmatch_defer_α_159_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_159_49: cmp              r14d, -2;                            je    .Lmatch_begin_ω_65_af
                        test             eax, eax;                            js    n65_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_159_6]
                        push             rcx
                        push             rax;                                 jmp   n67_match_end_α
.Lmatch_defer_α_159_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n65_match_begin_β
n66_match_defer_β:      mov              r11, 57
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_159_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_159_12
                                                                              jmp   rax
.Lmatch_defer_β_159_12:                                                       jmp   qword ptr [rsp]
                        .size            n66_match_defer_bx, .-n66_match_defer_bx
                        .type            n67_match_end_bx, @function
n67_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_end_α:        mov              r11, 58
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
.Lmatch_end_α_161_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_161_2
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_161_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_161_120
                        lea              rcx, [rip + .Lmatch_end_α_161_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_161_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_161_21]
                        lea              rdx, [rip + .Lmatch_end_α_161_22];   jmp   rax
.Lmatch_end_α_161_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_161_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_161_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_161_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_161_8
.Lmatch_end_α_161_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_161_9
.Lmatch_end_α_161_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_161_8
.Lmatch_end_α_161_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_161_9
.Lmatch_end_α_161_120:  lea              rcx, [rip + .Lmatch_end_α_161_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_161_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_161_121]
                        lea              rdx, [rip + .Lmatch_end_α_161_122];  jmp   rax
.Lmatch_end_α_161_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_161_8
.Lmatch_end_α_161_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_161_9
.Lmatch_end_α_161_8:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_161_1
.Lmatch_end_α_161_9:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_161_1
.Lmatch_end_α_161_2:    mov              qword ptr [rsp + 0], rax
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
                        test             rax, rax;                            je    .Lmatch_end_α_161_13
                                                                              jmp   .Lmatch_begin_ω_65_af
.Lmatch_end_α_161_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        pop              rbp;                                 jmp   n68_lit_string_α
                        .size            n67_match_end_bx, .-n67_match_end_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_162_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_match_replace_α
.Llit_string_α_162_0:   .quad            .Llit_string_α_162_0_s
.Llit_string_α_162_0_s: .string          ""
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_match_replace_bx, @function
n69_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_match_replace_α:    mov              r11, 60
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_164_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        call             qword ptr [rip + rt_match_replace@GOTPCREL]
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_164_1
.Lmatch_replace_α_164_0:
                        .quad            .Lmatch_replace_α_164_0_s
.Lmatch_replace_α_164_0_s:
                        .string          "LINE"
.Lmatch_replace_α_164_1:
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
1:                                                                            jmp   n70_statement_end_α
                        .size            n69_match_replace_bx, .-n69_match_replace_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 61
                        add              rsp, 32;                             jmp   n71_stmt_mark_α
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_stmt_mark_bx, @function
n71_stmt_mark_bx:
#=======================================================================================================================
#       N = N + 1  :(NEXTW)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n71_stmt_mark_α:        mov              r11, 62
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n72_statement_begin_α
                        .size            n71_stmt_mark_bx, .-n71_stmt_mark_bx
                        .type            n72_statement_begin_bx, @function
n72_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 63;                             jmp   n73_var_α
n72_statement_begin_β:  mov              r11, 63;                             jmp   n59_stmt_mark_α
                        .size            n72_statement_begin_bx, .-n72_statement_begin_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 64]             # N
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_lit_integer_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_binop_α
n74_lit_integer_β:      mov              r11, 65
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n72_statement_begin_β
.Llit_integer_α_172_0:  .quad            1
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_binop_bx, @function
n75_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_α:            sub              rsp, 16
                        mov              r11, 66
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_173_2
                        add              rax, 1;                              jo    .Lbinop_α_173_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_173_7
.Lbinop_α_173_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_173_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_173_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_173_4
.Lbinop_α_173_3:        movq             xmm0, rsi
.Lbinop_α_173_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_173_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_173_7:                                                              jmp   n76_assign_α
.Lbinop_α_173_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_173_240
                        add              rsp, 16;                             jmp   n74_lit_integer_β
.Lbinop_α_173_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n76_assign_α
n75_binop_β:            mov              r11, 66
                        add              rsp, 16;                             jmp   n74_lit_integer_β
                        .size            n75_binop_bx, .-n75_binop_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # N
                        mov              qword ptr [r9 + 72], rdx;            jmp   n77_statement_end_α
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 68
                        add              rsp, 48;                             jmp   n59_stmt_mark_α
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 69;                             jmp   n79_var_α
n78_statement_begin_β:  mov              r11, 69;                             jmp   main_γ
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 64]             # N
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_unop_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_unop_bx, @function
n80_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_unop_α:             sub              rsp, 16
                        mov              r11, 71
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
1:                                                                            jmp   n81_lit_string_α
n80_unop_β:             mov              r11, 71
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
                        .size            n80_unop_bx, .-n80_unop_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_binop_α
n81_lit_string_β:       mov              r11, 72
                        add              rsp, 16;                             jmp   n80_unop_β
.Llit_string_α_181_0:   .quad            .Llit_string_α_181_0_s
.Llit_string_α_181_0_s: .string          " words"
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_binop_bx, @function
n82_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_binop_α:            sub              rsp, 16
                        mov              r11, 73
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
1:                                                                            jmp   n83_assign_α
n82_binop_β:            mov              r11, 73
                        add              rsp, 16;                             jmp   n81_lit_string_β
                        .size            n82_binop_bx, .-n82_binop_bx
                        .type            n83_assign_bx, @function
n83_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_183_0]
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
1:                                                                            jmp   n84_statement_end_α
.Lassign_α_183_0:       .quad            .Lassign_α_183_0_s
.Lassign_α_183_0_s:     .string          "OUTPUT"
                        .size            n83_assign_bx, .-n83_assign_bx
                        .type            n84_statement_end_bx, @function
n84_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 75
                        add              rsp, 64;                             jmp   main_γ
                        .size            n84_statement_end_bx, .-n84_statement_end_bx
                        .type            n85_goto_bx, @function
n85_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_goto_α:             mov              r11, 76;                             jmp   n54_stmt_mark_α
n85_goto_β:             mov              r11, 76;                             jmp   main_ω
                        .size            n85_goto_bx, .-n85_goto_bx
                        .type            n86_goto_bx, @function
n86_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_goto_α:             mov              r11, 77;                             jmp   n59_stmt_mark_α
n86_goto_β:             mov              r11, 77;                             jmp   main_ω
                        .size            n86_goto_bx, .-n86_goto_bx
                        .type            n87_goto_bx, @function
n87_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_goto_α:             mov              r11, 78;                             jmp   n60_stmt_mark_α
n87_goto_β:             mov              r11, 78;                             jmp   main_ω
                        .size            n87_goto_bx, .-n87_goto_bx
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
                        .quad            3231161863514
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            736
                        .quad            7
                        .quad            351843720888320
                        .quad            8800387989824
                        .quad            17600775979336
                        .quad            61576946123096
                        .quad            35184372089232
                        .quad            17596481012144
                        .quad            316659348799936
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
