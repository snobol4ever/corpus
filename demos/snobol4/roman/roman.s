                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/roman/roman.sno"
                        .file            2 "<included>"
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
                        mov              esi, 5
                        call             rt_label_table_install@PLT
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
.Lgvan0:                .string          "ROMAN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "UNITS"
.Lgvan3:                .string          "TEST"
.Lgvan4:                .string          "I"
.Lgvan5:                .string          "J"
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
.Llbln0:                .string          "ROMAN"
.Llbln1:                .string          "ROMAN_END"
.Llbln2:                .string          "TEST"
.Llbln3:                .string          "TEST_END"
.Llbln4:                .string          "END"
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
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
#       DEFINE('ROMAN(N)UNITS')  :(ROMAN_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_94_0:   .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_95_0:   .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 23
                        mov              rax, qword ptr [rip + .Llit_string_α_96_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_96_0:    .quad            .Llit_string_α_96_0_s
.Llit_string_α_96_0_s:  .string          "snobol4/roman/roman.sno"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_call_bx, @function
n3_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
                        mov              r11, 4
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lcall_α_rkfnzd98:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd98]
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
                        cmp              al, 104;                             jne   .Lcall_α_97_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
.Lcall_α_97_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_begin_α
n3_call_β:              mov              r11, 4
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_statement_begin_α
                        .size            n3_call_bx, .-n3_call_bx
                        .type            n4_statement_begin_bx, @function
n4_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 1;                              jmp   n5_define_α
n4_statement_begin_β:   mov              r11, 5
                        add              rsp, 64;                             jmp   n39_statement_begin_α
                        .size            n4_statement_begin_bx, .-n4_statement_begin_bx
                        .type            n5_define_bx, @function
n5_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_define_α:            mov              r11, 6
                        mov              rdi, qword ptr [rip + .Ldefine_α_102_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_102_1]
                        mov              edx, 2
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + ROMAN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_102_0]
                        lea              rsi, [rip + ROMAN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__ROMAN]
                        mov              rcx, qword ptr [rip + body_cell$ROMAN@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n6_statement_end_α
n5_define_β:            mov              r11, 6;                              jmp   n4_statement_begin_β
.Ldefine_α_102_0:       .quad            .Ldefine_α_102_0_s
.Ldefine_α_102_0_s:     .string          "ROMAN"
.Ldefine_α_102_1:       .quad            .Ldefine_α_102_1_s
.Ldefine_α_102_1_s:     .string          "N,UNITS"
                                                                              jmp   .Ldefine_α_103_245
#-----------------------------------------------------------------------------------------------------------------------
ROMAN_α:                sub              rsp, 80
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 56], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 32]             # UNITS
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              rax, qword ptr [r9 + 0]              # ROMAN
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 24], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 48], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_103_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_103_41
.Ldefine_α_103_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_103_41:      push             rcx
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_103_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_103_230
.Ldefine_α_103_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_103_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_103_230:                                                           jmp   .Ldefine_α_103_231
.Ldefine_α_103_232:     .quad            .Ldefine_α_103_232_s
.Ldefine_α_103_232_s:   .string          "ROMAN"
.Ldefine_α_103_231:     lea              rcx, [rip + ROMAN_γ]
                        lea              rax, [rip + ROMAN_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$ROMAN:        .quad            LBL__ROMAN
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$ROMAN@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
ROMAN_γ:                mov              rdi, qword ptr [r9 + 0]              # ROMAN
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_103_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_103_235
.Ldefine_α_103_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_103_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_103_235:                                                           jmp   .Ldefine_α_103_236
.Ldefine_α_103_237:     .quad            .Ldefine_α_103_237_s
.Ldefine_α_103_237_s:   .string          "ROMAN"
.Ldefine_α_103_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # UNITS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_103_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_103_110
.Ldefine_α_103_80:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_103_110:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
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
                        mov              qword ptr [r9 + 0], rax              # ROMAN
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # UNITS
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_103_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_103_180
.Ldefine_α_103_150:     mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_103_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_103_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_103_249
.Ldefine_α_103_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_103_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_103_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
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
                        mov              rdx, qword ptr [rsp + 56]
                        mov              dword ptr [rax + 0], edx
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_103_245:
                        .size            n5_define_bx, .-n5_define_bx
                        .type            n6_statement_end_bx, @function
n6_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:     mov              r11, 7
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n39_statement_begin_α
                        .size            n6_statement_end_bx, .-n6_statement_end_bx
                        .type            n7_statement_begin_bx, @function
n7_statement_begin_bx:
#=======================================================================================================================
# ROMAN N RPOS(1) LEN(1) . UNITS =  :F(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
LBL__ROMAN:             mov              r11, 8
                        mov              r10, 2;                              jmp   n8_var_α
n7_statement_begin_β:   mov              r11, 8;                              jmp   RETURN
                        .size            n7_statement_begin_bx, .-n7_statement_begin_bx
                        .type            n8_var_bx, @function
n8_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               sub              rsp, 16
                        mov              r11, 9
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n9_match_begin_α
                        .size            n8_var_bx, .-n8_var_bx
                        .type            n9_match_begin_bx, @function
n9_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_begin_α:       mov              r11, 10
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_110_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_110_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n10_match_rpos_α
n9_match_begin_β:       mov              r11, 10
.Lmatch_begin_α_110_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_110_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_110_1
                                                                              jmp   .Lmatch_begin_α_110_0
.Lmatch_begin_β_110_1:
.Lmatch_begin_γ_9_af:   mov              r11, 10
.Lmatch_begin_ω_9_af:   mov              r11, 10
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp
                        add              rsp, 16;                             jmp   RETURN
                        .size            n9_match_begin_bx, .-n9_match_begin_bx
                        .type            n10_match_rpos_bx, @function
n10_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_rpos_α:       mov              r11, 11
                        mov              rax, 1
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n9_match_begin_β
                                                                              jmp   n11_match_assign_save_α
n10_match_rpos_β:       mov              r11, 11;                             jmp   n9_match_begin_β
                        .size            n10_match_rpos_bx, .-n10_match_rpos_bx
                        .type            n11_match_assign_save_bx, @function
n11_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 12
                        mov              dword ptr [rsp + 0], r14d;           jmp   n12_match_len_α
n11_match_assign_save_β:
                        mov              r11, 12
                        add              rsp, 16;                             jmp   n9_match_begin_β
                        .size            n11_match_assign_save_bx, .-n11_match_assign_save_bx
                        .type            n12_match_len_bx, @function
n12_match_len_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_match_len_α:        mov              r11, 13
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lmatch_len_α_114_240
                        add              rsp, 16;                             jmp   n9_match_begin_β
.Lmatch_len_α_114_240:  add              r14d, 1;                             jmp   n13_match_assign_cond_α
n12_match_len_β:        mov              r11, 13
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n9_match_begin_β
                        .size            n12_match_len_bx, .-n12_match_len_bx
                        .type            n13_match_assign_cond_bx, @function
n13_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_match_assign_cond_α:
                        mov              r11, 14
                        mov              eax, dword ptr [rsp + 0]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n14_match_end_α
n13_match_assign_cond_β:
                        mov              r11, 14
                        sub              r12, 24;                             jmp   n12_match_len_β
                        .size            n13_match_assign_cond_bx, .-n13_match_assign_cond_bx
                        .type            n14_match_end_bx, @function
n14_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_match_end_α:        mov              r11, 15
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              eax, dword ptr [rbp + -40]           # repl_start
                        mov              dword ptr [rbp + -36], eax
                        mov              qword ptr [rbp + -56], r14           # repl_end
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmatch_end_α_118_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_9_af
.Lmatch_end_α_118_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              eax, dword ptr [rbp + -36]           # repl_start
                        mov              dword ptr [r12 + 0], eax
                        mov              rax, qword ptr [rbp + -56]           # repl_end
                        mov              qword ptr [r12 + 8], rax
                        add              r12, 16
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n15_lit_string_α
                        .size            n14_match_end_bx, .-n14_match_end_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       sub              rsp, 16
                        mov              r11, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n16_match_replace_α
.Llit_string_α_119_0:   .quad            .Llit_string_α_119_0_s
.Llit_string_α_119_0_s: .string          ""
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_match_replace_bx, @function
n16_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_match_replace_α:    mov              r11, 17
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_121_0]
                        mov              rsi, qword ptr [rsp + 16]            # var
                        mov              rdx, qword ptr [rsp + 24]
                        mov              ecx, dword ptr [r12 + -16]           # repl_start
                        mov              r8, qword ptr [r12 + -8]             # repl_end
                        sub              r12, 16
                        lea              r9, [rsp + 0]                        # lit_string
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_replace@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_121_1
.Lmatch_replace_α_121_0:
                        .quad            .Lmatch_replace_α_121_0_s
.Lmatch_replace_α_121_0_s:
                        .string          "N"
.Lmatch_replace_α_121_1:
                                                                              jmp   n17_statement_end_α
                        .size            n16_match_replace_bx, .-n16_match_replace_bx
                        .type            n17_statement_end_bx, @function
n17_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n18_statement_begin_α
                        .size            n17_statement_end_bx, .-n17_statement_end_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
#=======================================================================================================================
#       '0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,' UNITS BREAK(',') . UNITS  :F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 3 0
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 3;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   FRETURN
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 40
                        mov              rax, qword ptr [rip + .Llit_string_α_126_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_var_α
.Llit_string_α_126_0:   .quad            .Llit_string_α_126_0_s
.Llit_string_α_126_0_s: .string          "0,1I,2II,3III,4IV,5V,6VI,7VII,8VIII,9IX,"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              sub              rsp, 16
                        mov              r11, 21
                        mov              rax, qword ptr [r9 + 32]             # UNITS
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n21_assign_α
n20_var_β:              mov              r11, 21
                        add              rsp, 16
                        add              rsp, 16;                             jmp   FRETURN
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_128_0]
                        .section         .rodata
.Lassign_α_128_1_s:     .string          "snobol4/roman/roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_128_1_s]
                        mov              r8, 3
                        mov              r9, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_128_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_match_begin_α
n21_assign_β:           mov              r11, 22;                             jmp   n20_var_β
.Lassign_α_128_0:       .quad            .Lassign_α_128_0_s
.Lassign_α_128_0_s:     .string          "PATV$0"
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_match_begin_bx, @function
n22_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_match_begin_α:      mov              r11, 23
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
                        mov              rsi, qword ptr [rsp + 24]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lmatch_begin_α_130_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_130_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n23_match_defer_α
n22_match_begin_β:      mov              r11, 23
.Lmatch_begin_α_130_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_130_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_130_1
                                                                              jmp   .Lmatch_begin_α_130_0
.Lmatch_begin_β_130_1:
.Lmatch_begin_γ_22_af:  mov              r11, 23
.Lmatch_begin_ω_22_af:  mov              r11, 23
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n21_assign_β
                        .size            n22_match_begin_bx, .-n22_match_begin_bx
                        .type            n23_match_defer_bx, @function
n23_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_match_defer_α:      mov              r11, 24
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_131_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_131_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_131_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_131_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_131_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_131_23
                                                                              jmp   .Lmatch_defer_α_131_22
.Lmatch_defer_α_131_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_131_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_131_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_131_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_131_0
.Lmatch_defer_α_131_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_131_0
.Lmatch_defer_α_131_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S1]
                        mov              esi, r14d
                        mov              rdx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
.Lmatch_defer_α_131_23: test             rax, rax;                            jz    .Lmatch_defer_α_131_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lmatch_defer_α_131_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_131_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_131_4:                                                        jmp   n24_match_assign_save_α
.Lmatch_defer_α_131_5:                                                        jmp   n22_match_begin_β
.Lmatch_defer_α_131_0:  mov              eax, edx
                        test             eax, eax;                            js    n22_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_131_6]
                        push             rcx
                        push             rax;                                 jmp   n24_match_assign_save_α
.Lmatch_defer_α_131_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n22_match_begin_β
n23_match_defer_β:      mov              r11, 24
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_131_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_131_12
                                                                              jmp   rax
.Lmatch_defer_β_131_12:                                                       jmp   qword ptr [rsp]
                        .size            n23_match_defer_bx, .-n23_match_defer_bx
                        .type            n24_match_assign_save_bx, @function
n24_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 25
                        mov              dword ptr [rsp + 0], r14d;           jmp   n25_match_break_α
n24_match_assign_save_β:
                        mov              r11, 25
                        add              rsp, 16;                             jmp   n23_match_defer_β
                        .size            n24_match_assign_save_bx, .-n24_match_assign_save_bx
                        .type            n25_match_break_bx, @function
n25_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_match_break_α:      sub              rsp, 16
                        mov              r11, 26
                        movsxd           rcx, r14d
.Lmatch_break_α_135_0:  cmp              ecx, r15d;                           jl    .Lmatch_break_α_135_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_match_defer_β
.Lmatch_break_α_135_240:
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_135_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_135_0
.Lmatch_break_α_135_1:  mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n26_match_assign_cond_α
n25_match_break_β:      mov              r11, 26
                        mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_match_defer_β
                        .size            n25_match_break_bx, .-n25_match_break_bx
                        .type            n26_match_assign_cond_bx, @function
n26_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_match_assign_cond_α:
                        mov              r11, 27
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n27_match_end_α
n26_match_assign_cond_β:
                        mov              r11, 27
                        sub              r12, 24;                             jmp   n25_match_break_β
                        .size            n26_match_assign_cond_bx, .-n26_match_assign_cond_bx
                        .type            n27_match_end_bx, @function
n27_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_match_end_α:        mov              r11, 28
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -8]            # cas_mark
                        mov              rax, qword ptr [rbp + -32]           # outer_Δ
                        mov              rcx, qword ptr [rbp + -16]           # outer_Σ
                        push             rax
                        push             rcx
                        lea              rcx, [rsp + 0]
                        mov              rsi, r12
                        mov              rdx, r13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmatch_end_α_139_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_22_af
.Lmatch_end_α_139_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n28_statement_end_α
                        .size            n27_match_end_bx, .-n27_match_end_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        mov              r10, 3
                        add              rsp, 32;                             jmp   n29_statement_begin_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#=======================================================================================================================
#       ROMAN = REPLACE(ROMAN(N),'IVXLCDM','XLCDM**') UNITS  :S(RETURN)F(FRETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n29_statement_begin_α:  mov              r11, 30
                        mov              r10, 4;                              jmp   n30_var_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   FRETURN
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_call_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_call_bx, @function
n31_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             sub              rsp, 16
                        mov              r11, 32
                        lea              rcx, [rip + .Lcall_α_sig146z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig146z:       .quad            1
                        .quad            .Lcall_α_146_2
                        .quad            .Lcall_α_146_2
                        .quad            16
.Lcall_α_146_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_146_29
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
.Lcall_α_146_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_146_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
.Lcall_α_146_240:                                                             jmp   n32_lit_string_α
n31_call_β:             mov              r11, 32;                             jmp   n29_statement_begin_β
.Lcall_β_146_0:         .quad            .Lcall_β_146_0_s
.Lcall_β_146_0_s:       .string          "ROMAN"
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_lit_string_bx, @function
n32_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_147_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_lit_string_α
n32_lit_string_β:       mov              r11, 33
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n29_statement_begin_β
.Llit_string_α_147_0:   .quad            .Llit_string_α_147_0_s
.Llit_string_α_147_0_s: .string          "IVXLCDM"
                        .size            n32_lit_string_bx, .-n32_lit_string_bx
                        .type            n33_lit_string_bx, @function
n33_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_148_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_call_α
n33_lit_string_β:       mov              r11, 34
                        add              rsp, 16;                             jmp   n32_lit_string_β
.Llit_string_α_148_0:   .quad            .Llit_string_α_148_0_s
.Llit_string_α_148_0_s: .string          "XLCDM**"
                        .size            n33_lit_string_bx, .-n33_lit_string_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             sub              rsp, 16
                        mov              r11, 35
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lcall_α_rkfnzd150:     .string          "REPLACE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd150]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 458798
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_149_240
                        add              rsp, 16;                             jmp   n33_lit_string_β
.Lcall_α_149_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n35_var_α
n34_call_β:             mov              r11, 35
                        add              rsp, 16;                             jmp   n33_lit_string_β
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              sub              rsp, 16
                        mov              r11, 36
                        mov              rax, qword ptr [r9 + 32]             # UNITS
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_binop_α
n35_var_β:              mov              r11, 36
                        add              rsp, 32;                             jmp   n33_lit_string_β
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_binop_bx, @function
n36_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_binop_α:            sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n37_assign_α
                        .size            n36_binop_bx, .-n36_binop_bx
                        .type            n37_assign_bx, @function
n37_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ROMAN
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_153_0]
                        .section         .rodata
.Lassign_α_153_1_s:     .string          "snobol4/roman/roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_153_1_s]
                        mov              r8, 4
                        mov              r9, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n38_statement_end_α
.Lassign_α_153_0:       .quad            .Lassign_α_153_0_s
.Lassign_α_153_0_s:     .string          "ROMAN"
                        .size            n37_assign_bx, .-n37_assign_bx
                        .type            n38_statement_end_bx, @function
n38_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 39
                        mov              r10, 4
                        add              rsp, 112;                            jmp   RETURN
                        .size            n38_statement_end_bx, .-n38_statement_end_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
#=======================================================================================================================
# ROMAN_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n39_statement_begin_α:  mov              r11, 40
                        mov              r10, 5;                              jmp   n40_statement_end_α
n39_statement_begin_β:  mov              r11, 40;                             jmp   n41_statement_begin_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41
                        mov              r10, 5;                              jmp   n41_statement_begin_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#=======================================================================================================================
#       DEFINE("TEST(I,J)")  :(TEST_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 6;                              jmp   n42_define_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n66_statement_begin_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_define_bx, @function
n42_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_define_α:           mov              r11, 43
                        mov              rdi, qword ptr [rip + .Ldefine_α_163_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_163_1]
                        mov              edx, 2
                        mov              ecx, 2
                        mov              r8d, 0
                        lea              r9, [rip + TEST_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_163_0]
                        lea              rsi, [rip + TEST_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__TEST]
                        mov              rcx, qword ptr [rip + body_cell$TEST@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n43_statement_end_α
n42_define_β:           mov              r11, 43;                             jmp   n41_statement_begin_β
.Ldefine_α_163_0:       .quad            .Ldefine_α_163_0_s
.Ldefine_α_163_0_s:     .string          "TEST"
.Ldefine_α_163_1:       .quad            .Ldefine_α_163_1_s
.Ldefine_α_163_1_s:     .string          "I,J"
                                                                              jmp   .Ldefine_α_164_245
#-----------------------------------------------------------------------------------------------------------------------
TEST_α:                 sub              rsp, 80
                        mov              rax, qword ptr [rip + rt_g_want_name@GOTPCREL]
                        mov              edx, dword ptr [rax + 0]
                        movsxd           rdx, edx
                        mov              qword ptr [rsp + 40], rdx
                        mov              dword ptr [rax + 0], 0
                        mov              rax, qword ptr [r9 + 48]             # TEST
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 48], 0
                        mov              qword ptr [r9 + 56], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_164_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 64]             # I
                        mov              qword ptr [r9 + 64], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 72]
                        mov              qword ptr [r9 + 72], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_164_41
.Ldefine_α_164_10:      mov              rax, qword ptr [r9 + 64]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 64], 0
                        mov              qword ptr [r9 + 72], 0
.Ldefine_α_164_41:      cmp              rdx, 1;                              jbe   .Ldefine_α_164_11
                        mov              rdi, qword ptr [rcx + 32]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 80]             # J
                        mov              qword ptr [r9 + 80], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 88]
                        mov              qword ptr [r9 + 88], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_164_42
.Ldefine_α_164_11:      mov              rax, qword ptr [r9 + 80]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 72], rax
                        mov              qword ptr [r9 + 80], 0
                        mov              qword ptr [r9 + 88], 0
.Ldefine_α_164_42:      push             rcx
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [rcx + 8], rax
                        pop              rcx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jg    .Ldefine_α_164_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_164_230
.Ldefine_α_164_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_164_232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_164_230:                                                           jmp   .Ldefine_α_164_231
.Ldefine_α_164_232:     .quad            .Ldefine_α_164_232_s
.Ldefine_α_164_232_s:   .string          "TEST"
.Ldefine_α_164_231:     lea              rcx, [rip + TEST_γ]
                        lea              rax, [rip + TEST_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$TEST:         .quad            LBL__TEST
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$TEST@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
TEST_γ:                 mov              rdi, qword ptr [r9 + 48]             # TEST
                        mov              rsi, qword ptr [r9 + 56]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_164_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_164_235
.Ldefine_α_164_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_164_237]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 48]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rsi
                        pop              rdi
.Ldefine_α_164_235:                                                           jmp   .Ldefine_α_164_236
.Ldefine_α_164_237:     .quad            .Ldefine_α_164_237_s
.Ldefine_α_164_237_s:   .string          "TEST"
.Ldefine_α_164_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_164_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 64], rax             # I
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 72], rax;            jmp   .Ldefine_α_164_110
.Ldefine_α_164_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
.Ldefine_α_164_110:     cmp              rdx, 1;                              jbe   .Ldefine_α_164_81
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # J
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Ldefine_α_164_111
.Ldefine_α_164_81:      mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Ldefine_α_164_111:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
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
                        add              rsp, 80
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
TEST_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 80]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 48], rax             # TEST
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 56], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_164_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 64], rax             # I
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 72], rax;            jmp   .Ldefine_α_164_180
.Ldefine_α_164_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 64], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 72], rax
.Ldefine_α_164_180:     cmp              rdx, 1;                              jbe   .Ldefine_α_164_151
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 80], rax             # J
                        mov              rax, qword ptr [rcx + 32]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 88], rax;            jmp   .Ldefine_α_164_181
.Ldefine_α_164_151:     mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [r9 + 80], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [r9 + 88], rax
.Ldefine_α_164_181:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_164_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_164_249
.Ldefine_α_164_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_164_237]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              rdi
                        pop              r12
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
.Ldefine_α_164_249:     push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
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
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
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
                        add              rsp, 80
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_164_245:
                        .size            n42_define_bx, .-n42_define_bx
                        .type            n43_statement_end_bx, @function
n43_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 44
                        mov              r10, 6;                              jmp   n66_statement_begin_α
                        .size            n43_statement_end_bx, .-n43_statement_end_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#=======================================================================================================================
# TEST  OUTPUT = I ' -> ' ROMAN(I)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
LBL__TEST:              mov              r11, 45
                        mov              r10, 7;                              jmp   n45_var_α
n44_statement_begin_β:  mov              r11, 45;                             jmp   n53_statement_begin_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              r11, 46
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_lit_string_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_binop_α
n46_lit_string_β:       mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Llit_string_α_170_0:   .quad            .Llit_string_α_170_0_s
.Llit_string_α_170_0_s: .string          " -> "
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_binop_bx, @function
n47_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_binop_α:            sub              rsp, 16
                        mov              r11, 48
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_var_α
n47_binop_β:            mov              r11, 48
                        add              rsp, 16;                             jmp   n46_lit_string_β
                        .size            n47_binop_bx, .-n47_binop_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              r11, 49
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_call_α
n48_var_β:              mov              r11, 49
                        add              rsp, 16;                             jmp   n47_binop_β
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             sub              rsp, 16
                        mov              r11, 50
                        lea              rcx, [rip + .Lcall_α_sig174z]
                        lea              rax, [rip + ROMAN_α];                jmp   rax
.Lcall_α_sig174z:       .quad            1
                        .quad            .Lcall_α_174_2
                        .quad            .Lcall_α_174_2
                        .quad            16
.Lcall_α_174_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_174_29
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
.Lcall_α_174_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_174_240
                        add              rsp, 16;                             jmp   n48_var_β
.Lcall_α_174_240:                                                             jmp   n50_binop_α
n49_call_β:             mov              r11, 50;                             jmp   n48_var_β
.Lcall_β_174_0:         .quad            .Lcall_β_174_0_s
.Lcall_β_174_0_s:       .string          "ROMAN"
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_binop_bx, @function
n50_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_α:            sub              rsp, 16
                        mov              r11, 51
                        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_assign_α
                        .size            n50_binop_bx, .-n50_binop_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_176_0]
                        .section         .rodata
.Lassign_α_176_1_s:     .string          "snobol4/roman/roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_176_1_s]
                        mov              r8, 7
                        mov              r9, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_176_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n52_statement_end_α
.Lassign_α_176_0:       .quad            .Lassign_α_176_0_s
.Lassign_α_176_0_s:     .string          "OUTPUT"
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        mov              r10, 7
                        add              rsp, 96;                             jmp   n53_statement_begin_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_statement_begin_bx, @function
n53_statement_begin_bx:
#=======================================================================================================================
#       EQ(I,J)  :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n53_statement_begin_α:  mov              r11, 54
                        mov              r10, 8;                              jmp   n54_var_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   n60_statement_begin_α
                        .size            n53_statement_begin_bx, .-n53_statement_begin_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_var_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 80]             # J
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_coerce_numeric_α
n55_var_β:              mov              r11, 56
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_β
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 57
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_184_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_184_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_184_0
.Lcoerce_numeric_α_184_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_coerce_numeric_α
.Lcoerce_numeric_α_184_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_coerce_numeric_α
n56_coerce_numeric_β:   mov              r11, 57
                        add              rsp, 16;                             jmp   n55_var_β
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 58
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_186_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_186_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_186_0
.Lcoerce_numeric_α_186_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_cmp_test_α
.Lcoerce_numeric_α_186_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_cmp_test_α
n57_coerce_numeric_β:   mov              r11, 58
                        add              rsp, 16;                             jmp   n56_coerce_numeric_β
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_cmp_test_bx, @function
n58_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_cmp_test_α:         sub              rsp, 16
                        mov              r11, 59
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_188_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lcmp_test_α_188_239
                        add              rsp, 16;                             jmp   n57_coerce_numeric_β
.Lcmp_test_α_188_239:                                                         jmp   n59_statement_end_α
.Lcmp_test_α_188_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lcmp_test_α_188_240
                        add              rsp, 16;                             jmp   n57_coerce_numeric_β
.Lcmp_test_α_188_240:                                                         jmp   n59_statement_end_α
                        .size            n58_cmp_test_bx, .-n58_cmp_test_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        mov              r10, 8
                        add              rsp, 80;                             jmp   RETURN
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_statement_begin_bx, @function
n60_statement_begin_bx:
#=======================================================================================================================
#       I = I + 1  :(TEST)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n60_statement_begin_α:  mov              r11, 61
                        mov              r10, 9;                              jmp   n61_var_α
n60_statement_begin_β:  mov              r11, 61;                             jmp   LBL__TEST
                        .size            n60_statement_begin_bx, .-n60_statement_begin_bx
                        .type            n61_var_bx, @function
n61_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 64]             # I
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_lit_integer_α
                        .size            n61_var_bx, .-n61_var_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      sub              rsp, 16
                        mov              r11, 63
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_binop_α
n62_lit_integer_β:      mov              r11, 63
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n60_statement_begin_β
.Llit_integer_α_194_0:  .quad            1
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_binop_bx, @function
n63_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:            sub              rsp, 16
                        mov              r11, 64
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_195_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_195_7
.Lbinop_α_195_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_195_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_195_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_195_4
.Lbinop_α_195_3:        movq             xmm0, rsi
.Lbinop_α_195_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_195_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_195_7:                                                              jmp   n64_assign_α
.Lbinop_α_195_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_195_240
                        add              rsp, 16;                             jmp   n62_lit_integer_β
.Lbinop_α_195_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_assign_α
                        .size            n63_binop_bx, .-n63_binop_bx
                        .type            n64_assign_bx, @function
n64_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_α:           mov              r11, 65
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # I
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_196_0]
                        .section         .rodata
.Lassign_α_196_1_s:     .string          "snobol4/roman/roman.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_196_1_s]
                        mov              r8, 9
                        mov              r9, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n65_statement_end_α
.Lassign_α_196_0:       .quad            .Lassign_α_196_0_s
.Lassign_α_196_0_s:     .string          "I"
                        .size            n64_assign_bx, .-n64_assign_bx
                        .type            n65_statement_end_bx, @function
n65_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66
                        mov              r10, 9
                        add              rsp, 48;                             jmp   LBL__TEST
                        .size            n65_statement_end_bx, .-n65_statement_end_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
#=======================================================================================================================
# TEST_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n66_statement_begin_α:  mov              r11, 67
                        mov              r10, 10;                             jmp   n67_statement_end_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n68_statement_begin_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_statement_end_bx, @function
n67_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 68
                        mov              r10, 10;                             jmp   n68_statement_begin_α
                        .size            n67_statement_end_bx, .-n67_statement_end_bx
                        .type            n68_statement_begin_bx, @function
n68_statement_begin_bx:
#=======================================================================================================================
#       TEST(1,100)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n68_statement_begin_α:  mov              r11, 69
                        mov              r10, 11;                             jmp   n69_lit_integer_α
n68_statement_begin_β:  mov              r11, 69;                             jmp   n73_statement_begin_α
                        .size            n68_statement_begin_bx, .-n68_statement_begin_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_lit_integer_α
.Llit_integer_α_205_0:  .quad            1
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_call_α
n70_lit_integer_β:      mov              r11, 71
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
.Llit_integer_α_206_0:  .quad            100
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_call_bx, @function
n71_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             sub              rsp, 16
                        mov              r11, 72
                        lea              rcx, [rip + .Lcall_α_sig208z]
                        lea              rax, [rip + TEST_α];                 jmp   rax
.Lcall_α_sig208z:       .quad            2
                        .quad            .Lcall_α_208_2
                        .quad            .Lcall_α_208_2
                        .quad            32
                        .quad            16
.Lcall_α_208_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_208_29
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
.Lcall_α_208_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_208_240
                        add              rsp, 16;                             jmp   n70_lit_integer_β
.Lcall_α_208_240:                                                             jmp   n72_statement_end_α
n71_call_β:             mov              r11, 72;                             jmp   n70_lit_integer_β
.Lcall_β_208_0:         .quad            .Lcall_β_208_0_s
.Lcall_β_208_0_s:       .string          "TEST"
                        .size            n71_call_bx, .-n71_call_bx
                        .type            n72_statement_end_bx, @function
n72_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 11
                        add              rsp, 48;                             jmp   n73_statement_begin_α
                        .size            n72_statement_end_bx, .-n72_statement_end_bx
                        .type            n73_statement_begin_bx, @function
n73_statement_begin_bx:
#=======================================================================================================================
#       TEST(149,151)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n73_statement_begin_α:  mov              r11, 74
                        mov              r10, 12;                             jmp   n74_lit_integer_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n78_statement_begin_α
                        .size            n73_statement_begin_bx, .-n73_statement_begin_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_lit_integer_α
.Llit_integer_α_213_0:  .quad            149
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 76
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_214_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_call_α
n75_lit_integer_β:      mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n73_statement_begin_β
.Llit_integer_α_214_0:  .quad            151
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        mov              r11, 77
                        lea              rcx, [rip + .Lcall_α_sig216z]
                        lea              rax, [rip + TEST_α];                 jmp   rax
.Lcall_α_sig216z:       .quad            2
                        .quad            .Lcall_α_216_2
                        .quad            .Lcall_α_216_2
                        .quad            32
                        .quad            16
.Lcall_α_216_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_216_29
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
.Lcall_α_216_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_216_240
                        add              rsp, 16;                             jmp   n75_lit_integer_β
.Lcall_α_216_240:                                                             jmp   n77_statement_end_α
n76_call_β:             mov              r11, 77;                             jmp   n75_lit_integer_β
.Lcall_β_216_0:         .quad            .Lcall_β_216_0_s
.Lcall_β_216_0_s:       .string          "TEST"
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 78
                        mov              r10, 12
                        add              rsp, 48;                             jmp   n78_statement_begin_α
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#=======================================================================================================================
#       TEST(480,520)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n78_statement_begin_α:  mov              r11, 79
                        mov              r10, 13;                             jmp   n79_lit_integer_α
n78_statement_begin_β:  mov              r11, 79;                             jmp   n83_statement_begin_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_lit_integer_α
.Llit_integer_α_221_0:  .quad            480
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_222_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_call_α
n80_lit_integer_β:      mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n78_statement_begin_β
.Llit_integer_α_222_0:  .quad            520
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_call_bx, @function
n81_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_call_α:             sub              rsp, 16
                        mov              r11, 82
                        lea              rcx, [rip + .Lcall_α_sig224z]
                        lea              rax, [rip + TEST_α];                 jmp   rax
.Lcall_α_sig224z:       .quad            2
                        .quad            .Lcall_α_224_2
                        .quad            .Lcall_α_224_2
                        .quad            32
                        .quad            16
.Lcall_α_224_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_224_29
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
.Lcall_α_224_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_224_240
                        add              rsp, 16;                             jmp   n80_lit_integer_β
.Lcall_α_224_240:                                                             jmp   n82_statement_end_α
n81_call_β:             mov              r11, 82;                             jmp   n80_lit_integer_β
.Lcall_β_224_0:         .quad            .Lcall_β_224_0_s
.Lcall_β_224_0_s:       .string          "TEST"
                        .size            n81_call_bx, .-n81_call_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        mov              r10, 13
                        add              rsp, 48;                             jmp   n83_statement_begin_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_statement_begin_bx, @function
n83_statement_begin_bx:
#=======================================================================================================================
#       TEST(1900,2100)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n83_statement_begin_α:  mov              r11, 84
                        mov              r10, 14;                             jmp   n84_lit_integer_α
n83_statement_begin_β:  mov              r11, 84;                             jmp   main_γ
                        .size            n83_statement_begin_bx, .-n83_statement_begin_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_229_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_lit_integer_α
.Llit_integer_α_229_0:  .quad            1900
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_call_α
n85_lit_integer_β:      mov              r11, 86
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n83_statement_begin_β
.Llit_integer_α_230_0:  .quad            2100
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_call_bx, @function
n86_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_call_α:             sub              rsp, 16
                        mov              r11, 87
                        lea              rcx, [rip + .Lcall_α_sig232z]
                        lea              rax, [rip + TEST_α];                 jmp   rax
.Lcall_α_sig232z:       .quad            2
                        .quad            .Lcall_α_232_2
                        .quad            .Lcall_α_232_2
                        .quad            32
                        .quad            16
.Lcall_α_232_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_232_29
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
.Lcall_α_232_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_232_240
                        add              rsp, 16;                             jmp   n85_lit_integer_β
.Lcall_α_232_240:                                                             jmp   n87_statement_end_α
n86_call_β:             mov              r11, 87;                             jmp   n85_lit_integer_β
.Lcall_β_232_0:         .quad            .Lcall_β_232_0_s
.Lcall_β_232_0_s:       .string          "TEST"
                        .size            n86_call_bx, .-n86_call_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88
                        mov              r10, 14
                        add              rsp, 48;                             jmp   main_γ
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_goto_bx, @function
n88_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_goto_α:             mov              r11, 89;                             jmp   LBL__ROMAN
n88_goto_β:             mov              r11, 89;                             jmp   main_ω
                        .size            n88_goto_bx, .-n88_goto_bx
                        .type            n89_goto_bx, @function
n89_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_goto_α:             mov              r11, 90;                             jmp   n39_statement_begin_α
n89_goto_β:             mov              r11, 90;                             jmp   main_ω
                        .size            n89_goto_bx, .-n89_goto_bx
                        .type            n90_goto_bx, @function
n90_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_goto_α:             mov              r11, 91;                             jmp   LBL__TEST
n90_goto_β:             mov              r11, 91;                             jmp   main_ω
                        .size            n90_goto_bx, .-n90_goto_bx
                        .type            n91_goto_bx, @function
n91_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:             mov              r11, 92;                             jmp   n66_statement_begin_α
n91_goto_β:             mov              r11, 92;                             jmp   main_ω
                        .size            n91_goto_bx, .-n91_goto_bx
                        .type            n92_define_bx, @function
n92_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 93
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
                        .size            n92_define_bx, .-n92_define_bx
                        .type            n93_define_bx, @function
n93_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
FRETURN:                mov              r11, 94
                        mov              edi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_kw_set_rtntype_role@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              rcx;                                 jmp   rcx
                        .size            n93_define_bx, .-n93_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
                        call             sno_setexit_fire_on_end@PLT
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        add              rsp, 0
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
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
                        .long            1456
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
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
                        .long            1456
                        .long            16
                        .long            0
                        .long            0
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
                        .section         .rodata
.S0:                    .string          "UNITS"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
