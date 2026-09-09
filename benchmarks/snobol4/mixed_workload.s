                        .intel_syntax    noprefix
                        .text
                        .file            1 "mixed_workload.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 72
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
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 12
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 12
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 10
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
.Lgvan0:                .string          "RSUM"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "MIXED_WORKLOAD"
.Lgvan3:                .string          "ZPAT"
.Lgvan4:                .string          "ZWORD"
.Lgvan5:                .string          "ZI"
.Lgvan6:                .string          "ZS"
.Lgvan7:                .string          "ZTAB"
.Lgvan8:                .string          "ZDATA"
.Lgvan9:                .string          "ZIDX"
.Lgvan10:               .string          "ZTOT"
.Lgvan11:               .string          "ZJ"
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
                        .quad            .Lgvan11
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "RSUM"
.Llbln1:                .string          "RSUM_END"
.Llbln2:                .string          "MIXED_WORKLOAD"
.Llbln3:                .string          "ZBL"
.Llbln4:                .string          "ZPARSE"
.Llbln5:                .string          "ZCALC"
.Llbln6:                .string          "ZADD"
.Llbln7:                .string          "ZNEXT"
.Llbln8:                .string          "MIXED_WORKLOAD_END"
.Llbln9:                .string          "END"
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
                        .quad            .Llbln8
                        .quad            .Llbln9
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n12_lit_integer_α:      sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_274_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n13_lit_integer_α
.Llit_integer_α_274_0:  .quad            1
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 6
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_275_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_lit_string_α
.Llit_integer_α_275_0:  .quad            7
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_lit_string_bx, @function
n14_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_276_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_call_α
.Llit_string_α_276_0:   .quad            .Llit_string_α_276_0_s
.Llit_string_α_276_0_s: .string          "mixed_workload.sno"
                        .size            n14_lit_string_bx, .-n14_lit_string_bx
                        .type            n15_call_bx, @function
n15_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_α:             sub              rsp, 16
                        mov              r11, 8
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
.Lcall_α_rkfnzd278:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd278]
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
                        cmp              al, 104;                             jne   .Lcall_α_277_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n16_statement_begin_α
.Lcall_α_277_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n16_statement_begin_α
n15_call_β:             mov              r11, 8
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n16_statement_begin_α
                        .size            n15_call_bx, .-n15_call_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 9
                        mov              r10, 1;                              jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 9
                        add              rsp, 64;                             jmp   n20_lit_integer_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_kw_assign_snobol4_α
.Llit_integer_α_281_0:  .quad            1
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_kw_assign_snobol4_bx, @function
n18_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 11
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_282_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_282_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n16_statement_begin_β
.Lkw_assign_snobol4_α_282_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_statement_end_α
.Lkw_assign_snobol4_α_282_0:
                        .quad            1
                        .size            n18_kw_assign_snobol4_bx, .-n18_kw_assign_snobol4_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 12
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n20_lit_integer_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n20_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_285_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n21_lit_integer_α
.Llit_integer_α_285_0:  .quad            2
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_call_α
.Llit_integer_α_286_0:  .quad            8
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_call_bx, @function
n22_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             sub              rsp, 16
                        mov              r11, 15
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd288:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd288]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_287_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n23_statement_begin_α
.Lcall_α_287_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_statement_begin_α
n22_call_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n23_statement_begin_α
                        .size            n22_call_bx, .-n22_call_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 16
                        mov              r10, 2;                              jmp   n24_lit_integer_α
n23_statement_begin_β:  mov              r11, 16
                        add              rsp, 48;                             jmp   n27_lit_integer_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_291_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_kw_assign_snobol4_α
.Llit_integer_α_291_0:  .quad            0
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_kw_assign_snobol4_bx, @function
n25_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_292_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_292_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
.Lkw_assign_snobol4_α_292_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_statement_end_α
.Lkw_assign_snobol4_α_292_0:
                        .quad            0
                        .size            n25_kw_assign_snobol4_bx, .-n25_kw_assign_snobol4_bx
                        .type            n26_statement_end_bx, @function
n26_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 19
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n27_lit_integer_α
                        .size            n26_statement_end_bx, .-n26_statement_end_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_295_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_lit_integer_α
.Llit_integer_α_295_0:  .quad            3
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_296_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_call_α
.Llit_integer_α_296_0:  .quad            9
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             sub              rsp, 16
                        mov              r11, 22
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd298:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd298]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_297_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n30_statement_begin_α
.Lcall_α_297_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_statement_begin_α
n29_call_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n30_statement_begin_α
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 23
                        mov              r10, 3;                              jmp   n31_lit_integer_α
n30_statement_begin_β:  mov              r11, 23
                        add              rsp, 48;                             jmp   n35_lit_integer_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_301_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_unop_α
.Llit_integer_α_301_0:  .quad            1
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_unop_bx, @function
n32_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_unop_α:             sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_kw_assign_snobol4_α
n32_unop_β:             mov              r11, 25
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n30_statement_begin_β
                        .size            n32_unop_bx, .-n32_unop_bx
                        .type            n33_kw_assign_snobol4_bx, @function
n33_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 26
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_303_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_303_240
                        add              rsp, 16;                             jmp   n32_unop_β
.Lkw_assign_snobol4_α_303_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n34_statement_end_α
.Lkw_assign_snobol4_α_303_0:
                        .quad            10
                        .size            n33_kw_assign_snobol4_bx, .-n33_kw_assign_snobol4_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 27
                        mov              r10, 3
                        add              rsp, 96;                             jmp   n35_lit_integer_α
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('RSUM(N)')                               :(RSUM_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n35_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_306_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_lit_integer_α
.Llit_integer_α_306_0:  .quad            4
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_call_α
.Llit_integer_α_307_0:  .quad            10
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             sub              rsp, 16
                        mov              r11, 30
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd309:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd309]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_308_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n38_statement_begin_α
.Lcall_α_308_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_statement_begin_α
n37_call_β:             mov              r11, 30
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n38_statement_begin_α
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 31
                        mov              r10, 4;                              jmp   n39_define_α
n38_statement_begin_β:  mov              r11, 31
                        add              rsp, 48;                             jmp   n41_lit_integer_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_define_bx, @function
n39_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_define_α:           mov              r11, 32
                        mov              rdi, qword ptr [rip + .Ldefine_α_313_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_313_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + RSUM_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_313_0]
                        lea              rsi, [rip + RSUM_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__RSUM]
                        mov              rcx, qword ptr [rip + body_cell$RSUM@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n40_statement_end_α
n39_define_β:           mov              r11, 32;                             jmp   n38_statement_begin_β
.Ldefine_α_313_0:       .quad            .Ldefine_α_313_0_s
.Ldefine_α_313_0_s:     .string          "RSUM"
.Ldefine_α_313_1:       .quad            .Ldefine_α_313_1_s
.Ldefine_α_313_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_314_245
#-----------------------------------------------------------------------------------------------------------------------
RSUM_α:                 sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # RSUM
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_314_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_314_41
.Ldefine_α_314_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_314_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_314_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_314_230
.Ldefine_α_314_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_314_232]
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
.Ldefine_α_314_230:                                                           jmp   .Ldefine_α_314_231
.Ldefine_α_314_232:     .quad            .Ldefine_α_314_232_s
.Ldefine_α_314_232_s:   .string          "RSUM"
.Ldefine_α_314_231:     lea              rcx, [rip + RSUM_γ]
                        lea              rax, [rip + RSUM_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$RSUM:         .quad            LBL__RSUM
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$RSUM@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
RSUM_γ:                 mov              rdi, qword ptr [r9 + 0]              # RSUM
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_314_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_314_235
.Ldefine_α_314_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_314_237]
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
.Ldefine_α_314_235:                                                           jmp   .Ldefine_α_314_236
.Ldefine_α_314_237:     .quad            .Ldefine_α_314_237_s
.Ldefine_α_314_237_s:   .string          "RSUM"
.Ldefine_α_314_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_314_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_314_110
.Ldefine_α_314_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_314_110:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
RSUM_ω:                 mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # RSUM
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_314_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_314_180
.Ldefine_α_314_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_314_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_314_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_314_249
.Ldefine_α_314_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_314_237]
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
.Ldefine_α_314_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_314_245:
                        .size            n39_define_bx, .-n39_define_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 33
                        mov              r10, 4
                        add              rsp, 48;                             jmp   n41_lit_integer_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#=======================================================================================================================
# RSUM_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_lit_integer_α
.Llit_integer_α_317_0:  .quad            7
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_call_α
.Llit_integer_α_318_0:  .quad            13
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             sub              rsp, 16
                        mov              r11, 36
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd320:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd320]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_319_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
.Lcall_α_319_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_statement_begin_α
n43_call_β:             mov              r11, 36
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n65_statement_begin_α
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 37
                        mov              r10, 5;                              jmp   n45_var_α
n44_statement_begin_β:  mov              r11, 37
                        add              rsp, 48;                             jmp   n53_lit_integer_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_lit_integer_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_coerce_numeric_α
n46_lit_integer_β:      mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Llit_integer_α_324_0:  .quad            0
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_coerce_numeric_bx, @function
n47_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 40
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_326_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_326_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_326_0
.Lcoerce_numeric_α_326_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_coerce_numeric_α
.Lcoerce_numeric_α_326_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 101
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_coerce_numeric_α
n47_coerce_numeric_β:   mov              r11, 40
                        add              rsp, 16;                             jmp   n46_lit_integer_β
                        .size            n47_coerce_numeric_bx, .-n47_coerce_numeric_bx
                        .type            n48_coerce_numeric_bx, @function
n48_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 41
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_328_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_328_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_328_0
.Lcoerce_numeric_α_328_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_cmp_test_α
.Lcoerce_numeric_α_328_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 102
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_cmp_test_α
n48_coerce_numeric_β:   mov              r11, 41
                        add              rsp, 16;                             jmp   n47_coerce_numeric_β
                        .size            n48_coerce_numeric_bx, .-n48_coerce_numeric_bx
                        .type            n49_cmp_test_bx, @function
n49_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_cmp_test_α:         sub              rsp, 16
                        mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_330_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            je    .Lcmp_test_α_330_239
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
.Lcmp_test_α_330_239:                                                         jmp   n50_lit_integer_α
.Lcmp_test_α_330_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lcmp_test_α_330_240
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
.Lcmp_test_α_330_240:                                                         jmp   n50_lit_integer_α
n49_cmp_test_β:         mov              r11, 42
                        add              rsp, 16;                             jmp   n48_coerce_numeric_β
                        .size            n49_cmp_test_bx, .-n49_cmp_test_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Llit_integer_α_331_0:  .quad            0
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
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
                        mov              rdi, qword ptr [rip + .Lassign_α_332_0]
                        .section         .rodata
.Lassign_α_332_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_332_1_s]
                        mov              r8, 13
                        mov              r9, 5
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
                        pop              rax;                                 jmp   n52_statement_end_α
.Lassign_α_332_0:       .quad            .Lassign_α_332_0_s
.Lassign_α_332_0_s:     .string          "RSUM"
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 45
                        mov              r10, 5
                        add              rsp, 144;                            jmp   RETURN
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#=======================================================================================================================
#         RSUM = N + RSUM(N - 1)                          :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n53_lit_integer_α:      sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_335_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_lit_integer_α
.Llit_integer_α_335_0:  .quad            6
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_336_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_call_α
.Llit_integer_α_336_0:  .quad            12
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_call_bx, @function
n55_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_α:             sub              rsp, 16
                        mov              r11, 48
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd338:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd338]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_337_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n56_statement_begin_α
.Lcall_α_337_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_statement_begin_α
n55_call_β:             mov              r11, 48
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n56_statement_begin_α
                        .size            n55_call_bx, .-n55_call_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 49
                        mov              r10, 6;                              jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 49
                        add              rsp, 48;                             jmp   RETURN
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_var_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_lit_integer_α
n58_var_β:              mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n56_statement_begin_β
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_binop_α
n59_lit_integer_β:      mov              r11, 52
                        add              rsp, 16;                             jmp   n58_var_β
.Llit_integer_α_343_0:  .quad            1
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              r11, 53
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_344_2
                        sub              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_344_7
.Lbinop_α_344_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_344_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_344_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_344_4
.Lbinop_α_344_3:        movq             xmm0, rsi
.Lbinop_α_344_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_344_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_344_7:                                                              jmp   n61_call_α
.Lbinop_α_344_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_344_240
                        add              rsp, 16;                             jmp   n59_lit_integer_β
.Lbinop_α_344_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_call_α
n60_binop_β:            mov              r11, 53
                        add              rsp, 16;                             jmp   n59_lit_integer_β
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             sub              rsp, 16
                        mov              r11, 54
                        lea              rcx, [rip + .Lcall_α_sig346z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lcall_α_sig346z:       .quad            1
                        .quad            .Lcall_α_346_2
                        .quad            .Lcall_α_346_2
                        .quad            16
.Lcall_α_346_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_346_29
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
.Lcall_α_346_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_346_240
                        add              rsp, 16;                             jmp   n60_binop_β
.Lcall_α_346_240:                                                             jmp   n62_binop_α
n61_call_β:             mov              r11, 54;                             jmp   n60_binop_β
.Lcall_β_346_0:         .quad            .Lcall_β_346_0_s
.Lcall_β_346_0_s:       .string          "RSUM"
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              r11, 55
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_347_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_347_7
.Lbinop_α_347_2:        and              edx, 1;                              jz    .Lbinop_α_347_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_347_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_347_4
.Lbinop_α_347_3:        movq             xmm0, rsi
.Lbinop_α_347_4:        cmp              cl, 5;                               je    .Lbinop_α_347_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_347_6
.Lbinop_α_347_5:        movq             xmm1, rdi
.Lbinop_α_347_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_347_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_347_7:                                                              jmp   n63_assign_α
.Lbinop_α_347_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_347_240
                        add              rsp, 32;                             jmp   n60_binop_β
.Lbinop_α_347_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_assign_α
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_assign_bx, @function
n63_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              r11, 56
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # RSUM
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
                        mov              rdi, qword ptr [rip + .Lassign_α_348_0]
                        .section         .rodata
.Lassign_α_348_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_348_1_s]
                        mov              r8, 12
                        mov              r9, 6
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
                        pop              rax;                                 jmp   n64_statement_end_α
.Lassign_α_348_0:       .quad            .Lassign_α_348_0_s
.Lassign_α_348_0_s:     .string          "RSUM"
                        .size            n63_assign_bx, .-n63_assign_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 57
                        mov              r10, 6
                        add              rsp, 144;                            jmp   RETURN
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 58
                        mov              r10, 7;                              jmp   n66_statement_end_α
n65_statement_begin_β:  mov              r11, 58
                        add              rsp, 48;                             jmp   n67_lit_integer_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 59
                        mov              r10, 7
                        add              rsp, 48;                             jmp   n67_lit_integer_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_lit_integer_bx, @function
n67_lit_integer_bx:
#=======================================================================================================================
#         ZPAT = BREAK(',') . ZWORD ','
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n67_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_355_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_lit_integer_α
.Llit_integer_α_355_0:  .quad            8
                        .size            n67_lit_integer_bx, .-n67_lit_integer_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_call_α
.Llit_integer_α_356_0:  .quad            14
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_call_bx, @function
n69_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_call_α:             sub              rsp, 16
                        mov              r11, 62
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd358:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd358]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_357_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n70_statement_begin_α
.Lcall_α_357_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_statement_begin_α
n69_call_β:             mov              r11, 62
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n70_statement_begin_α
                        .size            n69_call_bx, .-n69_call_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 63
                        mov              r10, 8;                              jmp   n71_lit_string_α
n70_statement_begin_β:  mov              r11, 63
                        add              rsp, 48;                             jmp   n75_lit_integer_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_lit_string_bx, @function
n71_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_361_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_call_α
.Llit_string_α_361_0:   .quad            .Llit_string_α_361_0_s
.Llit_string_α_361_0_s: .string          "PAT$0"
                        .size            n71_lit_string_bx, .-n71_lit_string_bx
                        .type            n72_call_bx, @function
n72_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_α:             sub              rsp, 16
                        mov              r11, 65
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd363:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd363]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 589876
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_362_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lcall_α_362_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_assign_α
n72_call_β:             mov              r11, 65
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_call_bx, .-n72_call_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 66
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZPAT
                        mov              qword ptr [r9 + 56], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_364_0]
                        .section         .rodata
.Lassign_α_364_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_364_1_s]
                        mov              r8, 14
                        mov              r9, 8
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
                        pop              rax;                                 jmp   n74_statement_end_α
.Lassign_α_364_0:       .quad            .Lassign_α_364_0_s
.Lassign_α_364_0_s:     .string          "ZPAT"
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 67
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n75_lit_integer_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#=======================================================================================================================
#         DEFINE('MIXED_WORKLOAD(N)')                     :(MIXED_WORKLOAD_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_367_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_lit_integer_α
.Llit_integer_α_367_0:  .quad            9
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_lit_integer_bx, @function
n76_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_integer_α:      sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_368_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_call_α
.Llit_integer_α_368_0:  .quad            15
                        .size            n76_lit_integer_bx, .-n76_lit_integer_bx
                        .type            n77_call_bx, @function
n77_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_α:             sub              rsp, 16
                        mov              r11, 70
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd370:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd370]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_369_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n78_statement_begin_α
.Lcall_α_369_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_statement_begin_α
n77_call_β:             mov              r11, 70
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n78_statement_begin_α
                        .size            n77_call_bx, .-n77_call_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 71
                        mov              r10, 9;                              jmp   n79_define_α
n78_statement_begin_β:  mov              r11, 71
                        add              rsp, 48;                             jmp   n81_lit_integer_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_define_bx, @function
n79_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_define_α:           mov              r11, 72
                        mov              rdi, qword ptr [rip + .Ldefine_α_374_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_374_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + MIXED_WORKLOAD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_374_0]
                        lea              rsi, [rip + MIXED_WORKLOAD_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + LBL__MIXED_WORKLOAD]
                        mov              rcx, qword ptr [rip + body_cell$MIXED_WORKLOAD@GOTPCREL]
                        mov              qword ptr [rcx + 0], rax;            jmp   n80_statement_end_α
n79_define_β:           mov              r11, 72;                             jmp   n78_statement_begin_β
.Ldefine_α_374_0:       .quad            .Ldefine_α_374_0_s
.Ldefine_α_374_0_s:     .string          "MIXED_WORKLOAD"
.Ldefine_α_374_1:       .quad            .Ldefine_α_374_1_s
.Ldefine_α_374_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_375_245
#-----------------------------------------------------------------------------------------------------------------------
MIXED_WORKLOAD_α:       sub              rsp, 64
                        mov              rax, qword ptr [r9 + 32]             # MIXED_WORKLOAD
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 32], 0
                        mov              qword ptr [r9 + 40], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_375_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_375_41
.Ldefine_α_375_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_375_41:      push             rcx
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
                        cmp              rax, 0;                              jg    .Ldefine_α_375_246
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_375_230
.Ldefine_α_375_246:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_375_232]
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
.Ldefine_α_375_230:                                                           jmp   .Ldefine_α_375_231
.Ldefine_α_375_232:     .quad            .Ldefine_α_375_232_s
.Ldefine_α_375_232_s:   .string          "MIXED_WORKLOAD"
.Ldefine_α_375_231:     lea              rcx, [rip + MIXED_WORKLOAD_γ]
                        lea              rax, [rip + MIXED_WORKLOAD_ω]
                        push             rax
                        push             rcx
                        .section         .data
                        .align           8
body_cell$MIXED_WORKLOAD:
                        .quad            LBL__MIXED_WORKLOAD
                        .section         .text
                        .intel_syntax    noprefix
                        mov              rax, qword ptr [rip + body_cell$MIXED_WORKLOAD@GOTPCREL]
                        mov              rax, qword ptr [rax + 0];            jmp   rax
MIXED_WORKLOAD_γ:       mov              rdi, qword ptr [r9 + 32]             # MIXED_WORKLOAD
                        mov              rsi, qword ptr [r9 + 40]
                        mov              rax, rdi
                        mov              rdx, rsi
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_375_247
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_375_235
.Ldefine_α_375_247:     push             rdi
                        push             rsi
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        mov              rdi, qword ptr [rip + .Ldefine_α_375_237]
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
.Ldefine_α_375_235:                                                           jmp   .Ldefine_α_375_236
.Ldefine_α_375_237:     .quad            .Ldefine_α_375_237_s
.Ldefine_α_375_237_s:   .string          "MIXED_WORKLOAD"
.Ldefine_α_375_236:     pop              rdx
                        pop              rax
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_375_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_375_110
.Ldefine_α_375_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_375_110:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
MIXED_WORKLOAD_ω:       mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 32], rax             # MIXED_WORKLOAD
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 40], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_375_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_375_180
.Ldefine_α_375_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_375_180:     mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jne   .Ldefine_α_375_248
                        mov              rax, qword ptr [rip + kw_ftrace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              jle   .Ldefine_α_375_249
.Ldefine_α_375_248:     push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r12
                        push             rdi
                        mov              rdi, qword ptr [rip + .Ldefine_α_375_237]
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
.Ldefine_α_375_249:     push             rcx
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
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_375_245:
                        .size            n79_define_bx, .-n79_define_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 73
                        mov              r10, 9
                        add              rsp, 48;                             jmp   n81_lit_integer_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#=======================================================================================================================
# MIXED_WORKLOAD_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n81_lit_integer_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_378_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_lit_integer_α
.Llit_integer_α_378_0:  .quad            25
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 75
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_379_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_α
.Llit_integer_α_379_0:  .quad            31
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
                        mov              r11, 76
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd381:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd381]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_380_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n223_statement_begin_α
.Lcall_α_380_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_statement_begin_α
n83_call_β:             mov              r11, 76
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n223_statement_begin_α
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 77
                        mov              r10, 10;                             jmp   n85_lit_integer_α
n84_statement_begin_β:  mov              r11, 77
                        add              rsp, 48;                             jmp   n88_lit_integer_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_assign_α
.Llit_integer_α_384_0:  .quad            1
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_assign_bx, @function
n86_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 79
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_385_0]
                        .section         .rodata
.Lassign_α_385_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_385_1_s]
                        mov              r8, 31
                        mov              r9, 10
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
                        pop              rax;                                 jmp   n87_statement_end_α
.Lassign_α_385_0:       .quad            .Lassign_α_385_0_s
.Lassign_α_385_0_s:     .string          "ZI"
                        .size            n86_assign_bx, .-n86_assign_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 80
                        mov              r10, 10
                        add              rsp, 64;                             jmp   n88_lit_integer_α
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_lit_integer_bx, @function
n88_lit_integer_bx:
#=======================================================================================================================
#         ZS = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n88_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_lit_integer_α
.Llit_integer_α_388_0:  .quad            11
                        .size            n88_lit_integer_bx, .-n88_lit_integer_bx
                        .type            n89_lit_integer_bx, @function
n89_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 82
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_389_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_call_α
.Llit_integer_α_389_0:  .quad            17
                        .size            n89_lit_integer_bx, .-n89_lit_integer_bx
                        .type            n90_call_bx, @function
n90_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_α:             sub              rsp, 16
                        mov              r11, 83
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd391:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd391]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_390_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n91_statement_begin_α
.Lcall_α_390_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_statement_begin_α
n90_call_β:             mov              r11, 83
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n91_statement_begin_α
                        .size            n90_call_bx, .-n90_call_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 84
                        mov              r10, 11;                             jmp   n92_lit_integer_α
n91_statement_begin_β:  mov              r11, 84
                        add              rsp, 48;                             jmp   n95_lit_integer_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_394_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_assign_α
.Llit_integer_α_394_0:  .quad            0
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_assign_bx, @function
n93_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 86
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_395_0]
                        .section         .rodata
.Lassign_α_395_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_395_1_s]
                        mov              r8, 17
                        mov              r9, 11
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
                        pop              rax;                                 jmp   n94_statement_end_α
.Lassign_α_395_0:       .quad            .Lassign_α_395_0_s
.Lassign_α_395_0_s:     .string          "ZS"
                        .size            n93_assign_bx, .-n93_assign_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 87
                        mov              r10, 11
                        add              rsp, 64;                             jmp   n95_lit_integer_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#=======================================================================================================================
# ZBL     ZTAB = TABLE(16)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 88
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_398_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_lit_integer_α
.Llit_integer_α_398_0:  .quad            12
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              r11, 89
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_call_α
.Llit_integer_α_399_0:  .quad            18
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             sub              rsp, 16
                        mov              r11, 90
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd401:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd401]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_400_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n98_statement_begin_α
.Lcall_α_400_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_statement_begin_α
n97_call_β:             mov              r11, 90
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n98_statement_begin_α
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_statement_begin_bx, @function
n98_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_begin_α:  mov              r11, 91
                        mov              r10, 12;                             jmp   n99_lit_integer_α
n98_statement_begin_β:  mov              r11, 91
                        add              rsp, 48;                             jmp   n103_lit_integer_α
                        .size            n98_statement_begin_bx, .-n98_statement_begin_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_404_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_call_α
.Llit_integer_α_404_0:  .quad            16
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n100_call_bx, @function
n100_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_call_α:            sub              rsp, 16
                        mov              r11, 93
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd406:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd406]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 327748
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_405_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
.Lcall_α_405_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_assign_α
n100_call_β:            mov              r11, 93
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n98_statement_begin_β
                        .size            n100_call_bx, .-n100_call_bx
                        .type            n101_assign_bx, @function
n101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              r11, 94
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZTAB
                        mov              qword ptr [r9 + 120], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_407_0]
                        .section         .rodata
.Lassign_α_407_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_407_1_s]
                        mov              r8, 18
                        mov              r9, 12
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
                        pop              rax;                                 jmp   n102_statement_end_α
.Lassign_α_407_0:       .quad            .Lassign_α_407_0_s
.Lassign_α_407_0_s:     .string          "ZTAB"
                        .size            n101_assign_bx, .-n101_assign_bx
                        .type            n102_statement_end_bx, @function
n102_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 95
                        mov              r10, 12
                        add              rsp, 80;                             jmp   n103_lit_integer_α
                        .size            n102_statement_end_bx, .-n102_statement_end_bx
                        .type            n103_lit_integer_bx, @function
n103_lit_integer_bx:
#=======================================================================================================================
#         ZDATA = '10,20,30,40,50,60,70,80,90,100,'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n103_lit_integer_α:     sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_410_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_lit_integer_α
.Llit_integer_α_410_0:  .quad            13
                        .size            n103_lit_integer_bx, .-n103_lit_integer_bx
                        .type            n104_lit_integer_bx, @function
n104_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:     sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_411_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_call_α
.Llit_integer_α_411_0:  .quad            19
                        .size            n104_lit_integer_bx, .-n104_lit_integer_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            sub              rsp, 16
                        mov              r11, 98
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd413:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd413]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_412_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n106_statement_begin_α
.Lcall_α_412_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_statement_begin_α
n105_call_β:            mov              r11, 98
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n106_statement_begin_α
                        .size            n105_call_bx, .-n105_call_bx
                        .type            n106_statement_begin_bx, @function
n106_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α: mov              r11, 99
                        mov              r10, 13;                             jmp   n107_lit_string_α
n106_statement_begin_β: mov              r11, 99
                        add              rsp, 48;                             jmp   n110_lit_integer_α
                        .size            n106_statement_begin_bx, .-n106_statement_begin_bx
                        .type            n107_lit_string_bx, @function
n107_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              r11, 100
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_416_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_assign_α
.Llit_string_α_416_0:   .quad            .Llit_string_α_416_0_s
.Llit_string_α_416_0_s: .string          "10,20,30,40,50,60,70,80,90,100,"
                        .size            n107_lit_string_bx, .-n107_lit_string_bx
                        .type            n108_assign_bx, @function
n108_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              r11, 101
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # ZDATA
                        mov              qword ptr [r9 + 136], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_417_0]
                        .section         .rodata
.Lassign_α_417_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_417_1_s]
                        mov              r8, 19
                        mov              r9, 13
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
                        pop              rax;                                 jmp   n109_statement_end_α
.Lassign_α_417_0:       .quad            .Lassign_α_417_0_s
.Lassign_α_417_0_s:     .string          "ZDATA"
                        .size            n108_assign_bx, .-n108_assign_bx
                        .type            n109_statement_end_bx, @function
n109_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 102
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n110_lit_integer_α
                        .size            n109_statement_end_bx, .-n109_statement_end_bx
                        .type            n110_lit_integer_bx, @function
n110_lit_integer_bx:
#=======================================================================================================================
#         ZIDX = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n110_lit_integer_α:     sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_420_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_lit_integer_α
.Llit_integer_α_420_0:  .quad            14
                        .size            n110_lit_integer_bx, .-n110_lit_integer_bx
                        .type            n111_lit_integer_bx, @function
n111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_call_α
.Llit_integer_α_421_0:  .quad            20
                        .size            n111_lit_integer_bx, .-n111_lit_integer_bx
                        .type            n112_call_bx, @function
n112_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            sub              rsp, 16
                        mov              r11, 105
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd423:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd423]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_422_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n113_statement_begin_α
.Lcall_α_422_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_begin_α
n112_call_β:            mov              r11, 105
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n113_statement_begin_α
                        .size            n112_call_bx, .-n112_call_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α: mov              r11, 106
                        mov              r10, 14;                             jmp   n114_lit_integer_α
n113_statement_begin_β: mov              r11, 106
                        add              rsp, 48;                             jmp   n117_lit_integer_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_426_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_assign_α
.Llit_integer_α_426_0:  .quad            0
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_assign_bx, @function
n115_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZIDX
                        mov              qword ptr [r9 + 152], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_427_0]
                        .section         .rodata
.Lassign_α_427_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_427_1_s]
                        mov              r8, 20
                        mov              r9, 14
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
                        pop              rax;                                 jmp   n116_statement_end_α
.Lassign_α_427_0:       .quad            .Lassign_α_427_0_s
.Lassign_α_427_0_s:     .string          "ZIDX"
                        .size            n115_assign_bx, .-n115_assign_bx
                        .type            n116_statement_end_bx, @function
n116_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 109
                        mov              r10, 14
                        add              rsp, 64;                             jmp   n117_lit_integer_α
                        .size            n116_statement_end_bx, .-n116_statement_end_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#=======================================================================================================================
# ZPARSE  ZDATA ? ZPAT =                                  :F(ZCALC)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_430_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_lit_integer_α
.Llit_integer_α_430_0:  .quad            15
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_431_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_call_α
.Llit_integer_α_431_0:  .quad            21
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            sub              rsp, 16
                        mov              r11, 112
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd433:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd433]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_432_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n120_statement_begin_α
.Lcall_α_432_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_statement_begin_α
n119_call_β:            mov              r11, 112
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n120_statement_begin_α
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_statement_begin_bx, @function
n120_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α: mov              r11, 113
                        mov              r10, 15;                             jmp   n121_var_α
n120_statement_begin_β: mov              r11, 113
                        add              rsp, 48;                             jmp   n133_lit_integer_α
                        .size            n120_statement_begin_bx, .-n120_statement_begin_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 128]            # ZDATA
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_var_α
n121_var_β:             mov              r11, 114
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n133_lit_integer_α
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_var_bx, @function
n122_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 48]             # ZPAT
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n123_assign_α
n122_var_β:             mov              r11, 115
                        add              rsp, 16;                             jmp   n121_var_β
                        .size            n122_var_bx, .-n122_var_bx
                        .type            n123_assign_bx, @function
n123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_assign_α:          mov              r11, 116
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
                        mov              rdi, qword ptr [rip + .Lassign_α_438_0]
                        .section         .rodata
.Lassign_α_438_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_438_1_s]
                        mov              r8, 21
                        mov              r9, 15
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
                        mov              rdi, qword ptr [rip + .Lassign_α_438_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n124_match_begin_α
n123_assign_β:          mov              r11, 116;                            jmp   n122_var_β
.Lassign_α_438_0:       .quad            .Lassign_α_438_0_s
.Lassign_α_438_0_s:     .string          "PATV$0"
                        .size            n123_assign_bx, .-n123_assign_bx
                        .type            n124_match_begin_bx, @function
n124_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_match_begin_α:     mov              r11, 117
                        mov              rdi, qword ptr [rsp + 16]            # var
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
.Lmatch_begin_α_440_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_440_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n125_match_defer_α
n124_match_begin_β:     mov              r11, 117
.Lmatch_begin_α_440_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_440_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_440_1
                                                                              jmp   .Lmatch_begin_α_440_0
.Lmatch_begin_β_440_1:
.Lmatch_begin_γ_124_af: mov              r11, 117
.Lmatch_begin_ω_124_af: mov              r11, 117
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
                        pop              rbp;                                 jmp   n123_assign_β
                        .size            n124_match_begin_bx, .-n124_match_begin_bx
                        .type            n125_match_defer_bx, @function
n125_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_match_defer_α:     mov              r11, 118
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S1]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_441_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_441_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_441_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_441_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_441_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_441_23
                                                                              jmp   .Lmatch_defer_α_441_22
.Lmatch_defer_α_441_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_441_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_441_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_441_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_441_0
.Lmatch_defer_α_441_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_441_0
.Lmatch_defer_α_441_22: push             r14
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
.Lmatch_defer_α_441_23: test             rax, rax;                            jz    .Lmatch_defer_α_441_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_441_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_441_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_441_4:                                                        jmp   n126_match_end_α
.Lmatch_defer_α_441_5:                                                        jmp   n124_match_begin_β
.Lmatch_defer_α_441_0:  mov              eax, edx
                        test             eax, eax;                            js    n124_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_441_6]
                        push             rcx
                        push             rax;                                 jmp   n126_match_end_α
.Lmatch_defer_α_441_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n124_match_begin_β
n125_match_defer_β:     mov              r11, 118
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_441_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_441_12
                                                                              jmp   rax
.Lmatch_defer_β_441_12:                                                       jmp   qword ptr [rsp]
                        .size            n125_match_defer_bx, .-n125_match_defer_bx
                        .type            n126_match_end_bx, @function
n126_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_match_end_α:       mov              r11, 119
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
                        test             rax, rax;                            je    .Lmatch_end_α_443_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_124_af
.Lmatch_end_α_443_13:   add              rsp, 16
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
                        pop              rbp;                                 jmp   n127_lit_string_α
                        .size            n126_match_end_bx, .-n126_match_end_bx
                        .type            n127_lit_string_bx, @function
n127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_match_replace_α
.Llit_string_α_444_0:   .quad            .Llit_string_α_444_0_s
.Llit_string_α_444_0_s: .string          ""
                        .size            n127_lit_string_bx, .-n127_lit_string_bx
                        .type            n128_match_replace_bx, @function
n128_match_replace_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_match_replace_α:   mov              r11, 121
                        mov              rdi, qword ptr [rip + .Lmatch_replace_α_446_0]
                        mov              rsi, qword ptr [rsp + 32]            # var
                        mov              rdx, qword ptr [rsp + 40]
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
                        add              rsp, 16;                             jmp   .Lmatch_replace_α_446_1
.Lmatch_replace_α_446_0:
                        .quad            .Lmatch_replace_α_446_0_s
.Lmatch_replace_α_446_0_s:
                        .string          "ZDATA"
.Lmatch_replace_α_446_1:
                                                                              jmp   n129_statement_end_α
                        .size            n128_match_replace_bx, .-n128_match_replace_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 122
                        mov              r10, 15
                        add              rsp, 80;                             jmp   n130_lit_integer_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#=======================================================================================================================
#         ZIDX = ZIDX + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n130_lit_integer_α:     sub              rsp, 16
                        mov              r11, 123
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_449_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n131_lit_integer_α
.Llit_integer_α_449_0:  .quad            16
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     sub              rsp, 16
                        mov              r11, 124
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_450_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_call_α
.Llit_integer_α_450_0:  .quad            22
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_call_bx, @function
n132_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        mov              r11, 125
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd452:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd452]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_451_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n136_statement_begin_α
.Lcall_α_451_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_statement_begin_α
n132_call_β:            mov              r11, 125
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n136_statement_begin_α
                        .size            n132_call_bx, .-n132_call_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#=======================================================================================================================
# ZCALC   ZTOT = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_453_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_lit_integer_α
.Llit_integer_α_453_0:  .quad            18
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_454_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_call_α
.Llit_integer_α_454_0:  .quad            24
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_call_bx, @function
n135_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_call_α:            sub              rsp, 16
                        mov              r11, 128
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd456:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd456]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_455_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n153_statement_begin_α
.Lcall_α_455_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_statement_begin_α
n135_call_β:            mov              r11, 128
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n153_statement_begin_α
                        .size            n135_call_bx, .-n135_call_bx
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 129
                        mov              r10, 16;                             jmp   n137_var_α
n136_statement_begin_β: mov              r11, 129
                        add              rsp, 48;                             jmp   n142_lit_integer_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 130
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_lit_integer_α
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     sub              rsp, 16
                        mov              r11, 131
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_binop_α
n138_lit_integer_β:     mov              r11, 131
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
.Llit_integer_α_460_0:  .quad            1
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_binop_bx, @function
n139_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:           sub              rsp, 16
                        mov              r11, 132
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_461_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_461_7
.Lbinop_α_461_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_461_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_461_4
.Lbinop_α_461_3:        movq             xmm0, rsi
.Lbinop_α_461_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_461_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_461_7:                                                              jmp   n140_assign_α
.Lbinop_α_461_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_461_240
                        add              rsp, 16;                             jmp   n138_lit_integer_β
.Lbinop_α_461_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_assign_α
                        .size            n139_binop_bx, .-n139_binop_bx
                        .type            n140_assign_bx, @function
n140_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # ZIDX
                        mov              qword ptr [r9 + 152], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_462_0]
                        .section         .rodata
.Lassign_α_462_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_462_1_s]
                        mov              r8, 24
                        mov              r9, 16
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
                        pop              rax;                                 jmp   n141_statement_end_α
.Lassign_α_462_0:       .quad            .Lassign_α_462_0_s
.Lassign_α_462_0_s:     .string          "ZIDX"
                        .size            n140_assign_bx, .-n140_assign_bx
                        .type            n141_statement_end_bx, @function
n141_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 134
                        mov              r10, 16
                        add              rsp, 96;                             jmp   n142_lit_integer_α
                        .size            n141_statement_end_bx, .-n141_statement_end_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#=======================================================================================================================
#         ZTAB[ZIDX] = ZWORD + 0                          :(ZPARSE)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n142_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_465_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n143_lit_integer_α
.Llit_integer_α_465_0:  .quad            17
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_lit_integer_bx, @function
n143_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     sub              rsp, 16
                        mov              r11, 136
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_466_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_call_α
.Llit_integer_α_466_0:  .quad            23
                        .size            n143_lit_integer_bx, .-n143_lit_integer_bx
                        .type            n144_call_bx, @function
n144_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_call_α:            sub              rsp, 16
                        mov              r11, 137
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd468:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd468]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_467_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n145_statement_begin_α
.Lcall_α_467_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_statement_begin_α
n144_call_β:            mov              r11, 137
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n145_statement_begin_α
                        .size            n144_call_bx, .-n144_call_bx
                        .type            n145_statement_begin_bx, @function
n145_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 138
                        mov              r10, 17;                             jmp   n146_var_α
n145_statement_begin_β: mov              r11, 138
                        add              rsp, 48;                             jmp   n117_lit_integer_α
                        .size            n145_statement_begin_bx, .-n145_statement_begin_bx
                        .type            n146_var_bx, @function
n146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 112]            # ZTAB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
                        .size            n146_var_bx, .-n146_var_bx
                        .type            n147_var_bx, @function
n147_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_var_α
n147_var_β:             mov              r11, 140
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
                        .size            n147_var_bx, .-n147_var_bx
                        .type            n148_var_bx, @function
n148_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 64]             # ZWORD
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_lit_integer_α
n148_var_β:             mov              r11, 141
                        add              rsp, 16;                             jmp   n147_var_β
                        .size            n148_var_bx, .-n148_var_bx
                        .type            n149_lit_integer_bx, @function
n149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_binop_α
n149_lit_integer_β:     mov              r11, 142
                        add              rsp, 16;                             jmp   n148_var_β
.Llit_integer_α_474_0:  .quad            0
                        .size            n149_lit_integer_bx, .-n149_lit_integer_bx
                        .type            n150_binop_bx, @function
n150_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:           sub              rsp, 16
                        mov              r11, 143
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_475_2
                        add              rax, 0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_475_7
.Lbinop_α_475_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_475_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 0
                        cmp              al, 5;                               je    .Lbinop_α_475_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_475_4
.Lbinop_α_475_3:        movq             xmm0, rsi
.Lbinop_α_475_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_475_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_475_7:                                                              jmp   n151_assign_var_α
.Lbinop_α_475_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_475_240
                        add              rsp, 16;                             jmp   n149_lit_integer_β
.Lbinop_α_475_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_assign_var_α
n150_binop_β:           mov              r11, 143
                        add              rsp, 16;                             jmp   n149_lit_integer_β
                        .size            n150_binop_bx, .-n150_binop_bx
                        .type            n151_assign_var_bx, @function
n151_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_var_α:      sub              rsp, 16
                        mov              r11, 144
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lassign_var_α_477_0
                        test             rsi, rsi;                            je    .Lassign_var_α_477_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_table_assign_fast@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_477_238
                        add              rsp, 16;                             jmp   n150_binop_β
.Lassign_var_α_477_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_statement_end_α
.Lassign_var_α_477_0:   mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_477_239
                        add              rsp, 16;                             jmp   n150_binop_β
.Lassign_var_α_477_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lassign_var_α_477_240
                        add              rsp, 16;                             jmp   n150_binop_β
.Lassign_var_α_477_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_statement_end_α
                        .size            n151_assign_var_bx, .-n151_assign_var_bx
                        .type            n152_statement_end_bx, @function
n152_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 145
                        mov              r10, 17
                        add              rsp, 144;                            jmp   n117_lit_integer_α
                        .size            n152_statement_end_bx, .-n152_statement_end_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 146
                        mov              r10, 18;                             jmp   n154_lit_integer_α
n153_statement_begin_β: mov              r11, 146
                        add              rsp, 48;                             jmp   n157_lit_integer_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              r11, 147
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_482_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_assign_α
.Llit_integer_α_482_0:  .quad            0
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_assign_bx, @function
n155_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_α:          mov              r11, 148
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZTOT
                        mov              qword ptr [r9 + 168], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_483_0]
                        .section         .rodata
.Lassign_α_483_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_483_1_s]
                        mov              r8, 23
                        mov              r9, 18
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
                        pop              rax;                                 jmp   n156_statement_end_α
.Lassign_α_483_0:       .quad            .Lassign_α_483_0_s
.Lassign_α_483_0_s:     .string          "ZTOT"
                        .size            n155_assign_bx, .-n155_assign_bx
                        .type            n156_statement_end_bx, @function
n156_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 149
                        mov              r10, 18
                        add              rsp, 64;                             jmp   n157_lit_integer_α
                        .size            n156_statement_end_bx, .-n156_statement_end_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#=======================================================================================================================
#         ZJ = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n157_lit_integer_α:     sub              rsp, 16
                        mov              r11, 150
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_486_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_lit_integer_α
.Llit_integer_α_486_0:  .quad            19
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_lit_integer_bx, @function
n158_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 151
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_487_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_call_α
.Llit_integer_α_487_0:  .quad            25
                        .size            n158_lit_integer_bx, .-n158_lit_integer_bx
                        .type            n159_call_bx, @function
n159_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            sub              rsp, 16
                        mov              r11, 152
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd489:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd489]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_488_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n160_statement_begin_α
.Lcall_α_488_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_statement_begin_α
n159_call_β:            mov              r11, 152
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n160_statement_begin_α
                        .size            n159_call_bx, .-n159_call_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 153
                        mov              r10, 19;                             jmp   n161_lit_integer_α
n160_statement_begin_β: mov              r11, 153
                        add              rsp, 48;                             jmp   n164_lit_integer_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_492_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_assign_α
.Llit_integer_α_492_0:  .quad            0
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_assign_bx, @function
n162_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              r11, 155
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZJ
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_493_0]
                        .section         .rodata
.Lassign_α_493_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_493_1_s]
                        mov              r8, 25
                        mov              r9, 19
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
                        pop              rax;                                 jmp   n163_statement_end_α
.Lassign_α_493_0:       .quad            .Lassign_α_493_0_s
.Lassign_α_493_0_s:     .string          "ZJ"
                        .size            n162_assign_bx, .-n162_assign_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 156
                        mov              r10, 19
                        add              rsp, 64;                             jmp   n164_lit_integer_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_lit_integer_bx, @function
n164_lit_integer_bx:
#=======================================================================================================================
# ZADD    ZJ = LT(ZJ, ZIDX) ZJ + 1                        :F(ZNEXT)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n164_lit_integer_α:     sub              rsp, 16
                        mov              r11, 157
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_496_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_lit_integer_α
.Llit_integer_α_496_0:  .quad            20
                        .size            n164_lit_integer_bx, .-n164_lit_integer_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              r11, 158
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_call_α
.Llit_integer_α_497_0:  .quad            26
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_call_bx, @function
n166_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            sub              rsp, 16
                        mov              r11, 159
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd499:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd499]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_498_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n167_statement_begin_α
.Lcall_α_498_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_statement_begin_α
n166_call_β:            mov              r11, 159
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n167_statement_begin_α
                        .size            n166_call_bx, .-n166_call_bx
                        .type            n167_statement_begin_bx, @function
n167_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α: mov              r11, 160
                        mov              r10, 20;                             jmp   n168_var_α
n167_statement_begin_β: mov              r11, 160
                        add              rsp, 48;                             jmp   n181_lit_integer_α
                        .size            n167_statement_begin_bx, .-n167_statement_begin_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_var_α
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_var_bx, @function
n169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 144]            # ZIDX
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_coerce_numeric_α
n169_var_β:             mov              r11, 162
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n167_statement_begin_β
                        .size            n169_var_bx, .-n169_var_bx
                        .type            n170_coerce_numeric_bx, @function
n170_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 163
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_505_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_505_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_505_0
.Lcoerce_numeric_α_505_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n171_coerce_numeric_α
.Lcoerce_numeric_α_505_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n171_coerce_numeric_α
n170_coerce_numeric_β:  mov              r11, 163
                        add              rsp, 16;                             jmp   n169_var_β
                        .size            n170_coerce_numeric_bx, .-n170_coerce_numeric_bx
                        .type            n171_coerce_numeric_bx, @function
n171_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_507_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_507_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_507_0
.Lcoerce_numeric_α_507_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_cmp_test_α
.Lcoerce_numeric_α_507_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_cmp_test_α
n171_coerce_numeric_β:  mov              r11, 164
                        add              rsp, 16;                             jmp   n170_coerce_numeric_β
                        .size            n171_coerce_numeric_bx, .-n171_coerce_numeric_bx
                        .type            n172_cmp_test_bx, @function
n172_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_cmp_test_α:        sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_509_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_509_239
                        add              rsp, 16;                             jmp   n171_coerce_numeric_β
.Lcmp_test_α_509_239:                                                         jmp   n173_var_α
.Lcmp_test_α_509_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_509_240
                        add              rsp, 16;                             jmp   n171_coerce_numeric_β
.Lcmp_test_α_509_240:                                                         jmp   n173_var_α
n172_cmp_test_β:        mov              r11, 165
                        add              rsp, 16;                             jmp   n171_coerce_numeric_β
                        .size            n172_cmp_test_bx, .-n172_cmp_test_bx
                        .type            n173_var_bx, @function
n173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n174_lit_integer_α
n173_var_β:             mov              r11, 166
                        add              rsp, 16;                             jmp   n172_cmp_test_β
                        .size            n173_var_bx, .-n173_var_bx
                        .type            n174_lit_integer_bx, @function
n174_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_integer_α:     sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_511_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_binop_α
n174_lit_integer_β:     mov              r11, 167
                        add              rsp, 16;                             jmp   n173_var_β
.Llit_integer_α_511_0:  .quad            1
                        .size            n174_lit_integer_bx, .-n174_lit_integer_bx
                        .type            n175_binop_bx, @function
n175_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_binop_α:           sub              rsp, 16
                        mov              r11, 168
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_512_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_512_7
.Lbinop_α_512_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_512_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_512_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_512_4
.Lbinop_α_512_3:        movq             xmm0, rsi
.Lbinop_α_512_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_512_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_512_7:                                                              jmp   n176_assign_α
.Lbinop_α_512_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_512_240
                        add              rsp, 16;                             jmp   n174_lit_integer_β
.Lbinop_α_512_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_assign_α
                        .size            n175_binop_bx, .-n175_binop_bx
                        .type            n176_assign_bx, @function
n176_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_assign_α:          mov              r11, 169
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZJ
                        mov              qword ptr [r9 + 184], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_513_0]
                        .section         .rodata
.Lassign_α_513_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_513_1_s]
                        mov              r8, 26
                        mov              r9, 20
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
                        pop              rax;                                 jmp   n177_statement_end_α
.Lassign_α_513_0:       .quad            .Lassign_α_513_0_s
.Lassign_α_513_0_s:     .string          "ZJ"
                        .size            n176_assign_bx, .-n176_assign_bx
                        .type            n177_statement_end_bx, @function
n177_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 170
                        mov              r10, 20
                        add              rsp, 176;                            jmp   n178_lit_integer_α
                        .size            n177_statement_end_bx, .-n177_statement_end_bx
                        .type            n178_lit_integer_bx, @function
n178_lit_integer_bx:
#=======================================================================================================================
#         ZTOT = ZTOT + ZTAB[ZJ]                          :(ZADD)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n178_lit_integer_α:     sub              rsp, 16
                        mov              r11, 171
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n179_lit_integer_α
.Llit_integer_α_516_0:  .quad            21
                        .size            n178_lit_integer_bx, .-n178_lit_integer_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     sub              rsp, 16
                        mov              r11, 172
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_call_α
.Llit_integer_α_517_0:  .quad            27
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            sub              rsp, 16
                        mov              r11, 173
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd519:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd519]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_518_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n184_statement_begin_α
.Lcall_α_518_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_statement_begin_α
n180_call_β:            mov              r11, 173
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n184_statement_begin_α
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_lit_integer_bx, @function
n181_lit_integer_bx:
#=======================================================================================================================
# ZNEXT   ZS = ZS + ZTOT + RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n181_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_520_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n182_lit_integer_α
.Llit_integer_α_520_0:  .quad            22
                        .size            n181_lit_integer_bx, .-n181_lit_integer_bx
                        .type            n182_lit_integer_bx, @function
n182_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_integer_α:     sub              rsp, 16
                        mov              r11, 175
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_521_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_call_α
.Llit_integer_α_521_0:  .quad            28
                        .size            n182_lit_integer_bx, .-n182_lit_integer_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            sub              rsp, 16
                        mov              r11, 176
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd523:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd523]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_522_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n193_statement_begin_α
.Lcall_α_522_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n193_statement_begin_α
n183_call_β:            mov              r11, 176
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n193_statement_begin_α
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_statement_begin_bx, @function
n184_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 177
                        mov              r10, 21;                             jmp   n185_var_α
n184_statement_begin_β: mov              r11, 177
                        add              rsp, 48;                             jmp   n164_lit_integer_α
                        .size            n184_statement_begin_bx, .-n184_statement_begin_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              r11, 178
                        mov              rax, qword ptr [r9 + 160]            # ZTOT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_var_α
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_var_bx, @function
n186_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              r11, 179
                        mov              rax, qword ptr [r9 + 112]            # ZTAB
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_var_α
n186_var_β:             mov              r11, 179
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
                        .size            n186_var_bx, .-n186_var_bx
                        .type            n187_var_bx, @function
n187_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 176]            # ZJ
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_subscript_α
n187_var_β:             mov              r11, 180
                        add              rsp, 16;                             jmp   n186_var_β
                        .size            n187_var_bx, .-n187_var_bx
                        .type            n188_subscript_bx, @function
n188_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_subscript_α:       sub              rsp, 16
                        mov              r11, 181
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_container_only@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_529_240
                        add              rsp, 16;                             jmp   n187_var_β
.Lsubscript_α_529_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_deref_α
n188_subscript_β:       mov              r11, 181
                        add              rsp, 16;                             jmp   n187_var_β
                        .size            n188_subscript_bx, .-n188_subscript_bx
                        .type            n189_deref_bx, @function
n189_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_deref_α:           sub              rsp, 16
                        mov              r11, 182
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lderef_α_530_240
                        add              rsp, 16;                             jmp   n188_subscript_β
.Lderef_α_530_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_binop_α
n189_deref_β:           mov              r11, 182
                        add              rsp, 16;                             jmp   n188_subscript_β
                        .size            n189_deref_bx, .-n189_deref_bx
                        .type            n190_binop_bx, @function
n190_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:           sub              rsp, 16
                        mov              r11, 183
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # deref
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_531_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # deref
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_531_7
.Lbinop_α_531_2:        and              edx, 1;                              jz    .Lbinop_α_531_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # deref
                        cmp              al, 5;                               je    .Lbinop_α_531_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_531_4
.Lbinop_α_531_3:        movq             xmm0, rsi
.Lbinop_α_531_4:        cmp              cl, 5;                               je    .Lbinop_α_531_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_531_6
.Lbinop_α_531_5:        movq             xmm1, rdi
.Lbinop_α_531_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_531_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_531_7:                                                              jmp   n191_assign_α
.Lbinop_α_531_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # deref
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_531_240
                        add              rsp, 16;                             jmp   n189_deref_β
.Lbinop_α_531_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_assign_α
                        .size            n190_binop_bx, .-n190_binop_bx
                        .type            n191_assign_bx, @function
n191_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZTOT
                        mov              qword ptr [r9 + 168], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_532_0]
                        .section         .rodata
.Lassign_α_532_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_532_1_s]
                        mov              r8, 28
                        mov              r9, 21
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
                        pop              rax;                                 jmp   n192_statement_end_α
.Lassign_α_532_0:       .quad            .Lassign_α_532_0_s
.Lassign_α_532_0_s:     .string          "ZTOT"
                        .size            n191_assign_bx, .-n191_assign_bx
                        .type            n192_statement_end_bx, @function
n192_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 185
                        mov              r10, 21
                        add              rsp, 144;                            jmp   n164_lit_integer_α
                        .size            n192_statement_end_bx, .-n192_statement_end_bx
                        .type            n193_statement_begin_bx, @function
n193_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 186
                        mov              r10, 22;                             jmp   n194_var_α
n193_statement_begin_β: mov              r11, 186
                        add              rsp, 48;                             jmp   n202_lit_integer_α
                        .size            n193_statement_begin_bx, .-n193_statement_begin_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              r11, 187
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_var_α
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 160]            # ZTOT
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_binop_α
n195_var_β:             mov              r11, 188
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_binop_bx, @function
n196_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:           sub              rsp, 16
                        mov              r11, 189
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_539_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_539_7
.Lbinop_α_539_2:        and              edx, 1;                              jz    .Lbinop_α_539_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_539_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_539_4
.Lbinop_α_539_3:        movq             xmm0, rsi
.Lbinop_α_539_4:        cmp              cl, 5;                               je    .Lbinop_α_539_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_539_6
.Lbinop_α_539_5:        movq             xmm1, rdi
.Lbinop_α_539_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_539_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_539_7:                                                              jmp   n197_lit_integer_α
.Lbinop_α_539_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_539_240
                        add              rsp, 16;                             jmp   n195_var_β
.Lbinop_α_539_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n197_lit_integer_α
n196_binop_β:           mov              r11, 189
                        add              rsp, 16;                             jmp   n195_var_β
                        .size            n196_binop_bx, .-n196_binop_bx
                        .type            n197_lit_integer_bx, @function
n197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_integer_α:     sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_540_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_call_α
n197_lit_integer_β:     mov              r11, 190
                        add              rsp, 16;                             jmp   n196_binop_β
.Llit_integer_α_540_0:  .quad            10
                        .size            n197_lit_integer_bx, .-n197_lit_integer_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            sub              rsp, 16
                        mov              r11, 191
                        lea              rcx, [rip + .Lcall_α_sig542z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lcall_α_sig542z:       .quad            1
                        .quad            .Lcall_α_542_2
                        .quad            .Lcall_α_542_2
                        .quad            16
.Lcall_α_542_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_542_29
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
.Lcall_α_542_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_542_240
                        add              rsp, 16;                             jmp   n197_lit_integer_β
.Lcall_α_542_240:                                                             jmp   n199_binop_α
n198_call_β:            mov              r11, 191;                            jmp   n197_lit_integer_β
.Lcall_β_542_0:         .quad            .Lcall_β_542_0_s
.Lcall_β_542_0_s:       .string          "RSUM"
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_binop_bx, @function
n199_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_binop_α:           sub              rsp, 16
                        mov              r11, 192
                        mov              eax, dword ptr [rsp + 48]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_543_2
                        mov              rax, qword ptr [rsp + 56]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_543_7
.Lbinop_α_543_2:        and              edx, 1;                              jz    .Lbinop_α_543_0
                        mov              rsi, qword ptr [rsp + 56]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_543_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_543_4
.Lbinop_α_543_3:        movq             xmm0, rsi
.Lbinop_α_543_4:        cmp              cl, 5;                               je    .Lbinop_α_543_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_543_6
.Lbinop_α_543_5:        movq             xmm1, rdi
.Lbinop_α_543_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_543_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_543_7:                                                              jmp   n200_assign_α
.Lbinop_α_543_0:        mov              rdi, qword ptr [rsp + 48]            # binop
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_543_240
                        add              rsp, 32;                             jmp   n197_lit_integer_β
.Lbinop_α_543_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_assign_α
                        .size            n199_binop_bx, .-n199_binop_bx
                        .type            n200_assign_bx, @function
n200_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              r11, 193
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # ZS
                        mov              qword ptr [r9 + 104], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_544_0]
                        .section         .rodata
.Lassign_α_544_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_544_1_s]
                        mov              r8, 28
                        mov              r9, 22
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
                        pop              rax;                                 jmp   n201_statement_end_α
.Lassign_α_544_0:       .quad            .Lassign_α_544_0_s
.Lassign_α_544_0_s:     .string          "ZS"
                        .size            n200_assign_bx, .-n200_assign_bx
                        .type            n201_statement_end_bx, @function
n201_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   mov              r11, 194
                        mov              r10, 22
                        add              rsp, 144;                            jmp   n202_lit_integer_α
                        .size            n201_statement_end_bx, .-n201_statement_end_bx
                        .type            n202_lit_integer_bx, @function
n202_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n202_lit_integer_α:     sub              rsp, 16
                        mov              r11, 195
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_547_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_lit_integer_α
.Llit_integer_α_547_0:  .quad            23
                        .size            n202_lit_integer_bx, .-n202_lit_integer_bx
                        .type            n203_lit_integer_bx, @function
n203_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_call_α
.Llit_integer_α_548_0:  .quad            29
                        .size            n203_lit_integer_bx, .-n203_lit_integer_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            sub              rsp, 16
                        mov              r11, 197
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd550:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd550]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_549_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n205_statement_begin_α
.Lcall_α_549_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_statement_begin_α
n204_call_β:            mov              r11, 197
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n205_statement_begin_α
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_statement_begin_bx, @function
n205_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 198
                        mov              r10, 23;                             jmp   n206_var_α
n205_statement_begin_β: mov              r11, 198
                        add              rsp, 48;                             jmp   n216_lit_integer_α
                        .size            n205_statement_begin_bx, .-n205_statement_begin_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_var_α
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_var_bx, @function
n207_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 200
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_coerce_numeric_α
n207_var_β:             mov              r11, 200
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
                        .size            n207_var_bx, .-n207_var_bx
                        .type            n208_coerce_numeric_bx, @function
n208_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 201
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_556_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_556_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_556_0
.Lcoerce_numeric_α_556_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_coerce_numeric_α
.Lcoerce_numeric_α_556_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n209_coerce_numeric_α
n208_coerce_numeric_β:  mov              r11, 201
                        add              rsp, 16;                             jmp   n207_var_β
                        .size            n208_coerce_numeric_bx, .-n208_coerce_numeric_bx
                        .type            n209_coerce_numeric_bx, @function
n209_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 202
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_558_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_558_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_558_0
.Lcoerce_numeric_α_558_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_cmp_test_α
.Lcoerce_numeric_α_558_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n210_cmp_test_α
n209_coerce_numeric_β:  mov              r11, 202
                        add              rsp, 16;                             jmp   n208_coerce_numeric_β
                        .size            n209_coerce_numeric_bx, .-n209_coerce_numeric_bx
                        .type            n210_cmp_test_bx, @function
n210_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_cmp_test_α:        sub              rsp, 16
                        mov              r11, 203
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_560_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_560_239
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lcmp_test_α_560_239:                                                         jmp   n211_var_α
.Lcmp_test_α_560_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_560_240
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lcmp_test_α_560_240:                                                         jmp   n211_var_α
n210_cmp_test_β:        mov              r11, 203
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
                        .size            n210_cmp_test_bx, .-n210_cmp_test_bx
                        .type            n211_var_bx, @function
n211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              r11, 204
                        mov              rax, qword ptr [r9 + 80]             # ZI
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_lit_integer_α
n211_var_β:             mov              r11, 204
                        add              rsp, 16;                             jmp   n210_cmp_test_β
                        .size            n211_var_bx, .-n211_var_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     sub              rsp, 16
                        mov              r11, 205
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_binop_α
n212_lit_integer_β:     mov              r11, 205
                        add              rsp, 16;                             jmp   n211_var_β
.Llit_integer_α_562_0:  .quad            1
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_binop_bx, @function
n213_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:           sub              rsp, 16
                        mov              r11, 206
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_563_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_563_7
.Lbinop_α_563_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_563_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_563_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_563_4
.Lbinop_α_563_3:        movq             xmm0, rsi
.Lbinop_α_563_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_563_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_563_7:                                                              jmp   n214_assign_α
.Lbinop_α_563_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_563_240
                        add              rsp, 16;                             jmp   n212_lit_integer_β
.Lbinop_α_563_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n214_assign_α
                        .size            n213_binop_bx, .-n213_binop_bx
                        .type            n214_assign_bx, @function
n214_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # ZI
                        mov              qword ptr [r9 + 88], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_564_0]
                        .section         .rodata
.Lassign_α_564_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_564_1_s]
                        mov              r8, 29
                        mov              r9, 23
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
                        pop              rax;                                 jmp   n215_statement_end_α
.Lassign_α_564_0:       .quad            .Lassign_α_564_0_s
.Lassign_α_564_0_s:     .string          "ZI"
                        .size            n214_assign_bx, .-n214_assign_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 208
                        mov              r10, 23
                        add              rsp, 176;                            jmp   n95_lit_integer_α
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_lit_integer_bx, @function
n216_lit_integer_bx:
#=======================================================================================================================
#         MIXED_WORKLOAD = ZS                             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n216_lit_integer_α:     sub              rsp, 16
                        mov              r11, 209
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_567_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n217_lit_integer_α
.Llit_integer_α_567_0:  .quad            24
                        .size            n216_lit_integer_bx, .-n216_lit_integer_bx
                        .type            n217_lit_integer_bx, @function
n217_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_integer_α:     sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_568_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n218_call_α
.Llit_integer_α_568_0:  .quad            30
                        .size            n217_lit_integer_bx, .-n217_lit_integer_bx
                        .type            n218_call_bx, @function
n218_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            sub              rsp, 16
                        mov              r11, 211
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd570:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd570]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_569_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n219_statement_begin_α
.Lcall_α_569_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_statement_begin_α
n218_call_β:            mov              r11, 211
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n219_statement_begin_α
                        .size            n218_call_bx, .-n218_call_bx
                        .type            n219_statement_begin_bx, @function
n219_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_begin_α: mov              r11, 212
                        mov              r10, 24;                             jmp   n220_var_α
n219_statement_begin_β: mov              r11, 212
                        add              rsp, 48;                             jmp   RETURN
                        .size            n219_statement_begin_bx, .-n219_statement_begin_bx
                        .type            n220_var_bx, @function
n220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 96]             # ZS
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_assign_α
                        .size            n220_var_bx, .-n220_var_bx
                        .type            n221_assign_bx, @function
n221_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 214
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # MIXED_WORKLOAD
                        mov              qword ptr [r9 + 40], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_574_0]
                        .section         .rodata
.Lassign_α_574_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_574_1_s]
                        mov              r8, 30
                        mov              r9, 24
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
                        pop              rax;                                 jmp   n222_statement_end_α
.Lassign_α_574_0:       .quad            .Lassign_α_574_0_s
.Lassign_α_574_0_s:     .string          "MIXED_WORKLOAD"
                        .size            n221_assign_bx, .-n221_assign_bx
                        .type            n222_statement_end_bx, @function
n222_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   mov              r11, 215
                        mov              r10, 24
                        add              rsp, 64;                             jmp   RETURN
                        .size            n222_statement_end_bx, .-n222_statement_end_bx
                        .type            n223_statement_begin_bx, @function
n223_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 216
                        mov              r10, 25;                             jmp   n224_statement_end_α
n223_statement_begin_β: mov              r11, 216
                        add              rsp, 48;                             jmp   n225_lit_integer_α
                        .size            n223_statement_begin_bx, .-n223_statement_begin_bx
                        .type            n224_statement_end_bx, @function
n224_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   mov              r11, 217
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n225_lit_integer_α
                        .size            n224_statement_end_bx, .-n224_statement_end_bx
                        .type            n225_lit_integer_bx, @function
n225_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'RSUM(10) = ' RSUM(10)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n225_lit_integer_α:     sub              rsp, 16
                        mov              r11, 218
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_581_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_lit_integer_α
.Llit_integer_α_581_0:  .quad            26
                        .size            n225_lit_integer_bx, .-n225_lit_integer_bx
                        .type            n226_lit_integer_bx, @function
n226_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_582_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_call_α
.Llit_integer_α_582_0:  .quad            33
                        .size            n226_lit_integer_bx, .-n226_lit_integer_bx
                        .type            n227_call_bx, @function
n227_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            sub              rsp, 16
                        mov              r11, 220
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd584:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd584]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_583_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n228_statement_begin_α
.Lcall_α_583_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_statement_begin_α
n227_call_β:            mov              r11, 220
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n228_statement_begin_α
                        .size            n227_call_bx, .-n227_call_bx
                        .type            n228_statement_begin_bx, @function
n228_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_begin_α: mov              r11, 221
                        mov              r10, 26;                             jmp   n229_lit_string_α
n228_statement_begin_β: mov              r11, 221
                        add              rsp, 48;                             jmp   n235_lit_integer_α
                        .size            n228_statement_begin_bx, .-n228_statement_begin_bx
                        .type            n229_lit_string_bx, @function
n229_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_string_α:      sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_587_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_lit_integer_α
.Llit_string_α_587_0:   .quad            .Llit_string_α_587_0_s
.Llit_string_α_587_0_s: .string          "RSUM(10) = "
                        .size            n229_lit_string_bx, .-n229_lit_string_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     sub              rsp, 16
                        mov              r11, 223
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_588_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_call_α
n230_lit_integer_β:     mov              r11, 223
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n228_statement_begin_β
.Llit_integer_α_588_0:  .quad            10
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            sub              rsp, 16
                        mov              r11, 224
                        lea              rcx, [rip + .Lcall_α_sig590z]
                        lea              rax, [rip + RSUM_α];                 jmp   rax
.Lcall_α_sig590z:       .quad            1
                        .quad            .Lcall_α_590_2
                        .quad            .Lcall_α_590_2
                        .quad            16
.Lcall_α_590_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_590_29
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
.Lcall_α_590_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_590_240
                        add              rsp, 16;                             jmp   n230_lit_integer_β
.Lcall_α_590_240:                                                             jmp   n232_binop_α
n231_call_β:            mov              r11, 224;                            jmp   n230_lit_integer_β
.Lcall_β_590_0:         .quad            .Lcall_β_590_0_s
.Lcall_β_590_0_s:       .string          "RSUM"
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_binop_bx, @function
n232_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_binop_α:           sub              rsp, 16
                        mov              r11, 225
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_assign_α
                        .size            n232_binop_bx, .-n232_binop_bx
                        .type            n233_assign_bx, @function
n233_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_assign_α:          mov              r11, 226
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
                        mov              rdi, qword ptr [rip + .Lassign_α_592_0]
                        .section         .rodata
.Lassign_α_592_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_592_1_s]
                        mov              r8, 33
                        mov              r9, 26
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
                        mov              rdi, qword ptr [rip + .Lassign_α_592_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_statement_end_α
.Lassign_α_592_0:       .quad            .Lassign_α_592_0_s
.Lassign_α_592_0_s:     .string          "OUTPUT"
                        .size            n233_assign_bx, .-n233_assign_bx
                        .type            n234_statement_end_bx, @function
n234_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_end_α:   mov              r11, 227
                        mov              r10, 26
                        add              rsp, 112;                            jmp   n235_lit_integer_α
                        .size            n234_statement_end_bx, .-n234_statement_end_bx
                        .type            n235_lit_integer_bx, @function
n235_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'one record = ' MIXED_WORKLOAD(1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n235_lit_integer_α:     sub              rsp, 16
                        mov              r11, 228
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_595_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n236_lit_integer_α
.Llit_integer_α_595_0:  .quad            27
                        .size            n235_lit_integer_bx, .-n235_lit_integer_bx
                        .type            n236_lit_integer_bx, @function
n236_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_596_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_call_α
.Llit_integer_α_596_0:  .quad            34
                        .size            n236_lit_integer_bx, .-n236_lit_integer_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            sub              rsp, 16
                        mov              r11, 230
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd598:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd598]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_597_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n238_statement_begin_α
.Lcall_α_597_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_statement_begin_α
n237_call_β:            mov              r11, 230
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n238_statement_begin_α
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_statement_begin_bx, @function
n238_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α: mov              r11, 231
                        mov              r10, 27;                             jmp   n239_lit_string_α
n238_statement_begin_β: mov              r11, 231
                        add              rsp, 48;                             jmp   n245_lit_integer_α
                        .size            n238_statement_begin_bx, .-n238_statement_begin_bx
                        .type            n239_lit_string_bx, @function
n239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_string_α:      sub              rsp, 16
                        mov              r11, 232
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_601_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_lit_integer_α
.Llit_string_α_601_0:   .quad            .Llit_string_α_601_0_s
.Llit_string_α_601_0_s: .string          "one record = "
                        .size            n239_lit_string_bx, .-n239_lit_string_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              r11, 233
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_602_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_call_α
n240_lit_integer_β:     mov              r11, 233
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
.Llit_integer_α_602_0:  .quad            1
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            sub              rsp, 16
                        mov              r11, 234
                        lea              rcx, [rip + .Lcall_α_sig604z]
                        lea              rax, [rip + MIXED_WORKLOAD_α];       jmp   rax
.Lcall_α_sig604z:       .quad            1
                        .quad            .Lcall_α_604_2
                        .quad            .Lcall_α_604_2
                        .quad            16
.Lcall_α_604_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_604_29
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
.Lcall_α_604_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_604_240
                        add              rsp, 16;                             jmp   n240_lit_integer_β
.Lcall_α_604_240:                                                             jmp   n242_binop_α
n241_call_β:            mov              r11, 234;                            jmp   n240_lit_integer_β
.Lcall_β_604_0:         .quad            .Lcall_β_604_0_s
.Lcall_β_604_0_s:       .string          "MIXED_WORKLOAD"
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_binop_bx, @function
n242_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_binop_α:           sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_assign_α
                        .size            n242_binop_bx, .-n242_binop_bx
                        .type            n243_assign_bx, @function
n243_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_assign_α:          mov              r11, 236
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
                        mov              rdi, qword ptr [rip + .Lassign_α_606_0]
                        .section         .rodata
.Lassign_α_606_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_606_1_s]
                        mov              r8, 34
                        mov              r9, 27
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
                        mov              rdi, qword ptr [rip + .Lassign_α_606_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_statement_end_α
.Lassign_α_606_0:       .quad            .Lassign_α_606_0_s
.Lassign_α_606_0_s:     .string          "OUTPUT"
                        .size            n243_assign_bx, .-n243_assign_bx
                        .type            n244_statement_end_bx, @function
n244_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 237
                        mov              r10, 27
                        add              rsp, 112;                            jmp   n245_lit_integer_α
                        .size            n244_statement_end_bx, .-n244_statement_end_bx
                        .type            n245_lit_integer_bx, @function
n245_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = '20 records = ' MIXED_WORKLOAD(20)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n245_lit_integer_α:     sub              rsp, 16
                        mov              r11, 238
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_609_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_lit_integer_α
.Llit_integer_α_609_0:  .quad            28
                        .size            n245_lit_integer_bx, .-n245_lit_integer_bx
                        .type            n246_lit_integer_bx, @function
n246_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:     sub              rsp, 16
                        mov              r11, 239
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_610_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n247_call_α
.Llit_integer_α_610_0:  .quad            35
                        .size            n246_lit_integer_bx, .-n246_lit_integer_bx
                        .type            n247_call_bx, @function
n247_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:            sub              rsp, 16
                        mov              r11, 240
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd612:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd612]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_611_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n248_statement_begin_α
.Lcall_α_611_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_statement_begin_α
n247_call_β:            mov              r11, 240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n248_statement_begin_α
                        .size            n247_call_bx, .-n247_call_bx
                        .type            n248_statement_begin_bx, @function
n248_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α: mov              r11, 241
                        mov              r10, 28;                             jmp   n249_lit_string_α
n248_statement_begin_β: mov              r11, 241
                        add              rsp, -64;                            jmp   n255_lit_integer_α
                        .size            n248_statement_begin_bx, .-n248_statement_begin_bx
                        .type            n249_lit_string_bx, @function
n249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      sub              rsp, 16
                        mov              r11, 242
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n250_lit_integer_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          "20 records = "
                        .size            n249_lit_string_bx, .-n249_lit_string_bx
                        .type            n250_lit_integer_bx, @function
n250_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_integer_α:     sub              rsp, 16
                        mov              r11, 243
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_616_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n251_call_α
n250_lit_integer_β:     mov              r11, 243
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n248_statement_begin_β
.Llit_integer_α_616_0:  .quad            20
                        .size            n250_lit_integer_bx, .-n250_lit_integer_bx
                        .type            n251_call_bx, @function
n251_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            sub              rsp, 16
                        mov              r11, 244
                        lea              rcx, [rip + .Lcall_α_sig618z]
                        lea              rax, [rip + MIXED_WORKLOAD_α];       jmp   rax
.Lcall_α_sig618z:       .quad            1
                        .quad            .Lcall_α_618_2
                        .quad            .Lcall_α_618_2
                        .quad            16
.Lcall_α_618_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_618_29
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
.Lcall_α_618_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_618_240
                        add              rsp, 16;                             jmp   n250_lit_integer_β
.Lcall_α_618_240:                                                             jmp   n252_binop_α
n251_call_β:            mov              r11, 244;                            jmp   n250_lit_integer_β
.Lcall_β_618_0:         .quad            .Lcall_β_618_0_s
.Lcall_β_618_0_s:       .string          "MIXED_WORKLOAD"
                        .size            n251_call_bx, .-n251_call_bx
                        .type            n252_binop_bx, @function
n252_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_binop_α:           sub              rsp, 16
                        mov              r11, 245
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_assign_α
                        .size            n252_binop_bx, .-n252_binop_bx
                        .type            n253_assign_bx, @function
n253_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_assign_α:          mov              r11, 246
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
                        mov              rdi, qword ptr [rip + .Lassign_α_620_0]
                        .section         .rodata
.Lassign_α_620_1_s:     .string          "mixed_workload.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_620_1_s]
                        mov              r8, 35
                        mov              r9, 28
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
                        mov              rdi, qword ptr [rip + .Lassign_α_620_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n254_statement_end_α
.Lassign_α_620_0:       .quad            .Lassign_α_620_0_s
.Lassign_α_620_0_s:     .string          "OUTPUT"
                        .size            n253_assign_bx, .-n253_assign_bx
                        .type            n254_statement_end_bx, @function
n254_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_end_α:   mov              r11, 247
                        mov              r10, 28;                             jmp   n255_lit_integer_α
                        .size            n254_statement_end_bx, .-n254_statement_end_bx
                        .type            n255_lit_integer_bx, @function
n255_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_integer_α:     sub              rsp, 16
                        mov              r11, 248
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_623_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_lit_integer_α
.Llit_integer_α_623_0:  .quad            29
                        .size            n255_lit_integer_bx, .-n255_lit_integer_bx
                        .type            n256_lit_integer_bx, @function
n256_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:     sub              rsp, 16
                        mov              r11, 249
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_624_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n257_call_α
.Llit_integer_α_624_0:  .quad            36
                        .size            n256_lit_integer_bx, .-n256_lit_integer_bx
                        .type            n257_call_bx, @function
n257_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            sub              rsp, 16
                        mov              r11, 250
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd626:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd626]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_625_240
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
.Lcall_α_625_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 160;                            jmp   main_γ
n257_call_β:            mov              r11, 250
                        add              rsp, 16
                        add              rsp, 144;                            jmp   main_γ
                        .size            n257_call_bx, .-n257_call_bx
                        .type            n258_goto_bx, @function
n258_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_goto_α:            mov              r11, 251;                            jmp   LBL__RSUM
n258_goto_β:            mov              r11, 251;                            jmp   main_ω
                        .size            n258_goto_bx, .-n258_goto_bx
                        .type            n259_lit_integer_bx, @function
n259_lit_integer_bx:
#=======================================================================================================================
# RSUM    RSUM = EQ(N, 0) 0                               :S(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
LBL__RSUM:              sub              rsp, 16
                        mov              r11, 252
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__RSUM_α_628_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_lit_integer_α
.LLBL__RSUM_α_628_0:    .quad            5
                        .size            n259_lit_integer_bx, .-n259_lit_integer_bx
                        .type            n260_lit_integer_bx, @function
n260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_integer_α:     sub              rsp, 16
                        mov              r11, 253
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_629_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_call_α
.Llit_integer_α_629_0:  .quad            11
                        .size            n260_lit_integer_bx, .-n260_lit_integer_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            sub              rsp, 16
                        mov              r11, 254
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd631:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd631]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_630_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n44_statement_begin_α
.Lcall_α_630_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_statement_begin_α
n261_call_β:            mov              r11, 254
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n44_statement_begin_α
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_goto_bx, @function
n262_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_goto_α:            mov              r11, 255;                            jmp   n41_lit_integer_α
n262_goto_β:            mov              r11, 255;                            jmp   main_ω
                        .size            n262_goto_bx, .-n262_goto_bx
                        .type            n263_goto_bx, @function
n263_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_goto_α:            mov              r11, 256;                            jmp   LBL__MIXED_WORKLOAD
n263_goto_β:            mov              r11, 256;                            jmp   main_ω
                        .size            n263_goto_bx, .-n263_goto_bx
                        .type            n264_lit_integer_bx, @function
n264_lit_integer_bx:
#=======================================================================================================================
# MIXED_WORKLOAD  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
LBL__MIXED_WORKLOAD:    sub              rsp, 16
                        mov              r11, 257
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .LLBL__MIXED_WORKLOAD_α_634_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_lit_integer_α
.LLBL__MIXED_WORKLOAD_α_634_0:
                        .quad            10
                        .size            n264_lit_integer_bx, .-n264_lit_integer_bx
                        .type            n265_lit_integer_bx, @function
n265_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_integer_α:     sub              rsp, 16
                        mov              r11, 258
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_call_α
.Llit_integer_α_635_0:  .quad            16
                        .size            n265_lit_integer_bx, .-n265_lit_integer_bx
                        .type            n266_call_bx, @function
n266_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            sub              rsp, 16
                        mov              r11, 259
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lcall_α_rkfnzd637:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd637]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lcall_α_636_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n84_statement_begin_α
.Lcall_α_636_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_statement_begin_α
n266_call_β:            mov              r11, 259
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n84_statement_begin_α
                        .size            n266_call_bx, .-n266_call_bx
                        .type            n267_goto_bx, @function
n267_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_goto_α:            mov              r11, 260;                            jmp   n95_lit_integer_α
n267_goto_β:            mov              r11, 260;                            jmp   main_ω
                        .size            n267_goto_bx, .-n267_goto_bx
                        .type            n268_goto_bx, @function
n268_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_goto_α:            mov              r11, 261;                            jmp   n117_lit_integer_α
n268_goto_β:            mov              r11, 261;                            jmp   main_ω
                        .size            n268_goto_bx, .-n268_goto_bx
                        .type            n269_goto_bx, @function
n269_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_goto_α:            mov              r11, 262;                            jmp   n133_lit_integer_α
n269_goto_β:            mov              r11, 262;                            jmp   main_ω
                        .size            n269_goto_bx, .-n269_goto_bx
                        .type            n270_goto_bx, @function
n270_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_goto_α:            mov              r11, 263;                            jmp   n164_lit_integer_α
n270_goto_β:            mov              r11, 263;                            jmp   main_ω
                        .size            n270_goto_bx, .-n270_goto_bx
                        .type            n271_goto_bx, @function
n271_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_goto_α:            mov              r11, 264;                            jmp   n181_lit_integer_α
n271_goto_β:            mov              r11, 264;                            jmp   main_ω
                        .size            n271_goto_bx, .-n271_goto_bx
                        .type            n272_goto_bx, @function
n272_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_goto_α:            mov              r11, 265;                            jmp   n81_lit_integer_α
n272_goto_β:            mov              r11, 265;                            jmp   main_ω
                        .size            n272_goto_bx, .-n272_goto_bx
                        .type            n273_define_bx, @function
n273_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 266
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
                        .size            n273_define_bx, .-n273_define_bx
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
.Lstartup_pname0:       .string          "LBL__RSUM"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            LBL__RSUM
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "LBL__MIXED_WORKLOAD"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            LBL__MIXED_WORKLOAD
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            4528
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lseala2:               .string          "RSUM"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            RSUM_α
                        lea              rdi, [rip + .Lseala2]
                        mov              rsi, qword ptr [rip + RSUM_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lseala3:               .string          "MIXED_WORKLOAD"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            MIXED_WORKLOAD_α
                        lea              rdi, [rip + .Lseala3]
                        mov              rsi, qword ptr [rip + MIXED_WORKLOAD_α@GOTPCREL]
                        call             rt_proc_seal_alpha@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "PAT$0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
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
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "ZWORD"
.S1:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
