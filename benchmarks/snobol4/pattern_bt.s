                        .intel_syntax    noprefix
                        .text
                        .file            1 "pattern_bt.sno"
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
                        .type            n0_match_alternate_bx, @function
n0_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_alternate_α:   mov              r11, 1
                        mov              dword ptr [rbp + -104], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_9_21]
                        mov              qword ptr [rbp + -88], rax;          jmp   n7_match_lit_α
.Lmatch_alternate_α_9_21:
                        lea              rax, [rip + .Lmatch_alternate_α_9_22]
                        mov              qword ptr [rbp + -88], rax;          jmp   n6_match_lit_α
.Lmatch_alternate_α_9_22:
                        lea              rax, [rip + .Lmatch_alternate_α_9_23]
                        mov              qword ptr [rbp + -88], rax;          jmp   n5_match_lit_α
.Lmatch_alternate_α_9_23:
                        lea              rax, [rip + .Lmatch_alternate_α_9_19]
                        mov              qword ptr [rbp + -88], rax;          jmp   n4_match_lit_α
.Lmatch_alternate_γ_0_s0:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_40]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s1:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_41]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s2:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_42]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_γ_0_s3:
                        mov              r11, 1
                        lea              rax, [rip + .Lmatch_alternate_α_9_43]
                        mov              qword ptr [rbp + -96], rax;          jmp   .Lmatch_alternate_γ_0_as
.Lmatch_alternate_α_9_40:
                                                                              jmp   n7_match_lit_β
.Lmatch_alternate_α_9_41:
                                                                              jmp   n6_match_lit_β
.Lmatch_alternate_α_9_42:
                                                                              jmp   n5_match_lit_β
.Lmatch_alternate_α_9_43:
                                                                              jmp   n4_match_lit_β
.Lmatch_alternate_γ_0_as:
                        mov              r11, 1;                              jmp   n1_match_assign_save_α
n0_match_alternate_β:   mov              r11, 1
                        mov              rax, qword ptr [rbp + -96];          jmp   rax
.Lmatch_alternate_γ_0_af:
                        mov              r11, 1
.Lmatch_alternate_ω_0_af:
                        mov              r11, 1
                        mov              r14d, dword ptr [rbp + -104]
                        mov              rax, qword ptr [rbp + -88];          jmp   rax
.Lmatch_alternate_α_9_19:
                                                                              jmp   PAT$0_ω
                        .size            n0_match_alternate_bx, .-n0_match_alternate_bx
                        .type            n1_match_assign_save_bx, @function
n1_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_assign_save_α: sub              rsp, 16
                        mov              r11, 2
                        mov              dword ptr [rsp + 0], r14d;           jmp   n2_match_span_α
n1_match_assign_save_β: mov              r11, 2
                        add              rsp, 16;                             jmp   n0_match_alternate_β
                        .size            n1_match_assign_save_bx, .-n1_match_assign_save_bx
                        .type            n2_match_span_bx, @function
n2_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_span_α:        sub              rsp, 16
                        mov              r11, 3
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lmatch_span_α_13_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_13_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_13_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_13_0
.Lmatch_span_α_13_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_13_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
.Lmatch_span_α_13_240:  mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n3_match_assign_cond_α
n2_match_span_β:        mov              r11, 3
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n0_match_alternate_β
                        .size            n2_match_span_bx, .-n2_match_span_bx
                        .type            n3_match_assign_cond_bx, @function
n3_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_cond_α: mov              r11, 4
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n3_match_assign_cond_β: mov              r11, 4
                        sub              r12, 24;                             jmp   n2_match_span_β
                        .size            n3_match_assign_cond_bx, .-n3_match_assign_cond_bx
                        .type            n4_match_lit_bx, @function
n4_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_lit_α:         mov              r11, 5
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 100;                            jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s3
n4_match_lit_β:         mov              r11, 5
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n4_match_lit_bx, .-n4_match_lit_bx
                        .type            n5_match_lit_bx, @function
n5_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_lit_α:         mov              r11, 6
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 99;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s2
n5_match_lit_β:         mov              r11, 6
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n5_match_lit_bx, .-n5_match_lit_bx
                        .type            n6_match_lit_bx, @function
n6_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:         mov              r11, 7
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 98;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s1
n6_match_lit_β:         mov              r11, 7
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n6_match_lit_bx, .-n6_match_lit_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jg    .Lmatch_alternate_ω_0_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 97;                             jne   .Lmatch_alternate_ω_0_af
                        add              r14d, 3;                             jmp   .Lmatch_alternate_γ_0_s0
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 3;                             jmp   .Lmatch_alternate_ω_0_af
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n3_match_assign_cond_β
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
                        .quad            15
                        .quad            8804682956696
                        .quad            8813272891296
                        .quad            8813272891304
                        .quad            8804682956720
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
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
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
                        call             rt_main_args_stage@PLT
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
.Lgvan0:                .string          "PATTERN_BT"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "PAT"
.Lgvan3:                .string          "W"
.Lgvan4:                .string          "SUB"
.Lgvan5:                .string          "ZI"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "PATTERN_BT"
.Llbln1:                .string          "ZBL"
.Llbln2:                .string          "PATTERN_BT_END"
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
                        mov              qword ptr [rsp + 728], rax
                        mov              dword ptr [rsp + 720], 160
                        mov              dword ptr [rsp + 724], 736
                        mov              eax, 0
main_α_body:
                        sub              rsp, 0
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_lit_integer_α
.Llit_integer_α_106_0:  .quad            18446744073709551615
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_lit_string_α
.Llit_integer_α_107_0:  .quad            0
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_lit_string_bx, @function
n26_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_108_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_call_α
.Llit_string_α_108_0:   .quad            .Llit_string_α_108_0_s
.Llit_string_α_108_0_s: .string          "pattern_bt.sno"
                        .size            n26_lit_string_bx, .-n26_lit_string_bx
                        .type            n27_call_bx, @function
n27_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             sub              rsp, 16
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
.Lcall_α_rkfnzd110:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd110]
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
                        cmp              al, 104;                             jne   .Lcall_α_109_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n28_stmt_mark_α
.Lcall_α_109_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:179
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_stmt_mark_α
n27_call_β:             mov              r11, 12
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n28_stmt_mark_α
                        .size            n27_call_bx, .-n27_call_bx
                        .type            n28_stmt_mark_bx, @function
n28_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_stmt_mark_α:        mov              r11, 13
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        add              rsp, 64;                             jmp   n29_statement_begin_α
                        .size            n28_stmt_mark_bx, .-n28_stmt_mark_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 14;                             jmp   n30_lit_integer_α
n29_statement_begin_β:  mov              r11, 14;                             jmp   n33_stmt_mark_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n31_kw_assign_snobol4_α
.Llit_integer_α_115_0:  .quad            1
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_kw_assign_snobol4_bx, @function
n31_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 16
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_116_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_116_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lkw_assign_snobol4_α_116_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_keyword_assign_snobol4.cpp:29
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_statement_end_α
.Lkw_assign_snobol4_α_116_0:
                        .quad            1
                        .size            n31_kw_assign_snobol4_bx, .-n31_kw_assign_snobol4_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 17
                        add              rsp, 32;                             jmp   n33_stmt_mark_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_stmt_mark_bx, @function
n33_stmt_mark_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n33_stmt_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n34_statement_begin_α
                        .size            n33_stmt_mark_bx, .-n33_stmt_mark_bx
                        .type            n34_statement_begin_bx, @function
n34_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 19;                             jmp   n35_lit_integer_α
n34_statement_begin_β:  mov              r11, 19;                             jmp   n38_stmt_mark_α
                        .size            n34_statement_begin_bx, .-n34_statement_begin_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_kw_assign_snobol4_α
.Llit_integer_α_123_0:  .quad            0
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_kw_assign_snobol4_bx, @function
n36_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 21
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_124_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_124_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Lkw_assign_snobol4_α_124_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_keyword_assign_snobol4.cpp:29
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_statement_end_α
.Lkw_assign_snobol4_α_124_0:
                        .quad            0
                        .size            n36_kw_assign_snobol4_bx, .-n36_kw_assign_snobol4_bx
                        .type            n37_statement_end_bx, @function
n37_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 22
                        add              rsp, 32;                             jmp   n38_stmt_mark_α
                        .size            n37_statement_end_bx, .-n37_statement_end_bx
                        .type            n38_stmt_mark_bx, @function
n38_stmt_mark_bx:
#=======================================================================================================================
#         PAT = ('aaa' | 'bbb' | 'ccc' | 'ddd') SPAN('abcd') . W
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n38_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n39_statement_begin_α
                        .size            n38_stmt_mark_bx, .-n38_stmt_mark_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 24;                             jmp   n40_lit_string_α
n39_statement_begin_β:  mov              r11, 24;                             jmp   n44_stmt_mark_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_call_α
.Llit_string_α_131_0:   .quad            .Llit_string_α_131_0_s
.Llit_string_α_131_0_s: .string          "PAT$0"
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
                        mov              r11, 26
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd133:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd133]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 606260
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_bid_sn4@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_132_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
.Lcall_α_132_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_call_fn.cpp:179
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_assign_α
n41_call_β:             mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_assign_bx, @function
n42_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # PAT
                        mov              qword ptr [r9 + 40], rdx;            jmp   n43_statement_end_α
                        .size            n42_assign_bx, .-n42_assign_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 28
                        add              rsp, 32;                             jmp   n44_stmt_mark_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_stmt_mark_bx, @function
n44_stmt_mark_bx:
#=======================================================================================================================
#         SUB = 'xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n44_stmt_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n45_statement_begin_α
                        .size            n44_stmt_mark_bx, .-n44_stmt_mark_bx
                        .type            n45_statement_begin_bx, @function
n45_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_begin_α:  mov              r11, 30;                             jmp   n46_lit_string_α
n45_statement_begin_β:  mov              r11, 30;                             jmp   n49_stmt_mark_α
                        .size            n45_statement_begin_bx, .-n45_statement_begin_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 50
                        mov              rax, qword ptr [rip + .Llit_string_α_141_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_assign_α
.Llit_string_α_141_0:   .quad            .Llit_string_α_141_0_s
.Llit_string_α_141_0_s: .string          "xxxxxxxxxxbbbccccddddaaaaxxxxxxxxxxbbbccccddddaaaa"
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # SUB
                        mov              qword ptr [r9 + 72], rdx;            jmp   n48_statement_end_α
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 33
                        add              rsp, 16;                             jmp   n49_stmt_mark_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_stmt_mark_bx, @function
n49_stmt_mark_bx:
#=======================================================================================================================
#         DEFINE('PATTERN_BT(N)')                         :(PATTERN_BT_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n49_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n50_statement_begin_α
                        .size            n49_stmt_mark_bx, .-n49_stmt_mark_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 35;                             jmp   n51_define_α
n50_statement_begin_β:  mov              r11, 35;                             jmp   n53_stmt_mark_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_define_bx, @function
n51_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_define_α:           mov              r11, 36
                        mov              rdi, qword ptr [rip + .Ldefine_α_150_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_150_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + LBL__PATTERN_BT]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_define.cpp:429
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_150_0]
                        lea              rsi, [rip + PATTERN_BT_α]
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
entry_cell$PATTERN_BT:  .quad            LBL__PATTERN_BT
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rax, [rip + LBL__PATTERN_BT]
                        mov              rcx, qword ptr [rip + entry_cell$PATTERN_BT@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n52_statement_end_α
n51_define_β:           mov              r11, 36;                             jmp   n50_statement_begin_β
.Ldefine_α_150_0:       .quad            .Ldefine_α_150_0_s
.Ldefine_α_150_0_s:     .string          "PATTERN_BT"
.Ldefine_α_150_1:       .quad            .Ldefine_α_150_1_s
.Ldefine_α_150_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_151_245
#-----------------------------------------------------------------------------------------------------------------------
PATTERN_BT_α:           sub              rsp, 64
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 0]              # PATTERN_BT
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_151_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_151_41
.Ldefine_α_151_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_151_41:      push             rcx
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
                        pop              rcx;                                 jmp   .Ldefine_α_151_231
.Ldefine_α_151_232:     .quad            .Ldefine_α_151_232_s
.Ldefine_α_151_232_s:   .string          "PATTERN_BT"
.Ldefine_α_151_231:     lea              rcx, [rip + PATTERN_BT_γ]
                        lea              rax, [rip + PATTERN_BT_ω]
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
                        mov              rax, qword ptr [rip + entry_cell$PATTERN_BT@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
PATTERN_BT_γ:           mov              rdi, qword ptr [r9 + 0]              # PATTERN_BT
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx;                                 jmp   .Ldefine_α_151_236
.Ldefine_α_151_237:     .quad            .Ldefine_α_151_237_s
.Ldefine_α_151_237_s:   .string          "PATTERN_BT"
.Ldefine_α_151_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_151_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_151_110
.Ldefine_α_151_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_151_110:     push             rcx
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
PATTERN_BT_ω:           mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # PATTERN_BT
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_151_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_151_180
.Ldefine_α_151_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_151_180:     push             rcx
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
.Ldefine_α_151_245:
                        .size            n51_define_bx, .-n51_define_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 37;                             jmp   n53_stmt_mark_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_stmt_mark_bx, @function
n53_stmt_mark_bx:
#=======================================================================================================================
# PATTERN_BT_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n53_stmt_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n84_statement_begin_α
                        .size            n53_stmt_mark_bx, .-n53_stmt_mark_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 39;                             jmp   n55_lit_integer_α
n54_statement_begin_β:  mov              r11, 39;                             jmp   n58_stmt_mark_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_lit_integer_bx, @function
n55_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 40
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_158_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
.Llit_integer_α_158_0:  .quad            1
                        .size            n55_lit_integer_bx, .-n55_lit_integer_bx
                        .type            n56_assign_bx, @function
n56_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 41
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n57_statement_end_α
                        .size            n56_assign_bx, .-n56_assign_bx
                        .type            n57_statement_end_bx, @function
n57_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 42
                        add              rsp, 16;                             jmp   n58_stmt_mark_α
                        .size            n57_statement_end_bx, .-n57_statement_end_bx
                        .type            n58_stmt_mark_bx, @function
n58_stmt_mark_bx:
#=======================================================================================================================
# ZBL     SUB ? PAT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n58_stmt_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n59_statement_begin_α
                        .size            n58_stmt_mark_bx, .-n58_stmt_mark_bx
                        .type            n59_statement_begin_bx, @function
n59_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 44;                             jmp   n60_var_α
n59_statement_begin_β:  mov              r11, 44;                             jmp   n67_stmt_mark_α
                        .size            n59_statement_begin_bx, .-n59_statement_begin_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 64]             # SUB
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_var_α
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 46
                        mov              rax, qword ptr [r9 + 32]             # PAT
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_assign_α
n61_var_β:              mov              r11, 46;                             jmp   n66_statement_end_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_assign_bx, @function
n62_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_168_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 16;                             jmp   n63_match_begin_α
n62_assign_β:           mov              r11, 47;                             jmp   n61_var_β
.Lassign_α_168_0:       .quad            .Lassign_α_168_0_s
.Lassign_α_168_0_s:     .string          "PATV$0"
                        .size            n62_assign_bx, .-n62_assign_bx
                        .type            n63_match_begin_bx, @function
n63_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_match_begin_α:      mov              r11, 48
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
                        mov              r13, rax
                        mov              r15, rdx
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_170_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_170_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n64_match_defer_α
n63_match_begin_β:      mov              r11, 48
.Lmatch_begin_α_170_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_170_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_170_1
                                                                              jmp   .Lmatch_begin_α_170_0
.Lmatch_begin_β_170_1:
.Lmatch_begin_γ_63_af:  mov              r11, 48
.Lmatch_begin_ω_63_af:  mov              r11, 48
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
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n62_assign_β
                        .size            n63_match_begin_bx, .-n63_match_begin_bx
                        .type            n64_match_defer_bx, @function
n64_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_defer_α:      mov              r11, 49
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_171_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_171_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_171_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_171_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_171_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_171_23
                                                                              jmp   .Lmatch_defer_α_171_22
.Lmatch_defer_α_171_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_171_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_171_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_171_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_171_0
.Lmatch_defer_α_171_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_171_0
.Lmatch_defer_α_171_22: sub              rsp, 32
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
                        test             rax, rax;                            je    .Lmatch_defer_α_171_50
                        mov              dword ptr [rsp + 32], 8
.Lmatch_defer_α_171_50: lea              rdi, [rsp + 0]
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
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
.Lmatch_defer_α_171_23: test             rax, rax;                            jz    .Lmatch_defer_α_171_0
.Lmatch_defer_α_171_48: mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_171_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_171_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_171_4:                                                        jmp   n65_match_end_α
.Lmatch_defer_α_171_5:                                                        jmp   n63_match_begin_β
.Lmatch_defer_α_171_0:  mov              eax, edx
                        cmp              eax, -2;                             jne   .Lmatch_defer_α_171_49
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_171_51
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_171_51: lea              rdi, [rsp + 0]
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
.Lmatch_defer_α_171_2:  test             rax, rax;                            je    .Lmatch_defer_α_171_3
                        cmp              rdx, 4;                              je    .Lmatch_defer_α_171_40
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
                        cmp              rcx, 2;                              je    .Lmatch_defer_α_171_41
                        cmp              rcx, 1;                              je    .Lmatch_defer_α_171_141
                        lea              rcx, [rip + .Lmatch_defer_α_171_43]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_171_42]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_171_42]
                        lea              rdx, [rip + .Lmatch_defer_α_171_43]; jmp   rax
.Lmatch_defer_α_171_41: sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_defer_α_171_44]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_defer_α_171_45]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_defer_α_171_44: add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_171_46
.Lmatch_defer_α_171_45: add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_171_47
.Lmatch_defer_α_171_42: add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_171_46
.Lmatch_defer_α_171_43: add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_171_47
.Lmatch_defer_α_171_141:
                        lea              rcx, [rip + .Lmatch_defer_α_171_143]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_171_142]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_171_142]
                        lea              rdx, [rip + .Lmatch_defer_α_171_143]
                                                                              jmp   rax
.Lmatch_defer_α_171_142:
                        add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_171_46
.Lmatch_defer_α_171_143:
                        add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_defer_α_171_47
.Lmatch_defer_α_171_46: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_171_52
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_171_52: lea              rdi, [rsp + 0]
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
                        add              rsp, 48;                             jmp   .Lmatch_defer_α_171_2
.Lmatch_defer_α_171_47: mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        cmp              rdx, 4;                              jne   .Lmatch_defer_α_171_53
                        mov              dword ptr [rsp + 16], 8
.Lmatch_defer_α_171_53: lea              rdi, [rsp + 0]
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
                        add              rsp, 48;                             jmp   .Lmatch_defer_α_171_2
.Lmatch_defer_α_171_40: mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              rdx, rax
                        mov              rax, qword ptr [rdx + 0];            jmp   .Lmatch_defer_α_171_48
.Lmatch_defer_α_171_3:  mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        mov              edi, r14d
                        call             qword ptr [rip + rt_defer_close@GOTPCREL]
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
.Lmatch_defer_α_171_49: test             eax, eax;                            js    n63_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_171_6]
                        push             rcx
                        push             rax;                                 jmp   n65_match_end_α
.Lmatch_defer_α_171_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n63_match_begin_β
n64_match_defer_β:      mov              r11, 49
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_171_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_171_12
                                                                              jmp   rax
.Lmatch_defer_β_171_12:                                                       jmp   qword ptr [rsp]
                        .size            n64_match_defer_bx, .-n64_match_defer_bx
                        .type            n65_match_end_bx, @function
n65_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_end_α:        mov              r11, 50
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
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rsi, r12
                        mov              rdx, r13
                        call             qword ptr [rip + rt_dcap_end_ok_open@GOTPCREL]
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
.Lmatch_end_α_173_1:    cmp              rax, 1;                              jbe   .Lmatch_end_α_173_2
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
                        cmp              rcx, 2;                              je    .Lmatch_end_α_173_20
                        cmp              rcx, 1;                              je    .Lmatch_end_α_173_120
                        lea              rcx, [rip + .Lmatch_end_α_173_22]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_173_21]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_173_21]
                        lea              rdx, [rip + .Lmatch_end_α_173_22];   jmp   rax
.Lmatch_end_α_173_20:   sub              rsp, 48
                        mov              qword ptr [rsp + 0], 0
                        lea              rcx, [rip + .Lmatch_end_α_173_23]
                        mov              qword ptr [rsp + 8], rcx
                        lea              rcx, [rip + .Lmatch_end_α_173_24]
                        mov              qword ptr [rsp + 16], rcx
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 16
                        lea              rcx, [rsp + 0];                      jmp   rax
.Lmatch_end_α_173_23:   add              rsp, 48
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_173_8
.Lmatch_end_α_173_24:   add              rsp, 48
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_173_9
.Lmatch_end_α_173_21:   add              rsp, 16
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_173_8
.Lmatch_end_α_173_22:   add              rsp, 16
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_173_9
.Lmatch_end_α_173_120:  lea              rcx, [rip + .Lmatch_end_α_173_122]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_173_121]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_end_α_173_121]
                        lea              rdx, [rip + .Lmatch_end_α_173_122];  jmp   rax
.Lmatch_end_α_173_121:  add              rsp, 0
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_173_8
.Lmatch_end_α_173_122:  add              rsp, 0
                        mov              rdi, qword ptr [rsp + 40]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        mov              rbx, qword ptr [rsp + 48]
                        mov              r12, qword ptr [rsp + 56]
                        add              rsp, 64;                             jmp   .Lmatch_end_α_173_9
.Lmatch_end_α_173_8:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 32;                             jmp   .Lmatch_end_α_173_1
.Lmatch_end_α_173_9:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_dcap_land_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 32;                             jmp   .Lmatch_end_α_173_1
.Lmatch_end_α_173_2:    mov              qword ptr [rsp + 0], rax
                        call             qword ptr [rip + rt_dcap_end_ok_close@GOTPCREL]
                        mov              rdi, qword ptr [rbp + -16]           # outer_Σ
                        mov              rsi, qword ptr [rbp + -32]           # outer_Δ
                        xor              edx, edx
                        call             qword ptr [rip + rt_match_ctx_restore@GOTPCREL]
                        mov              rax, qword ptr [rsp + 0]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              r14, qword ptr [rsp + 24]
                        add              rsp, 32
                        test             rax, rax;                            je    .Lmatch_end_α_173_13
                                                                              jmp   .Lmatch_begin_ω_63_af
.Lmatch_end_α_173_13:   mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n66_statement_end_α
                        .size            n65_match_end_bx, .-n65_match_end_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 51
                        add              rsp, 32;                             jmp   n67_stmt_mark_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_stmt_mark_bx, @function
n67_stmt_mark_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n67_stmt_mark_α:        mov              r11, 52
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n68_statement_begin_α
                        .size            n67_stmt_mark_bx, .-n67_stmt_mark_bx
                        .type            n68_statement_begin_bx, @function
n68_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 53;                             jmp   n69_var_α
n68_statement_begin_β:  mov              r11, 53;                             jmp   n79_stmt_mark_α
                        .size            n68_statement_begin_bx, .-n68_statement_begin_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_var_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_coerce_numeric_α
n70_var_β:              mov              r11, 55
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_coerce_numeric_bx, @function
n71_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 56
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_183_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_183_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_183_0
.Lcoerce_numeric_α_183_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_coerce_numeric_α
.Lcoerce_numeric_α_183_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_coerce_numeric_α
n71_coerce_numeric_β:   mov              r11, 56
                        add              rsp, 16;                             jmp   n70_var_β
                        .size            n71_coerce_numeric_bx, .-n71_coerce_numeric_bx
                        .type            n72_coerce_numeric_bx, @function
n72_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 57
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_185_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_185_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_185_0
.Lcoerce_numeric_α_185_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_cmp_test_α
.Lcoerce_numeric_α_185_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_coerce_numeric.cpp:45
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_cmp_test_α
n72_coerce_numeric_β:   mov              r11, 57
                        add              rsp, 16;                             jmp   n71_coerce_numeric_β
                        .size            n72_coerce_numeric_bx, .-n72_coerce_numeric_bx
                        .type            n73_cmp_test_bx, @function
n73_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_cmp_test_α:         sub              rsp, 16
                        mov              r11, 58
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_187_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_187_239
                        add              rsp, 16;                             jmp   n72_coerce_numeric_β
.Lcmp_test_α_187_239:                                                         jmp   n74_var_α
.Lcmp_test_α_187_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_187_240
                        add              rsp, 16;                             jmp   n72_coerce_numeric_β
.Lcmp_test_α_187_240:                                                         jmp   n74_var_α
n73_cmp_test_β:         mov              r11, 58
                        add              rsp, 16;                             jmp   n72_coerce_numeric_β
                        .size            n73_cmp_test_bx, .-n73_cmp_test_bx
                        .type            n74_var_bx, @function
n74_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_lit_integer_α
n74_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n73_cmp_test_β
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_binop_α
n75_lit_integer_β:      mov              r11, 60
                        add              rsp, 16;                             jmp   n74_var_β
.Llit_integer_α_189_0:  .quad            1
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_binop_bx, @function
n76_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_α:            sub              rsp, 16
                        mov              r11, 61
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_190_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_190_7
.Lbinop_α_190_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_190_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_190_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_190_4
.Lbinop_α_190_3:        movq             xmm0, rsi
.Lbinop_α_190_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_190_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_190_7:                                                              jmp   n77_assign_α
.Lbinop_α_190_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_190_240
                        add              rsp, 16;                             jmp   n75_lit_integer_β
.Lbinop_α_190_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_arith.cpp:242
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_assign_α
n76_binop_β:            mov              r11, 61
                        add              rsp, 16;                             jmp   n75_lit_integer_β
                        .size            n76_binop_bx, .-n76_binop_bx
                        .type            n77_assign_bx, @function
n77_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx;            jmp   n78_statement_end_α
                        .size            n77_assign_bx, .-n77_assign_bx
                        .type            n78_statement_end_bx, @function
n78_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    mov              r11, 63
                        add              rsp, 128;                            jmp   n58_stmt_mark_α
                        .size            n78_statement_end_bx, .-n78_statement_end_bx
                        .type            n79_stmt_mark_bx, @function
n79_stmt_mark_bx:
#=======================================================================================================================
#         PATTERN_BT = W                                  :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n79_stmt_mark_α:        mov              r11, 64
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n80_statement_begin_α
                        .size            n79_stmt_mark_bx, .-n79_stmt_mark_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 65;                             jmp   n81_var_α
n80_statement_begin_β:  mov              r11, 65;                             jmp   RETURN
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 48]             # W
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_assign_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # PATTERN_BT
                        mov              qword ptr [r9 + 8], rdx;             jmp   n83_statement_end_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 68
                        add              rsp, 16;                             jmp   RETURN
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 69;                             jmp   n85_statement_end_α
n84_statement_begin_β:  mov              r11, 69;                             jmp   n86_stmt_mark_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 70;                             jmp   n86_stmt_mark_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_stmt_mark_bx, @function
n86_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'subject = ' SUB
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n86_stmt_mark_α:        mov              r11, 71
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n87_statement_begin_α
                        .size            n86_stmt_mark_bx, .-n86_stmt_mark_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 72;                             jmp   n88_lit_string_α
n87_statement_begin_β:  mov              r11, 72;                             jmp   n93_stmt_mark_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_210_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_var_α
.Llit_string_α_210_0:   .quad            .Llit_string_α_210_0_s
.Llit_string_α_210_0_s: .string          "subject = "
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 74
                        mov              rax, qword ptr [r9 + 64]             # SUB
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_binop_α
n89_var_β:              mov              r11, 74
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_binop_bx, @function
n90_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              r11, 75
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_assign_α
n90_binop_β:            mov              r11, 75
                        add              rsp, 16;                             jmp   n89_var_β
                        .size            n90_binop_bx, .-n90_binop_bx
                        .type            n91_assign_bx, @function
n91_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 76
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_213_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 16;                             jmp   n92_statement_end_α
.Lassign_α_213_0:       .quad            .Lassign_α_213_0_s
.Lassign_α_213_0_s:     .string          "OUTPUT"
                        .size            n91_assign_bx, .-n91_assign_bx
                        .type            n92_statement_end_bx, @function
n92_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 77
                        add              rsp, 48;                             jmp   n93_stmt_mark_α
                        .size            n92_statement_end_bx, .-n92_statement_end_bx
                        .type            n93_stmt_mark_bx, @function
n93_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'captured tail = ' PATTERN_BT(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n93_stmt_mark_α:        mov              r11, 78
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n94_statement_begin_α
                        .size            n93_stmt_mark_bx, .-n93_stmt_mark_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 79;                             jmp   n95_lit_string_α
n94_statement_begin_β:  mov              r11, 79;                             jmp   main_γ
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_lit_string_bx, @function
n95_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_lit_integer_α
.Llit_string_α_220_0:   .quad            .Llit_string_α_220_0_s
.Llit_string_α_220_0_s: .string          "captured tail = "
                        .size            n95_lit_string_bx, .-n95_lit_string_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_call_α
n96_lit_integer_β:      mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
.Llit_integer_α_221_0:  .quad            1000
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 82
                        lea              rcx, [rip + .Lcall_α_sig223z]
                        lea              rax, [rip + PATTERN_BT_α];           jmp   rax
.Lcall_α_sig223z:       .quad            1
                        .quad            .Lcall_α_223_2
                        .quad            .Lcall_α_223_2
                        .quad            16
.Lcall_α_223_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_223_29
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
.Lcall_α_223_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_223_240
                        add              rsp, 16;                             jmp   n96_lit_integer_β
.Lcall_α_223_240:                                                             jmp   n98_binop_α
n97_call_β:             mov              r11, 82;                             jmp   n96_lit_integer_β
.Lcall_β_223_0:         .quad            .Lcall_β_223_0_s
.Lcall_β_223_0_s:       .string          "PATTERN_BT"
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_binop_bx, @function
n98_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            sub              rsp, 16
                        mov              r11, 83
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_binop_concat_slot.cpp:68
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_assign_α
n98_binop_β:            mov              r11, 83
                        add              rsp, 32;                             jmp   n96_lit_integer_β
                        .size            n98_binop_bx, .-n98_binop_bx
                        .type            n99_assign_bx, @function
n99_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              r11, 84
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_225_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        add              rsp, 16;                             jmp   n100_statement_end_α
.Lassign_α_225_0:       .quad            .Lassign_α_225_0_s
.Lassign_α_225_0_s:     .string          "OUTPUT"
                        .size            n99_assign_bx, .-n99_assign_bx
                        .type            n100_statement_end_bx, @function
n100_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 85
                        add              rsp, 64;                             jmp   main_γ
                        .size            n100_statement_end_bx, .-n100_statement_end_bx
                        .type            n101_goto_bx, @function
n101_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_goto_α:            mov              r11, 86;                             jmp   LBL__PATTERN_BT
n101_goto_β:            mov              r11, 86;                             jmp   main_ω
                        .size            n101_goto_bx, .-n101_goto_bx
                        .type            n102_stmt_mark_bx, @function
n102_stmt_mark_bx:
#=======================================================================================================================
# PATTERN_BT  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
LBL__PATTERN_BT:        mov              r11, 87
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n54_statement_begin_α
                        .size            n102_stmt_mark_bx, .-n102_stmt_mark_bx
                        .type            n103_goto_bx, @function
n103_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_goto_α:            mov              r11, 88;                             jmp   n58_stmt_mark_α
n103_goto_β:            mov              r11, 88;                             jmp   main_ω
                        .size            n103_goto_bx, .-n103_goto_bx
                        .type            n104_goto_bx, @function
n104_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_goto_α:            mov              r11, 89;                             jmp   n53_stmt_mark_α
n104_goto_β:            mov              r11, 89;                             jmp   main_ω
                        .size            n104_goto_bx, .-n104_goto_bx
                        .type            n105_define_bx, @function
n105_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 90
                        mov              edi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
                        .size            n105_define_bx, .-n105_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
                        mov              qword ptr [rip + rtccb+40], r8       # gc_poll bb_glue_flat.cpp:48
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            3162442386778
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            720
                        .quad            5
                        .quad            246290604621824
                        .quad            8800387989728
                        .quad            17600775979240
                        .quad            79169132167416
                        .quad            439804651110720
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "LBL__PATTERN_BT"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__PATTERN_BT
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            720
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala1:               .string          "PATTERN_BT"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            PATTERN_BT_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + PATTERN_BT_α@GOTPCREL]
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
                        .long            128
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
.S0:                    .string          "W"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .text
                        .section         .note.GNU-stack,"",@progbits
