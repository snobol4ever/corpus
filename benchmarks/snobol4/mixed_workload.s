                        .intel_syntax    noprefix
                        .text
                        .file            1 "mixed_workload.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 88
                        lea              rax, [rip + .Lgcmap_PAT$0]
                        mov              qword ptr [rbp + -80], rax
                        mov              dword ptr [rbp + -88], 160
                        mov              dword ptr [rbp + -84], 88
                        mov              eax, 0
                        lea              rdi, [rbp + -72]
                        xor              eax, eax
                        mov              ecx, 72
                        rep              stosb
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
                        .type            n0_match_assign_save_bx, @function
n0_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n0_match_assign_save_bx, .-n0_match_assign_save_bx
                        .type            n1_match_break_bx, @function
n1_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        mov              r11, 2
                        movsxd           rcx, r14d
.Lmatch_break_α_7_0:    cmp              ecx, r15d;                           jl    .Lmatch_break_α_7_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_break_α_7_240:  movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_7_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_7_0
.Lmatch_break_α_7_1:    mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r11, 2
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
                        .size            n1_match_break_bx, .-n1_match_break_bx
                        .type            n2_match_assign_cond_bx, @function
n2_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              r11, 3
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_lit_α
n2_match_assign_cond_β: mov              r11, 3
                        sub              r12, 24;                             jmp   n1_match_break_β
                        .size            n2_match_assign_cond_bx, .-n2_match_assign_cond_bx
                        .type            n3_match_lit_bx, @function
n3_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              r11, 4
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n2_match_assign_cond_β
                        add              r14d, 1;                             jmp   PAT$0_γ
n3_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n2_match_assign_cond_β
                        .size            n3_match_lit_bx, .-n3_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n3_match_lit_β
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
                        .quad            379303578970
                        .quad            17179869208
                        .quad            .Lgcmap_PAT$0_s
                        .quad            88
                        .quad            11
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
                        mov              edi, 11
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 11
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 8
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
.Lgvan0:                .string          "rsum"
.Lgvan1:                .string          "n"
.Lgvan2:                .string          "field"
.Lgvan3:                .string          "word"
.Lgvan4:                .string          "grand"
.Lgvan5:                .string          "pass"
.Lgvan6:                .string          "tab"
.Lgvan7:                .string          "data"
.Lgvan8:                .string          "count"
.Lgvan9:                .string          "total"
.Lgvan10:               .string          "j"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "rsum"
.Llbln1:                .string          "rsum_end"
.Llbln2:                .string          "record"
.Llbln3:                .string          "parse"
.Llbln4:                .string          "calc"
.Llbln5:                .string          "add"
.Llbln6:                .string          "next"
.Llbln7:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .quad            .Llbln6
                        .quad            .Llbln7
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1352], rax
                        mov              dword ptr [rsp + 1344], 160
                        mov              dword ptr [rsp + 1348], 1360
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('rsum(n)')                               :(rsum_end)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n12_lit_integer_α:      sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_lit_integer_α
.Llit_integer_α_167_0:  .quad            18446744073709551615
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_lit_string_α
.Llit_integer_α_168_0:  .quad            0
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_169_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_call_α
.Llit_string_α_169_0:   .quad            .Llit_string_α_169_0_s
.Llit_string_α_169_0_s: .string          "mixed_workload.sno"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_call_bx, @function
n15_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             sub              rsp, 16
                        mov              r11, 8
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
.Lcall_α_rkfnzd171:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd171]
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
                        cmp              al, 104;                             jne   .Lcall_α_170_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n16_stmt_mark_α
.Lcall_α_170_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n16_stmt_mark_α
n15_call_β:             mov              r11, 8
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n16_stmt_mark_α
                        .size            n15_call_bx, .-n15_call_bx
                        .type            n16_stmt_mark_bx, @function
n16_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_stmt_mark_α:        mov              r11, 9
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        add              rsp, 64;                             jmp   n17_statement_begin_α
                        .size            n16_stmt_mark_bx, .-n16_stmt_mark_bx
                        .type            n17_statement_begin_bx, @function
n17_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 10;                             jmp   n18_define_α
n17_statement_begin_β:  mov              r11, 10;                             jmp   n20_stmt_mark_α
                        .size            n17_statement_begin_bx, .-n17_statement_begin_bx
                        .type            n18_define_bx, @function
n18_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_define_α:           mov              r11, 11
                        mov              rdi, qword ptr [rip + .Ldefine_α_177_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_177_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__rsum]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_define.cpp:429
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
1:                      mov              rdi, qword ptr [rip + .Ldefine_α_177_0]
                        lea              rsi, [rip + rsum_α]
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
entry_cell$rsum:        .quad            LBL__rsum
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__rsum]
                        mov              rcx, qword ptr [rip + entry_cell$rsum@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n19_statement_end_α
n18_define_β:           mov              r11, 11;                             jmp   n17_statement_begin_β
.Ldefine_α_177_0:       .quad            .Ldefine_α_177_0_s
.Ldefine_α_177_0_s:     .string          "rsum"
.Ldefine_α_177_1:       .quad            .Ldefine_α_177_1_s
.Ldefine_α_177_1_s:     .string          "n"
                                                                              jmp   .Ldefine_α_178_245
#-----------------------------------------------------------------------------------------------------------------------
rsum_α:                 sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # rsum
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_178_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # n
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_178_41
.Ldefine_α_178_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_178_41:      push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_178_231
.Ldefine_α_178_232:     .quad            .Ldefine_α_178_232_s
.Ldefine_α_178_232_s:   .string          "rsum"
.Ldefine_α_178_231:     lea              rcx, [rip + rsum_γ]
                        lea              rax, [rip + rsum_ω]
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
                        mov              rax, qword ptr [rip + entry_cell$rsum@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
rsum_γ:                 mov              rdi, qword ptr [r9 + 0]              # rsum
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_178_236
.Ldefine_α_178_237:     .quad            .Ldefine_α_178_237_s
.Ldefine_α_178_237_s:   .string          "rsum"
.Ldefine_α_178_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_178_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_178_110
.Ldefine_α_178_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_178_110:     push             rcx
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
rsum_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # rsum
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_178_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # n
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_178_180
.Ldefine_α_178_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_178_180:     push             rcx
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
.Ldefine_α_178_245:
                        .size            n18_define_bx, .-n18_define_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 12;                             jmp   n20_stmt_mark_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_stmt_mark_bx, @function
n20_stmt_mark_bx:
#=======================================================================================================================
# rsum_end field = BREAK(',') . word ','
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n20_stmt_mark_α:        mov              r11, 13
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n40_statement_begin_α
                        .size            n20_stmt_mark_bx, .-n20_stmt_mark_bx
                        .type            n21_statement_begin_bx, @function
n21_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 14;                             jmp   n22_var_α
n21_statement_begin_β:  mov              r11, 14;                             jmp   n30_stmt_mark_α
                        .size            n21_statement_begin_bx, .-n21_statement_begin_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              r11, 15
                        mov              rax, qword ptr [r9 + 16]             # n
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_lit_integer_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_coerce_numeric_α
n23_lit_integer_β:      mov              r11, 16
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n21_statement_begin_β
.Llit_integer_α_186_0:  .quad            0
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_coerce_numeric_bx, @function
n24_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 17
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_188_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_188_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_188_0
.Lcoerce_numeric_α_188_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_coerce_numeric_α
.Lcoerce_numeric_α_188_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
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
1:                                                                            jmp   n25_coerce_numeric_α
n24_coerce_numeric_β:   mov              r11, 17
                        add              rsp, 16;                             jmp   n23_lit_integer_β
                        .size            n24_coerce_numeric_bx, .-n24_coerce_numeric_bx
                        .type            n25_coerce_numeric_bx, @function
n25_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 18
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_190_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_190_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_190_0
.Lcoerce_numeric_α_190_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_cmp_test_α
.Lcoerce_numeric_α_190_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
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
1:                                                                            jmp   n26_cmp_test_α
n25_coerce_numeric_β:   mov              r11, 18
                        add              rsp, 16;                             jmp   n24_coerce_numeric_β
                        .size            n25_coerce_numeric_bx, .-n25_coerce_numeric_bx
                        .type            n26_cmp_test_bx, @function
n26_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_cmp_test_α:         sub              rsp, 16
                        mov              r11, 19
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_192_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lcmp_test_α_192_239
                        add              rsp, 16;                             jmp   n25_coerce_numeric_β
.Lcmp_test_α_192_239:                                                         jmp   n27_lit_integer_α
.Lcmp_test_α_192_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            je    .Lcmp_test_α_192_240
                        add              rsp, 16;                             jmp   n25_coerce_numeric_β
.Lcmp_test_α_192_240:                                                         jmp   n27_lit_integer_α
n26_cmp_test_β:         mov              r11, 19
                        add              rsp, 16;                             jmp   n25_coerce_numeric_β
                        .size            n26_cmp_test_bx, .-n26_cmp_test_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_assign_α
n27_lit_integer_β:      mov              r11, 20
                        add              rsp, 16;                             jmp   n26_cmp_test_β
.Llit_integer_α_193_0:  .quad            0
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_assign_bx, @function
n28_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # rsum
                        mov              qword ptr [r9 + 8], rdx;             jmp   n29_statement_end_α
                        .size            n28_assign_bx, .-n28_assign_bx
                        .type            n29_statement_end_bx, @function
n29_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 22
                        add              rsp, 96;                             jmp   RETURN
                        .size            n29_statement_end_bx, .-n29_statement_end_bx
                        .type            n30_stmt_mark_bx, @function
n30_stmt_mark_bx:
#=======================================================================================================================
#         rsum = n + rsum(n - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n30_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n31_statement_begin_α
                        .size            n30_stmt_mark_bx, .-n30_stmt_mark_bx
                        .type            n31_statement_begin_bx, @function
n31_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 24;                             jmp   n32_var_α
n31_statement_begin_β:  mov              r11, 24;                             jmp   RETURN
                        .size            n31_statement_begin_bx, .-n31_statement_begin_bx
                        .type            n32_var_bx, @function
n32_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              r11, 25
                        mov              rax, qword ptr [r9 + 16]             # n
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_var_α
                        .size            n32_var_bx, .-n32_var_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              sub              rsp, 16
                        mov              r11, 26
                        mov              rax, qword ptr [r9 + 16]             # n
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_lit_integer_α
n33_var_β:              mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n31_statement_begin_β
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_203_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_binop_α
n34_lit_integer_β:      mov              r11, 27
                        add              rsp, 16;                             jmp   n33_var_β
.Llit_integer_α_203_0:  .quad            1
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_binop_bx, @function
n35_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_α:            sub              rsp, 16
                        mov              r11, 28
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_204_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_204_7
.Lbinop_α_204_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_204_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_204_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_204_4
.Lbinop_α_204_3:        movq             xmm0, rsi
.Lbinop_α_204_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_204_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_204_7:                                                              jmp   n36_call_α
.Lbinop_α_204_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_sub@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_204_240
                        add              rsp, 16;                             jmp   n34_lit_integer_β
.Lbinop_α_204_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n36_call_α
n35_binop_β:            mov              r11, 28
                        add              rsp, 16;                             jmp   n34_lit_integer_β
                        .size            n35_binop_bx, .-n35_binop_bx
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        mov              r11, 29
                        lea              rcx, [rip + .Lcall_α_sig206z]
                        lea              rax, [rip + rsum_α];                 jmp   rax
.Lcall_α_sig206z:       .quad            1
                        .quad            .Lcall_α_206_2
                        .quad            .Lcall_α_206_2
                        .quad            16
.Lcall_α_206_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_206_29
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
.Lcall_α_206_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_206_240
                        add              rsp, 16;                             jmp   n35_binop_β
.Lcall_α_206_240:                                                             jmp   n37_binop_α
n36_call_β:             mov              r11, 29;                             jmp   n35_binop_β
.Lcall_β_206_0:         .quad            .Lcall_β_206_0_s
.Lcall_β_206_0_s:       .string          "rsum"
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_binop_bx, @function
n37_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            sub              rsp, 16
                        mov              r11, 30
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_207_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_207_7
.Lbinop_α_207_2:        and              edx, 1;                              jz    .Lbinop_α_207_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_207_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_207_4
.Lbinop_α_207_3:        movq             xmm0, rsi
.Lbinop_α_207_4:        cmp              cl, 5;                               je    .Lbinop_α_207_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_207_6
.Lbinop_α_207_5:        movq             xmm1, rdi
.Lbinop_α_207_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_207_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_207_7:                                                              jmp   n38_assign_α
.Lbinop_α_207_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_207_240
                        add              rsp, 32;                             jmp   n35_binop_β
.Lbinop_α_207_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
n37_binop_β:            mov              r11, 30
                        add              rsp, 32;                             jmp   n35_binop_β
                        .size            n37_binop_bx, .-n37_binop_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # rsum
                        mov              qword ptr [r9 + 8], rdx;             jmp   n39_statement_end_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_statement_end_bx, @function
n39_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 32
                        add              rsp, 96;                             jmp   RETURN
                        .size            n39_statement_end_bx, .-n39_statement_end_bx
                        .type            n40_statement_begin_bx, @function
n40_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 33;                             jmp   n41_lit_string_α
n40_statement_begin_β:  mov              r11, 33;                             jmp   n45_stmt_mark_α
                        .size            n40_statement_begin_bx, .-n40_statement_begin_bx
                        .type            n41_lit_string_bx, @function
n41_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_call_α
.Llit_string_α_213_0:   .quad            .Llit_string_α_213_0_s
.Llit_string_α_213_0_s: .string          "PAT$0"
                        .size            n41_lit_string_bx, .-n41_lit_string_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             sub              rsp, 16
                        mov              r11, 35
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd215:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd215]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 606260
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_214_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lcall_α_214_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n43_assign_α
n42_call_β:             mov              r11, 35
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_assign_bx, @function
n43_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # field
                        mov              qword ptr [r9 + 40], rdx;            jmp   n44_statement_end_α
                        .size            n43_assign_bx, .-n43_assign_bx
                        .type            n44_statement_end_bx, @function
n44_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    mov              r11, 37
                        add              rsp, 32;                             jmp   n45_stmt_mark_α
                        .size            n44_statement_end_bx, .-n44_statement_end_bx
                        .type            n45_stmt_mark_bx, @function
n45_stmt_mark_bx:
#=======================================================================================================================
#         grand = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n45_stmt_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n46_statement_begin_α
                        .size            n45_stmt_mark_bx, .-n45_stmt_mark_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 39;                             jmp   n47_lit_integer_α
n46_statement_begin_β:  mov              r11, 39;                             jmp   n50_stmt_mark_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_223_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_assign_α
.Llit_integer_α_223_0:  .quad            0
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # grand
                        mov              qword ptr [r9 + 72], rdx;            jmp   n49_statement_end_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 42
                        add              rsp, 16;                             jmp   n50_stmt_mark_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_stmt_mark_bx, @function
n50_stmt_mark_bx:
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n50_stmt_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n51_statement_begin_α
                        .size            n50_stmt_mark_bx, .-n50_stmt_mark_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 44;                             jmp   n52_lit_integer_α
n51_statement_begin_β:  mov              r11, 44;                             jmp   n55_stmt_mark_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 45
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Llit_integer_α_231_0:  .quad            1
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # pass
                        mov              qword ptr [r9 + 88], rdx;            jmp   n54_statement_end_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 47
                        add              rsp, 16;                             jmp   n55_stmt_mark_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_stmt_mark_bx, @function
n55_stmt_mark_bx:
#=======================================================================================================================
# record  tab = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n55_stmt_mark_α:        mov              r11, 48
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n56_statement_begin_α
                        .size            n55_stmt_mark_bx, .-n55_stmt_mark_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 49;                             jmp   n57_lit_integer_α
n56_statement_begin_β:  mov              r11, 49;                             jmp   n61_stmt_mark_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_call_α
.Llit_integer_α_239_0:  .quad            16
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             sub              rsp, 16
                        mov              r11, 51
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd241:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd241]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_240_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n56_statement_begin_β
.Lcall_α_240_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n59_assign_α
n58_call_β:             mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n56_statement_begin_β
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # tab
                        mov              qword ptr [r9 + 104], rdx;           jmp   n60_statement_end_α
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 53
                        add              rsp, 32;                             jmp   n61_stmt_mark_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_stmt_mark_bx, @function
n61_stmt_mark_bx:
#=======================================================================================================================
#         data = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n61_stmt_mark_α:        mov              r11, 54
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n62_statement_begin_α
                        .size            n61_stmt_mark_bx, .-n61_stmt_mark_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 55;                             jmp   n63_lit_string_α
n62_statement_begin_β:  mov              r11, 55;                             jmp   n66_stmt_mark_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_249_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_assign_α
.Llit_string_α_249_0:   .quad            .Llit_string_α_249_0_s
.Llit_string_α_249_0_s: .string          "10,20,30,40,50,60,70,80,90,100,"
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 57
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # data
                        mov              qword ptr [r9 + 120], rdx;           jmp   n65_statement_end_α
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_statement_end_bx, @function
n65_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 58
                        add              rsp, 16;                             jmp   n66_stmt_mark_α
                        .size            n65_statement_end_bx, .-n65_statement_end_bx
                        .type            n66_stmt_mark_bx, @function
n66_stmt_mark_bx:
#=======================================================================================================================
#         count = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n66_stmt_mark_α:        mov              r11, 59
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n67_statement_begin_α
                        .size            n66_stmt_mark_bx, .-n66_stmt_mark_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 60;                             jmp   n68_lit_integer_α
n67_statement_begin_β:  mov              r11, 60;                             jmp   n71_stmt_mark_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_257_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_assign_α
.Llit_integer_α_257_0:  .quad            0
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # count
                        mov              qword ptr [r9 + 136], rdx;           jmp   n70_statement_end_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 63
                        add              rsp, 16;                             jmp   n71_stmt_mark_α
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_stmt_mark_bx, @function
n71_stmt_mark_bx:
#=======================================================================================================================
# parse   data ? field =                                  :F(calc)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n71_stmt_mark_α:        mov              r11, 64
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n72_statement_begin_α
                        .size            n71_stmt_mark_bx, .-n71_stmt_mark_bx
                        .type            n72_statement_begin_bx, @function
n72_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_begin_α:  mov              r11, 65;                             jmp   n73_var_α
n72_statement_begin_β:  mov              r11, 65;                             jmp   n83_stmt_mark_α
                        .size            n72_statement_begin_bx, .-n72_statement_begin_bx
                        .type            n73_var_bx, @function
n73_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 112]            # data
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_var_α
                        .size            n73_var_bx, .-n73_var_bx
                        .type            n74_var_bx, @function
n74_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 32]             # field
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_assign_α
n74_var_β:              mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n83_stmt_mark_α
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_assign_bx, @function
n75_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_267_0]
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
1:                                                                            jmp   n76_match_begin_α
n75_assign_β:           mov              r11, 68;                             jmp   n74_var_β
.Lassign_α_267_0:       .quad            .Lassign_α_267_0_s
.Lassign_α_267_0_s:     .string          "PATV$0"
                        .size            n75_assign_bx, .-n75_assign_bx
                        .type            n76_match_begin_bx, @function
n76_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_begin_α:      mov              r11, 69
                        mov              rdi, qword ptr [rsp + 16]            # var
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
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
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_269_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_269_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n77_match_defer_α
n76_match_begin_β:      mov              r11, 69
.Lmatch_begin_α_269_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_269_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_269_1
                                                                              jmp   .Lmatch_begin_α_269_0
.Lmatch_begin_β_269_1:
.Lmatch_begin_γ_76_af:  mov              r11, 69
.Lmatch_begin_ω_76_af:  mov              r11, 69
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              r13, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n75_assign_β
                        .size            n76_match_begin_bx, .-n76_match_begin_bx
                        .type            n77_match_defer_bx, @function
n77_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_defer_α:      mov              r11, 70
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_270_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_270_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_270_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_270_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_270_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_270_23
                                                                              jmp   .Lmatch_defer_α_270_22
.Lmatch_defer_α_270_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_270_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_270_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_270_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_270_0
.Lmatch_defer_α_270_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_270_0
.Lmatch_defer_α_270_22: sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S1]
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
                        test             rax, rax;                            je    .Lmatch_defer_α_270_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_270_50: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_270_23: test             rax, rax;                            jz    .Lmatch_defer_α_270_0
.Lmatch_defer_α_270_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_270_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_270_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_270_4:                                                        jmp   n78_match_end_α
.Lmatch_defer_α_270_5:                                                        jmp   n76_match_begin_β
.Lmatch_defer_α_270_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_270_49
                        sub              rsp, 32
                        mov              dword ptr [rsp + 16], 3
                        mov              dword ptr [rsp + 20], 0
                        mov              qword ptr [rsp + 24], r14
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rip + .S1]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_270_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_270_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_270_2:  test             rax, rax;                            je    .Lmatch_defer_α_270_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_270_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_270_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_270_141
                        lea              rcx, [rip + .Lmatch_defer_α_270_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_270_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_270_42]
                        lea              rdx, [rip + .Lmatch_defer_α_270_43]; jmp   rax
.Lmatch_defer_α_270_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_270_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_270_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_270_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_270_46
.Lmatch_defer_α_270_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_270_47
.Lmatch_defer_α_270_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_270_46
.Lmatch_defer_α_270_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_270_47
.Lmatch_defer_α_270_141:
                        lea              rcx, [rip + .Lmatch_defer_α_270_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_270_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_270_142]
                        lea              rdx, [rip + .Lmatch_defer_α_270_143]
                                                                              jmp   rax
.Lmatch_defer_α_270_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_270_46
.Lmatch_defer_α_270_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_270_47
.Lmatch_defer_α_270_46: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_270_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_270_52: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_270_2
.Lmatch_defer_α_270_47: mov              qword ptr [rip + rtccb+40], r8
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_270_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_270_53: lea              rdi, [rsp + 0]
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
1:                                                                            jmp   .Lmatch_defer_α_270_2
.Lmatch_defer_α_270_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_270_48
.Lmatch_defer_α_270_3:  mov              r13, qword ptr [rsp + 8]
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
.Lmatch_defer_α_270_49: test             eax, eax;                            js    n76_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_270_6]
                        push             rcx
                        push             rax;                                 jmp   n78_match_end_α
.Lmatch_defer_α_270_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n76_match_begin_β
n77_match_defer_β:      mov              r11, 70
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_270_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_270_12
                                                                              jmp   rax
.Lmatch_defer_β_270_12:                                                       jmp   qword ptr [rsp]
                        .size            n77_match_defer_bx, .-n77_match_defer_bx
                        .type            n78_match_end_bx, @function
n78_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_end_α:        mov              r11, 71
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
.Lmatch_end_α_272_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_272_2
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_272_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_272_120
                        lea              rcx, [rip + .Lmatch_end_α_272_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_272_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_272_21]
                        lea              rdx, [rip + .Lmatch_end_α_272_22];   jmp   rax
.Lmatch_end_α_272_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_272_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_272_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_272_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_272_8
.Lmatch_end_α_272_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_272_9
.Lmatch_end_α_272_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_272_8
.Lmatch_end_α_272_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_272_9
.Lmatch_end_α_272_120:  lea              rcx, [rip + .Lmatch_end_α_272_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_272_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_272_121]
                        lea              rdx, [rip + .Lmatch_end_α_272_122];  jmp   rax
.Lmatch_end_α_272_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_272_8
.Lmatch_end_α_272_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_272_9
.Lmatch_end_α_272_8:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_272_1
.Lmatch_end_α_272_9:    mov              qword ptr [rip + rtccb+40], r8
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
1:                                                                            jmp   .Lmatch_end_α_272_1
.Lmatch_end_α_272_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        xor              edx, edx
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              qword ptr [rbp + -16], rax           # outer_Σ
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_272_13
                                                                              jmp   .Lmatch_begin_ω_76_af
.Lmatch_end_α_272_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        pop              rbp;                                 jmp   n79_lit_string_α
                        .size            n78_match_end_bx, .-n78_match_end_bx
                        .type            n79_lit_string_bx, @function
n79_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_273_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_match_replace_α
.Llit_string_α_273_0:   .quad            .Llit_string_α_273_0_s
.Llit_string_α_273_0_s: .string          ""
                        .size            n79_lit_string_bx, .-n79_lit_string_bx
                        .type            n80_match_replace_bx, @function
n80_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_match_replace_α:    mov              r11, 73
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_275_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        call             qword ptr [rip + rt_match_replace@GOTPCREL]
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_275_1
.Lmatch_replace_α_275_0:
                        .quad            .Lmatch_replace_α_275_0_s
.Lmatch_replace_α_275_0_s:
                        .string          "data"
.Lmatch_replace_α_275_1:
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
1:                                                                            jmp   n81_statement_end_α
                        .size            n80_match_replace_bx, .-n80_match_replace_bx
                        .type            n81_statement_end_bx, @function
n81_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 74
                        add              rsp, 32;                             jmp   n82_stmt_mark_α
                        .size            n81_statement_end_bx, .-n81_statement_end_bx
                        .type            n82_stmt_mark_bx, @function
n82_stmt_mark_bx:
#=======================================================================================================================
#         count = count + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n82_stmt_mark_α:        mov              r11, 75
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n84_statement_begin_α
                        .size            n82_stmt_mark_bx, .-n82_stmt_mark_bx
                        .type            n83_stmt_mark_bx, @function
n83_stmt_mark_bx:
#=======================================================================================================================
# calc    total = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n83_stmt_mark_α:        mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n99_statement_begin_α
                        .size            n83_stmt_mark_bx, .-n83_stmt_mark_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 77;                             jmp   n85_var_α
n84_statement_begin_β:  mov              r11, 77;                             jmp   n90_stmt_mark_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              r11, 78
                        mov              rax, qword ptr [r9 + 128]            # count
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_lit_integer_α
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_285_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_binop_α
n86_lit_integer_β:      mov              r11, 79
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n84_statement_begin_β
.Llit_integer_α_285_0:  .quad            1
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_binop_bx, @function
n87_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:            sub              rsp, 16
                        mov              r11, 80
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_286_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_286_7
.Lbinop_α_286_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_286_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_286_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_286_4
.Lbinop_α_286_3:        movq             xmm0, rsi
.Lbinop_α_286_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_286_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_286_7:                                                              jmp   n88_assign_α
.Lbinop_α_286_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_286_240
                        add              rsp, 16;                             jmp   n86_lit_integer_β
.Lbinop_α_286_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n88_assign_α
n87_binop_β:            mov              r11, 80
                        add              rsp, 16;                             jmp   n86_lit_integer_β
                        .size            n87_binop_bx, .-n87_binop_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # count
                        mov              qword ptr [r9 + 136], rdx;           jmp   n89_statement_end_α
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 82
                        add              rsp, 48;                             jmp   n90_stmt_mark_α
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_stmt_mark_bx, @function
n90_stmt_mark_bx:
#=======================================================================================================================
#         tab[count] = word + 0                           :(parse)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n90_stmt_mark_α:        mov              r11, 83
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n91_statement_begin_α
                        .size            n90_stmt_mark_bx, .-n90_stmt_mark_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 84;                             jmp   n92_var_α
n91_statement_begin_β:  mov              r11, 84;                             jmp   n71_stmt_mark_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              r11, 85
                        mov              rax, qword ptr [r9 + 96]             # tab
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_var_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              r11, 86
                        mov              rax, qword ptr [r9 + 128]            # count
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_var_α
n93_var_β:              mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 48]             # word
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_lit_integer_α
n94_var_β:              mov              r11, 87
                        add              rsp, 16;                             jmp   n93_var_β
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
n95_lit_integer_β:      mov              r11, 88
                        add              rsp, 16;                             jmp   n94_var_β
.Llit_integer_α_297_0:  .quad            0
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_binop_bx, @function
n96_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              r11, 89
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_298_2
                        add              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_298_7
.Lbinop_α_298_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_298_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lbinop_α_298_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_298_4
.Lbinop_α_298_3:        movq             xmm0, rsi
.Lbinop_α_298_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_298_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_298_7:                                                              jmp   n97_assign_var_α
.Lbinop_α_298_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_298_240
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lbinop_α_298_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n97_assign_var_α
n96_binop_β:            mov              r11, 89
                        add              rsp, 16;                             jmp   n95_lit_integer_β
                        .size            n96_binop_bx, .-n96_binop_bx
                        .type            n97_assign_var_bx, @function
n97_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_var_α:       sub              rsp, 16
                        mov              r11, 90
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_300_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_300_0
.Lassign_var_α_300_1:   test             rsi, rsi;                            je    .Lassign_var_α_300_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_300_238
                        add              rsp, 16;                             jmp   n96_binop_β
.Lassign_var_α_300_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n98_statement_end_α
.Lassign_var_α_300_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_300_239
                        add              rsp, 16;                             jmp   n96_binop_β
.Lassign_var_α_300_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_300_240
                        add              rsp, 16;                             jmp   n96_binop_β
.Lassign_var_α_300_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n98_statement_end_α
                        .size            n97_assign_var_bx, .-n97_assign_var_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 91
                        add              rsp, 96;                             jmp   n71_stmt_mark_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_statement_begin_bx, @function
n99_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 92;                             jmp   n100_lit_integer_α
n99_statement_begin_β:  mov              r11, 92;                             jmp   n103_stmt_mark_α
                        .size            n99_statement_begin_bx, .-n99_statement_begin_bx
                        .type            n100_lit_integer_bx, @function
n100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:     sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_assign_α
.Llit_integer_α_305_0:  .quad            0
                        .size            n100_lit_integer_bx, .-n100_lit_integer_bx
                        .type            n101_assign_bx, @function
n101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # total
                        mov              qword ptr [r9 + 152], rdx;           jmp   n102_statement_end_α
                        .size            n101_assign_bx, .-n101_assign_bx
                        .type            n102_statement_end_bx, @function
n102_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 95
                        add              rsp, 16;                             jmp   n103_stmt_mark_α
                        .size            n102_statement_end_bx, .-n102_statement_end_bx
                        .type            n103_stmt_mark_bx, @function
n103_stmt_mark_bx:
#=======================================================================================================================
#         j = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n103_stmt_mark_α:       mov              r11, 96
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n104_statement_begin_α
                        .size            n103_stmt_mark_bx, .-n103_stmt_mark_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 97;                             jmp   n105_lit_integer_α
n104_statement_begin_β: mov              r11, 97;                             jmp   n108_stmt_mark_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_313_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_assign_α
.Llit_integer_α_313_0:  .quad            0
                        .size            n105_lit_integer_bx, .-n105_lit_integer_bx
                        .type            n106_assign_bx, @function
n106_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # j
                        mov              qword ptr [r9 + 168], rdx;           jmp   n107_statement_end_α
                        .size            n106_assign_bx, .-n106_assign_bx
                        .type            n107_statement_end_bx, @function
n107_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 100
                        add              rsp, 16;                             jmp   n108_stmt_mark_α
                        .size            n107_statement_end_bx, .-n107_statement_end_bx
                        .type            n108_stmt_mark_bx, @function
n108_stmt_mark_bx:
#=======================================================================================================================
# add     j = LT(j, count) j + 1                          :F(next)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n108_stmt_mark_α:       mov              r11, 101
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n109_statement_begin_α
                        .size            n108_stmt_mark_bx, .-n108_stmt_mark_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 102;                            jmp   n110_var_α
n109_statement_begin_β: mov              r11, 102;                            jmp   n121_stmt_mark_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 160]            # j
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_var_α
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 128]            # count
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_coerce_numeric_α
n111_var_β:             mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_coerce_numeric_bx, @function
n112_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 105
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_324_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_324_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_324_0
.Lcoerce_numeric_α_324_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_coerce_numeric_α
.Lcoerce_numeric_α_324_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
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
1:                                                                            jmp   n113_coerce_numeric_α
n112_coerce_numeric_β:  mov              r11, 105
                        add              rsp, 16;                             jmp   n111_var_β
                        .size            n112_coerce_numeric_bx, .-n112_coerce_numeric_bx
                        .type            n113_coerce_numeric_bx, @function
n113_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 106
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_326_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_326_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_326_0
.Lcoerce_numeric_α_326_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_cmp_test_α
.Lcoerce_numeric_α_326_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
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
1:                                                                            jmp   n114_cmp_test_α
n113_coerce_numeric_β:  mov              r11, 106
                        add              rsp, 16;                             jmp   n112_coerce_numeric_β
                        .size            n113_coerce_numeric_bx, .-n113_coerce_numeric_bx
                        .type            n114_cmp_test_bx, @function
n114_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_cmp_test_α:        sub              rsp, 16
                        mov              r11, 107
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_328_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_328_239
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
.Lcmp_test_α_328_239:                                                         jmp   n115_var_α
.Lcmp_test_α_328_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_328_240
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
.Lcmp_test_α_328_240:                                                         jmp   n115_var_α
n114_cmp_test_β:        mov              r11, 107
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
                        .size            n114_cmp_test_bx, .-n114_cmp_test_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              r11, 108
                        mov              rax, qword ptr [r9 + 160]            # j
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_lit_integer_α
n115_var_β:             mov              r11, 108
                        add              rsp, 16;                             jmp   n114_cmp_test_β
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_lit_integer_bx, @function
n116_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     sub              rsp, 16
                        mov              r11, 109
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_330_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_binop_α
n116_lit_integer_β:     mov              r11, 109
                        add              rsp, 16;                             jmp   n115_var_β
.Llit_integer_α_330_0:  .quad            1
                        .size            n116_lit_integer_bx, .-n116_lit_integer_bx
                        .type            n117_binop_bx, @function
n117_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_binop_α:           sub              rsp, 16
                        mov              r11, 110
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_331_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_331_7
.Lbinop_α_331_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_331_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_331_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_331_4
.Lbinop_α_331_3:        movq             xmm0, rsi
.Lbinop_α_331_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_331_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_331_7:                                                              jmp   n118_assign_α
.Lbinop_α_331_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_331_240
                        add              rsp, 16;                             jmp   n116_lit_integer_β
.Lbinop_α_331_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n118_assign_α
n117_binop_β:           mov              r11, 110
                        add              rsp, 16;                             jmp   n116_lit_integer_β
                        .size            n117_binop_bx, .-n117_binop_bx
                        .type            n118_assign_bx, @function
n118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # j
                        mov              qword ptr [r9 + 168], rdx;           jmp   n119_statement_end_α
                        .size            n118_assign_bx, .-n118_assign_bx
                        .type            n119_statement_end_bx, @function
n119_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_end_α:   mov              r11, 112
                        add              rsp, 128;                            jmp   n120_stmt_mark_α
                        .size            n119_statement_end_bx, .-n119_statement_end_bx
                        .type            n120_stmt_mark_bx, @function
n120_stmt_mark_bx:
#=======================================================================================================================
#         total = total + tab[j]                          :(add)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n120_stmt_mark_α:       mov              r11, 113
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n122_statement_begin_α
                        .size            n120_stmt_mark_bx, .-n120_stmt_mark_bx
                        .type            n121_stmt_mark_bx, @function
n121_stmt_mark_bx:
#=======================================================================================================================
# next    grand = grand + total + rsum(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n121_stmt_mark_α:       mov              r11, 114
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n130_statement_begin_α
                        .size            n121_stmt_mark_bx, .-n121_stmt_mark_bx
                        .type            n122_statement_begin_bx, @function
n122_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 115;                            jmp   n123_var_α
n122_statement_begin_β: mov              r11, 115;                            jmp   n108_stmt_mark_α
                        .size            n122_statement_begin_bx, .-n122_statement_begin_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 116
                        mov              rax, qword ptr [r9 + 144]            # total
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_var_α
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_var_bx, @function
n124_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 96]             # tab
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n125_var_α
n124_var_β:             mov              r11, 117
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
                        .size            n124_var_bx, .-n124_var_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 160]            # j
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_subscript_α
n125_var_β:             mov              r11, 118
                        add              rsp, 16;                             jmp   n124_var_β
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_subscript_bx, @function
n126_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_subscript_α:       sub              rsp, 16
                        mov              r11, 119
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_344_240
                        add              rsp, 16;                             jmp   n125_var_β
.Lsubscript_α_344_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n127_binop_α
n126_subscript_β:       mov              r11, 119
                        add              rsp, 16;                             jmp   n125_var_β
                        .size            n126_subscript_bx, .-n126_subscript_bx
                        .type            n127_binop_bx, @function
n127_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_binop_α:           sub              rsp, 16
                        mov              r11, 120
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_345_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_345_7
.Lbinop_α_345_2:        and              edx, 1;                              jz    .Lbinop_α_345_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_345_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_345_4
.Lbinop_α_345_3:        movq             xmm0, rsi
.Lbinop_α_345_4:        cmp              cl, 5;                               je    .Lbinop_α_345_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_345_6
.Lbinop_α_345_5:        movq             xmm1, rdi
.Lbinop_α_345_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_345_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_345_7:                                                              jmp   n128_assign_α
.Lbinop_α_345_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_345_240
                        add              rsp, 16;                             jmp   n126_subscript_β
.Lbinop_α_345_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n128_assign_α
n127_binop_β:           mov              r11, 120
                        add              rsp, 16;                             jmp   n126_subscript_β
                        .size            n127_binop_bx, .-n127_binop_bx
                        .type            n128_assign_bx, @function
n128_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # total
                        mov              qword ptr [r9 + 152], rdx;           jmp   n129_statement_end_α
                        .size            n128_assign_bx, .-n128_assign_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 122
                        add              rsp, 80;                             jmp   n108_stmt_mark_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_statement_begin_bx, @function
n130_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 123;                            jmp   n131_var_α
n130_statement_begin_β: mov              r11, 123;                            jmp   n139_stmt_mark_α
                        .size            n130_statement_begin_bx, .-n130_statement_begin_bx
                        .type            n131_var_bx, @function
n131_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 64]             # grand
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n132_var_α
                        .size            n131_var_bx, .-n131_var_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 144]            # total
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_binop_α
n132_var_β:             mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n130_statement_begin_β
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_binop_bx, @function
n133_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_binop_α:           sub              rsp, 16
                        mov              r11, 126
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_353_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_353_7
.Lbinop_α_353_2:        and              edx, 1;                              jz    .Lbinop_α_353_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_353_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_353_4
.Lbinop_α_353_3:        movq             xmm0, rsi
.Lbinop_α_353_4:        cmp              cl, 5;                               je    .Lbinop_α_353_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_353_6
.Lbinop_α_353_5:        movq             xmm1, rdi
.Lbinop_α_353_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_353_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_353_7:                                                              jmp   n134_lit_integer_α
.Lbinop_α_353_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_353_240
                        add              rsp, 16;                             jmp   n132_var_β
.Lbinop_α_353_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n134_lit_integer_α
n133_binop_β:           mov              r11, 126
                        add              rsp, 16;                             jmp   n132_var_β
                        .size            n133_binop_bx, .-n133_binop_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_call_α
n134_lit_integer_β:     mov              r11, 127
                        add              rsp, 16;                             jmp   n133_binop_β
.Llit_integer_α_354_0:  .quad            10
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_call_bx, @function
n135_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            sub              rsp, 16
                        mov              r11, 128
                        lea              rcx, [rip + .Lcall_α_sig356z]
                        lea              rax, [rip + rsum_α];                 jmp   rax
.Lcall_α_sig356z:       .quad            1
                        .quad            .Lcall_α_356_2
                        .quad            .Lcall_α_356_2
                        .quad            16
.Lcall_α_356_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_356_29
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
.Lcall_α_356_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_356_240
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lcall_α_356_240:                                                             jmp   n136_binop_α
n135_call_β:            mov              r11, 128;                            jmp   n134_lit_integer_β
.Lcall_β_356_0:         .quad            .Lcall_β_356_0_s
.Lcall_β_356_0_s:       .string          "rsum"
                        .size            n135_call_bx, .-n135_call_bx
                        .type            n136_binop_bx, @function
n136_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_binop_α:           sub              rsp, 16
                        mov              r11, 129
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_357_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_357_7
.Lbinop_α_357_2:        and              edx, 1;                              jz    .Lbinop_α_357_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_357_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_357_4
.Lbinop_α_357_3:        movq             xmm0, rsi
.Lbinop_α_357_4:        cmp              cl, 5;                               je    .Lbinop_α_357_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_357_6
.Lbinop_α_357_5:        movq             xmm1, rdi
.Lbinop_α_357_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_357_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_357_7:                                                              jmp   n137_assign_α
.Lbinop_α_357_0:        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_357_240
                        add              rsp, 32;                             jmp   n134_lit_integer_β
.Lbinop_α_357_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n137_assign_α
n136_binop_β:           mov              r11, 129
                        add              rsp, 32;                             jmp   n134_lit_integer_β
                        .size            n136_binop_bx, .-n136_binop_bx
                        .type            n137_assign_bx, @function
n137_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # grand
                        mov              qword ptr [r9 + 72], rdx;            jmp   n138_statement_end_α
                        .size            n137_assign_bx, .-n137_assign_bx
                        .type            n138_statement_end_bx, @function
n138_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 131
                        add              rsp, 96;                             jmp   n139_stmt_mark_α
                        .size            n138_statement_end_bx, .-n138_statement_end_bx
                        .type            n139_stmt_mark_bx, @function
n139_stmt_mark_bx:
#=======================================================================================================================
#         pass = LT(pass, 20) pass + 1                    :S(record)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n139_stmt_mark_α:       mov              r11, 132
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n140_statement_begin_α
                        .size            n139_stmt_mark_bx, .-n139_stmt_mark_bx
                        .type            n140_statement_begin_bx, @function
n140_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_statement_begin_α: mov              r11, 133;                            jmp   n141_var_α
n140_statement_begin_β: mov              r11, 133;                            jmp   n151_stmt_mark_α
                        .size            n140_statement_begin_bx, .-n140_statement_begin_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 134
                        mov              rax, qword ptr [r9 + 80]             # pass
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_lit_integer_α
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_366_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_coerce_numeric_α
n142_lit_integer_β:     mov              r11, 135
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
.Llit_integer_α_366_0:  .quad            20
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_coerce_numeric_bx, @function
n143_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 136
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_368_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_368_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_368_0
.Lcoerce_numeric_α_368_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_coerce_numeric_α
.Lcoerce_numeric_α_368_0:
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
1:                                                                            jmp   n144_coerce_numeric_α
n143_coerce_numeric_β:  mov              r11, 136
                        add              rsp, 16;                             jmp   n142_lit_integer_β
                        .size            n143_coerce_numeric_bx, .-n143_coerce_numeric_bx
                        .type            n144_coerce_numeric_bx, @function
n144_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 137
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_370_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_370_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_370_0
.Lcoerce_numeric_α_370_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_cmp_test_α
.Lcoerce_numeric_α_370_0:
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
1:                                                                            jmp   n145_cmp_test_α
n144_coerce_numeric_β:  mov              r11, 137
                        add              rsp, 16;                             jmp   n143_coerce_numeric_β
                        .size            n144_coerce_numeric_bx, .-n144_coerce_numeric_bx
                        .type            n145_cmp_test_bx, @function
n145_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_cmp_test_α:        sub              rsp, 16
                        mov              r11, 138
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_372_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_372_239
                        add              rsp, 16;                             jmp   n144_coerce_numeric_β
.Lcmp_test_α_372_239:                                                         jmp   n146_var_α
.Lcmp_test_α_372_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_372_240
                        add              rsp, 16;                             jmp   n144_coerce_numeric_β
.Lcmp_test_α_372_240:                                                         jmp   n146_var_α
n145_cmp_test_β:        mov              r11, 138
                        add              rsp, 16;                             jmp   n144_coerce_numeric_β
                        .size            n145_cmp_test_bx, .-n145_cmp_test_bx
                        .type            n146_var_bx, @function
n146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 80]             # pass
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_lit_integer_α
n146_var_β:             mov              r11, 139
                        add              rsp, 16;                             jmp   n145_cmp_test_β
                        .size            n146_var_bx, .-n146_var_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_binop_α
n147_lit_integer_β:     mov              r11, 140
                        add              rsp, 16;                             jmp   n146_var_β
.Llit_integer_α_374_0:  .quad            1
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_binop_bx, @function
n148_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_binop_α:           sub              rsp, 16
                        mov              r11, 141
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_375_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_375_7
.Lbinop_α_375_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_375_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_375_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_375_4
.Lbinop_α_375_3:        movq             xmm0, rsi
.Lbinop_α_375_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_375_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_375_7:                                                              jmp   n149_assign_α
.Lbinop_α_375_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_375_240
                        add              rsp, 16;                             jmp   n147_lit_integer_β
.Lbinop_α_375_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n149_assign_α
n148_binop_β:           mov              r11, 141
                        add              rsp, 16;                             jmp   n147_lit_integer_β
                        .size            n148_binop_bx, .-n148_binop_bx
                        .type            n149_assign_bx, @function
n149_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_assign_α:          mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # pass
                        mov              qword ptr [r9 + 88], rdx;            jmp   n150_statement_end_α
                        .size            n149_assign_bx, .-n149_assign_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 143
                        add              rsp, 128;                            jmp   n55_stmt_mark_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_stmt_mark_bx, @function
n151_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = '20 records = ' grand
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n151_stmt_mark_α:       mov              r11, 144
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n152_statement_begin_α
                        .size            n151_stmt_mark_bx, .-n151_stmt_mark_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 145;                            jmp   n153_lit_string_α
n152_statement_begin_β: mov              r11, 145;                            jmp   main_γ
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_lit_string_bx, @function
n153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_string_α:      sub              rsp, 16
                        mov              r11, 146
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_var_α
.Llit_string_α_383_0:   .quad            .Llit_string_α_383_0_s
.Llit_string_α_383_0_s: .string          "20 records = "
                        .size            n153_lit_string_bx, .-n153_lit_string_bx
                        .type            n154_var_bx, @function
n154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              r11, 147
                        mov              rax, qword ptr [r9 + 64]             # grand
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_binop_α
n154_var_β:             mov              r11, 147
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n152_statement_begin_β
                        .size            n154_var_bx, .-n154_var_bx
                        .type            n155_binop_bx, @function
n155_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_binop_α:           sub              rsp, 16
                        mov              r11, 148
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n156_assign_α
n155_binop_β:           mov              r11, 148
                        add              rsp, 16;                             jmp   n154_var_β
                        .size            n155_binop_bx, .-n155_binop_bx
                        .type            n156_assign_bx, @function
n156_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              r11, 149
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_386_0]
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
1:                                                                            jmp   n157_statement_end_α
.Lassign_α_386_0:       .quad            .Lassign_α_386_0_s
.Lassign_α_386_0_s:     .string          "OUTPUT"
                        .size            n156_assign_bx, .-n156_assign_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 150
                        add              rsp, 48;                             jmp   main_γ
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_goto_bx, @function
n158_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_goto_α:            mov              r11, 151;                            jmp   LBL__rsum
n158_goto_β:            mov              r11, 151;                            jmp   main_ω
                        .size            n158_goto_bx, .-n158_goto_bx
                        .type            n159_stmt_mark_bx, @function
n159_stmt_mark_bx:
#=======================================================================================================================
# rsum    rsum = EQ(n, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
LBL__rsum:              mov              r11, 152
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n21_statement_begin_α
                        .size            n159_stmt_mark_bx, .-n159_stmt_mark_bx
                        .type            n160_goto_bx, @function
n160_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_goto_α:            mov              r11, 153;                            jmp   n20_stmt_mark_α
n160_goto_β:            mov              r11, 153;                            jmp   main_ω
                        .size            n160_goto_bx, .-n160_goto_bx
                        .type            n161_goto_bx, @function
n161_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_goto_α:            mov              r11, 154;                            jmp   n55_stmt_mark_α
n161_goto_β:            mov              r11, 154;                            jmp   main_ω
                        .size            n161_goto_bx, .-n161_goto_bx
                        .type            n162_goto_bx, @function
n162_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_goto_α:            mov              r11, 155;                            jmp   n71_stmt_mark_α
n162_goto_β:            mov              r11, 155;                            jmp   main_ω
                        .size            n162_goto_bx, .-n162_goto_bx
                        .type            n163_goto_bx, @function
n163_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_goto_α:            mov              r11, 156;                            jmp   n83_stmt_mark_α
n163_goto_β:            mov              r11, 156;                            jmp   main_ω
                        .size            n163_goto_bx, .-n163_goto_bx
                        .type            n164_goto_bx, @function
n164_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_goto_α:            mov              r11, 157;                            jmp   n108_stmt_mark_α
n164_goto_β:            mov              r11, 157;                            jmp   main_ω
                        .size            n164_goto_bx, .-n164_goto_bx
                        .type            n165_goto_bx, @function
n165_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_goto_α:            mov              r11, 158;                            jmp   n121_stmt_mark_α
n165_goto_β:            mov              r11, 158;                            jmp   main_ω
                        .size            n165_goto_bx, .-n165_goto_bx
                        .type            n166_define_bx, @function
n166_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 159
                        mov              edi, 1
                        call             qword ptr [rip + rt_kw_set_rtntype_role@GOTPCREL]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n166_define_bx, .-n166_define_bx
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
                        .quad            5842501979482
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1344
                        .quad            7
                        .quad            474989023199232
                        .quad            8800387989936
                        .quad            17600775979448
                        .quad            61576946123208
                        .quad            35184372089344
                        .quad            17596481012256
                        .quad            862017116176944
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__rsum"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__rsum
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1344
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "rsum"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            rsum_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + rsum_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "PAT$0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
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
                        lea              rdi, [rip + .Lstartup_prec2]
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
.S0:                    .string          "word"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
