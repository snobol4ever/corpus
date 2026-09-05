                        .intel_syntax    noprefix
                        .text
                        .file            1 "string_pattern.sno"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 136
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
.Lmatch_break_α_14_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_14_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lmatch_break_α_14_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_14_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_14_0
.Lmatch_break_α_14_1:   mov              dword ptr [rbp + -64], r14d
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
                        add              r14d, 1;                             jmp   n4_match_assign_save_α
n3_match_lit_β:         mov              r11, 4
                        sub              r14d, 1;                             jmp   n2_match_assign_cond_β
                        .size            n3_match_lit_bx, .-n3_match_lit_bx
                        .type            n4_match_assign_save_bx, @function
n4_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_save_α: sub              rsp, 16
                        mov              r11, 5
                        mov              dword ptr [rsp + 0], r14d;           jmp   n5_match_break_α
n4_match_assign_save_β: mov              r11, 5
                        add              rsp, 16;                             jmp   n3_match_lit_β
                        .size            n4_match_assign_save_bx, .-n4_match_assign_save_bx
                        .type            n5_match_break_bx, @function
n5_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_break_α:       sub              rsp, 16
                        mov              r11, 6
                        movsxd           rcx, r14d
.Lmatch_break_α_22_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_22_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
.Lmatch_break_α_22_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_22_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_22_0
.Lmatch_break_α_22_1:   mov              dword ptr [rbp + -96], r14d
                        mov              r14d, ecx;                           jmp   n6_match_assign_cond_α
n5_match_break_β:       mov              r11, 6
                        mov              r14d, dword ptr [rbp + -96]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
                        .size            n5_match_break_bx, .-n5_match_break_bx
                        .type            n6_match_assign_cond_bx, @function
n6_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_cond_α: mov              r11, 7
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n7_match_lit_α
n6_match_assign_cond_β: mov              r11, 7
                        sub              r12, 24;                             jmp   n5_match_break_β
                        .size            n6_match_assign_cond_bx, .-n6_match_assign_cond_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n6_match_assign_cond_β
                        add              r14d, 1;                             jmp   n8_match_assign_save_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_assign_cond_β
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_assign_save_bx, @function
n8_match_assign_save_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: sub              rsp, 16
                        mov              r11, 9
                        mov              dword ptr [rsp + 0], r14d;           jmp   n9_match_break_α
n8_match_assign_save_β: mov              r11, 9
                        add              rsp, 16;                             jmp   n7_match_lit_β
                        .size            n8_match_assign_save_bx, .-n8_match_assign_save_bx
                        .type            n9_match_break_bx, @function
n9_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:       sub              rsp, 16
                        mov              r11, 10
                        movsxd           rcx, r14d
.Lmatch_break_α_30_0:   cmp              ecx, r15d;                           jl    .Lmatch_break_α_30_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lmatch_break_α_30_240: movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lmatch_break_α_30_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_30_0
.Lmatch_break_α_30_1:   mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n10_match_assign_cond_α
n9_match_break_β:       mov              r11, 10
                        mov              r14d, dword ptr [rbp + -128]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
                        .size            n9_match_break_bx, .-n9_match_break_bx
                        .type            n10_match_assign_cond_bx, @function
n10_match_assign_cond_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
                        mov              r11, 11
                        mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S2]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   PAT$0_γ
n10_match_assign_cond_β:
                        mov              r11, 11
                        sub              r12, 24;                             jmp   n9_match_break_β
                        .size            n10_match_assign_cond_bx, .-n10_match_assign_cond_bx
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n10_match_assign_cond_β
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
                        mov              edi, 8
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 8
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "STRING_PATTERN"
.Lgvan1:                .string          "N"
.Lgvan2:                .string          "REC"
.Lgvan3:                .string          "PAT"
.Lgvan4:                .string          "F1"
.Lgvan5:                .string          "F2"
.Lgvan6:                .string          "F3"
.Lgvan7:                .string          "ZI"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
.Llit_integer_α_159_0:  .quad            1
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_lit_string_α
.Llit_integer_α_160_0:  .quad            4
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_call_α
.Llit_string_α_161_0:   .quad            .Llit_string_α_161_0_s
.Llit_string_α_161_0_s: .string          "string_pattern.sno"
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        mov              r11, 15
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
.Lcall_α_rkfnzd163:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd163]
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
                        cmp              al, 104;                             jne   .Lcall_α_162_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_statement_begin_α
.Lcall_α_162_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_statement_begin_α
n36_call_β:             mov              r11, 15
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_statement_begin_α
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 16
                        mov              r10, 1;                              jmp   n38_lit_integer_α
n37_statement_begin_β:  mov              r11, 16
                        add              rsp, 64;                             jmp   n41_lit_integer_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_kw_assign_snobol4_α
.Llit_integer_α_166_0:  .quad            1
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_kw_assign_snobol4_bx, @function
n39_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_167_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_167_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lkw_assign_snobol4_α_167_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_statement_end_α
.Lkw_assign_snobol4_α_167_0:
                        .quad            1
                        .size            n39_kw_assign_snobol4_bx, .-n39_kw_assign_snobol4_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 19
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n41_lit_integer_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n41_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_170_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_lit_integer_α
.Llit_integer_α_170_0:  .quad            2
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_call_α
.Llit_integer_α_171_0:  .quad            5
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             sub              rsp, 16
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
.Lcall_α_rkfnzd173:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd173]
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
                        cmp              al, 104;                             jne   .Lcall_α_172_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n44_statement_begin_α
.Lcall_α_172_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_statement_begin_α
n43_call_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n44_statement_begin_α
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_statement_begin_bx, @function
n44_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:  mov              r11, 23
                        mov              r10, 2;                              jmp   n45_lit_integer_α
n44_statement_begin_β:  mov              r11, 23
                        add              rsp, 48;                             jmp   n48_lit_integer_α
                        .size            n44_statement_begin_bx, .-n44_statement_begin_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_176_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_kw_assign_snobol4_α
.Llit_integer_α_176_0:  .quad            0
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_kw_assign_snobol4_bx, @function
n46_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 25
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_177_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_177_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lkw_assign_snobol4_α_177_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_statement_end_α
.Lkw_assign_snobol4_α_177_0:
                        .quad            0
                        .size            n46_kw_assign_snobol4_bx, .-n46_kw_assign_snobol4_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 26
                        mov              r10, 2
                        add              rsp, 80;                             jmp   n48_lit_integer_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n48_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_180_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n49_lit_integer_α
.Llit_integer_α_180_0:  .quad            3
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_call_α
.Llit_integer_α_181_0:  .quad            6
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             sub              rsp, 16
                        mov              r11, 29
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
.Lcall_α_rkfnzd183:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd183]
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
                        cmp              al, 104;                             jne   .Lcall_α_182_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n51_statement_begin_α
.Lcall_α_182_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_statement_begin_α
n50_call_β:             mov              r11, 29
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n51_statement_begin_α
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 30
                        mov              r10, 3;                              jmp   n52_lit_integer_α
n51_statement_begin_β:  mov              r11, 30
                        add              rsp, 48;                             jmp   n56_lit_integer_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_186_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_unop_α
.Llit_integer_α_186_0:  .quad            1
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_unop_bx, @function
n53_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_unop_α:             sub              rsp, 16
                        mov              r11, 32
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_kw_assign_snobol4_α
n53_unop_β:             mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
                        .size            n53_unop_bx, .-n53_unop_bx
                        .type            n54_kw_assign_snobol4_bx, @function
n54_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 33
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_188_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_188_240
                        add              rsp, 16;                             jmp   n53_unop_β
.Lkw_assign_snobol4_α_188_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_statement_end_α
.Lkw_assign_snobol4_α_188_0:
                        .quad            10
                        .size            n54_kw_assign_snobol4_bx, .-n54_kw_assign_snobol4_bx
                        .type            n55_statement_end_bx, @function
n55_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 34
                        mov              r10, 3
                        add              rsp, 96;                             jmp   n56_lit_integer_α
                        .size            n55_statement_end_bx, .-n55_statement_end_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#=======================================================================================================================
#         REC = 'alpha,beta,gamma,delta,epsilon'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 35
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_lit_integer_α
.Llit_integer_α_191_0:  .quad            4
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_call_α
.Llit_integer_α_192_0:  .quad            7
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_call_bx, @function
n58_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_α:             sub              rsp, 16
                        mov              r11, 37
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
.Lcall_α_rkfnzd194:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd194]
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
                        cmp              al, 104;                             jne   .Lcall_α_193_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n59_statement_begin_α
.Lcall_α_193_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_statement_begin_α
n58_call_β:             mov              r11, 37
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n59_statement_begin_α
                        .size            n58_call_bx, .-n58_call_bx
                        .type            n59_statement_begin_bx, @function
n59_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_begin_α:  mov              r11, 38
                        mov              r10, 4;                              jmp   n60_lit_string_α
n59_statement_begin_β:  mov              r11, 38
                        add              rsp, 48;                             jmp   n63_lit_integer_α
                        .size            n59_statement_begin_bx, .-n59_statement_begin_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Llit_string_α_197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_assign_α
.Llit_string_α_197_0:   .quad            .Llit_string_α_197_0_s
.Llit_string_α_197_0_s: .string          "alpha,beta,gamma,delta,epsilon"
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_assign_bx, @function
n61_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # REC
                        mov              qword ptr [r9 + 40], rdx;            jmp   n62_statement_end_α
                        .size            n61_assign_bx, .-n61_assign_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 41
                        mov              r10, 4
                        add              rsp, 64;                             jmp   n63_lit_integer_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_lit_integer_bx, @function
n63_lit_integer_bx:
#=======================================================================================================================
#         PAT = BREAK(',') . F1 ',' BREAK(',') . F2 ',' BREAK(',') . F3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n63_lit_integer_α:      sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_201_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_lit_integer_α
.Llit_integer_α_201_0:  .quad            5
                        .size            n63_lit_integer_bx, .-n63_lit_integer_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      sub              rsp, 16
                        mov              r11, 43
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_202_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_call_α
.Llit_integer_α_202_0:  .quad            8
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_call_bx, @function
n65_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_call_α:             sub              rsp, 16
                        mov              r11, 44
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
.Lcall_α_rkfnzd204:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd204]
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
                        cmp              al, 104;                             jne   .Lcall_α_203_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n66_statement_begin_α
.Lcall_α_203_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_statement_begin_α
n65_call_β:             mov              r11, 44
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n66_statement_begin_α
                        .size            n65_call_bx, .-n65_call_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 45
                        mov              r10, 5;                              jmp   n67_lit_string_α
n66_statement_begin_β:  mov              r11, 45
                        add              rsp, 48;                             jmp   n71_statement_begin_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_call_α
.Llit_string_α_207_0:   .quad            .Llit_string_α_207_0_s
.Llit_string_α_207_0_s: .string          "PAT$0"
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_call_bx, @function
n68_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_α:             sub              rsp, 16
                        mov              r11, 47
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd209:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd209]
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
                        cmp              al, 104;                             jne   .Lcall_α_208_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Lcall_α_208_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_assign_α
n68_call_β:             mov              r11, 47
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
                        .size            n68_call_bx, .-n68_call_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # PAT
                        mov              qword ptr [r9 + 56], rdx;            jmp   n70_statement_end_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 49
                        mov              r10, 5
                        add              rsp, 80;                             jmp   n71_statement_begin_α
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_statement_begin_bx, @function
n71_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('STRING_PATTERN(N)')                     :(STRING_PATTERN_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n71_statement_begin_α:  mov              r11, 50
                        mov              r10, 6;                              jmp   n72_define_α
n71_statement_begin_β:  mov              r11, 50;                             jmp   n74_lit_integer_α
                        .size            n71_statement_begin_bx, .-n71_statement_begin_bx
                        .type            n72_define_bx, @function
n72_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_define_α:           mov              r11, 51
                        mov              rdi, qword ptr [rip + .Ldefine_α_216_0]
                        mov              rsi, qword ptr [rip + .Ldefine_α_216_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + STRING_PATTERN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Ldefine_α_216_0]
                        lea              rsi, [rip + STRING_PATTERN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_statement_end_α
n72_define_β:           mov              r11, 51;                             jmp   n71_statement_begin_β
.Ldefine_α_216_0:       .quad            .Ldefine_α_216_0_s
.Ldefine_α_216_0_s:     .string          "STRING_PATTERN"
.Ldefine_α_216_1:       .quad            .Ldefine_α_216_1_s
.Ldefine_α_216_1_s:     .string          "N"
                                                                              jmp   .Ldefine_α_217_245
#-----------------------------------------------------------------------------------------------------------------------
STRING_PATTERN_α:       sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # STRING_PATTERN
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Ldefine_α_217_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Ldefine_α_217_41
.Ldefine_α_217_10:      mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Ldefine_α_217_41:      lea              rcx, [rip + STRING_PATTERN_γ]
                        lea              rax, [rip + STRING_PATTERN_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n153_lit_integer_α];     jmp   rax
STRING_PATTERN_γ:       mov              rdi, qword ptr [r9 + 0]              # STRING_PATTERN
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_217_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_217_110
.Ldefine_α_217_80:      mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_217_110:     mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
STRING_PATTERN_ω:       mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # STRING_PATTERN
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Ldefine_α_217_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Ldefine_α_217_180
.Ldefine_α_217_150:     mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Ldefine_α_217_180:     mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Ldefine_α_217_245:
                        .size            n72_define_bx, .-n72_define_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 52
                        mov              r10, 6;                              jmp   n74_lit_integer_α
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_lit_integer_bx, @function
n74_lit_integer_bx:
#=======================================================================================================================
# STRING_PATTERN_END
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n74_lit_integer_α:      sub              rsp, 16
                        mov              r11, 53
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_220_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_lit_integer_α
.Llit_integer_α_220_0:  .quad            11
                        .size            n74_lit_integer_bx, .-n74_lit_integer_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              r11, 54
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_call_α
.Llit_integer_α_221_0:  .quad            14
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_call_bx, @function
n76_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_call_α:             sub              rsp, 16
                        mov              r11, 55
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
.Lcall_α_rkfnzd223:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd223]
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
                        cmp              al, 104;                             jne   .Lcall_α_222_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n113_statement_begin_α
.Lcall_α_222_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_begin_α
n76_call_β:             mov              r11, 55
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n113_statement_begin_α
                        .size            n76_call_bx, .-n76_call_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 56
                        mov              r10, 7;                              jmp   n78_lit_integer_α
n77_statement_begin_β:  mov              r11, 56
                        add              rsp, 48;                             jmp   n81_lit_integer_α
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_lit_integer_bx, @function
n78_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Llit_integer_α_226_0:  .quad            1
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n80_statement_end_α
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 59
                        mov              r10, 7
                        add              rsp, 64;                             jmp   n81_lit_integer_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#=======================================================================================================================
# ZBL     REC ? PAT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n81_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_230_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_lit_integer_α
.Llit_integer_α_230_0:  .quad            8
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_call_α
.Llit_integer_α_231_0:  .quad            11
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
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
.Lcall_α_rkfnzd233:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd233]
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
                        cmp              al, 104;                             jne   .Lcall_α_232_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n84_statement_begin_α
.Lcall_α_232_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_statement_begin_α
n83_call_β:             mov              r11, 62
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n84_statement_begin_α
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 63
                        mov              r10, 8;                              jmp   n85_var_α
n84_statement_begin_β:  mov              r11, 63
                        add              rsp, 48;                             jmp   n92_lit_integer_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              sub              rsp, 16
                        mov              r11, 64
                        mov              rax, qword ptr [r9 + 32]             # REC
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n86_var_α
n85_var_β:              mov              r11, 64
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n92_lit_integer_α
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              sub              rsp, 16
                        mov              r11, 65
                        mov              rax, qword ptr [r9 + 48]             # PAT
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_assign_α
n86_var_β:              mov              r11, 65
                        add              rsp, 16;                             jmp   n85_var_β
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              r11, 66
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_238_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_match_begin_α
n87_assign_β:           mov              r11, 66;                             jmp   n86_var_β
.Lassign_α_238_0:       .quad            .Lassign_α_238_0_s
.Lassign_α_238_0_s:     .string          "PATV$0"
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_match_begin_bx, @function
n88_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_match_begin_α:      mov              r11, 67
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
.Lmatch_begin_α_240_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_240_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n89_match_defer_α
n88_match_begin_β:      mov              r11, 67
.Lmatch_begin_α_240_13: lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_240_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_240_1
                                                                              jmp   .Lmatch_begin_α_240_0
.Lmatch_begin_β_240_1:
.Lmatch_begin_γ_88_af:  mov              r11, 67
.Lmatch_begin_ω_88_af:  mov              r11, 67
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
                        pop              rbp;                                 jmp   n87_assign_β
                        .size            n88_match_begin_bx, .-n88_match_begin_bx
                        .type            n89_match_defer_bx, @function
n89_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_match_defer_α:      mov              r11, 68
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S3]
                        cmp              rax, rdx;                            jne   .Lmatch_defer_α_241_22
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lmatch_defer_α_241_22
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              je    .Lmatch_defer_α_241_32
                        cmp              edx, 8;                              jne   .Lmatch_defer_α_241_22
                        mov              rdx, qword ptr [rax + 8]
                        test             rdx, rdx;                            je    .Lmatch_defer_α_241_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmatch_defer_α_241_23
                                                                              jmp   .Lmatch_defer_α_241_22
.Lmatch_defer_α_241_32: mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmatch_defer_α_241_22
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmatch_defer_α_241_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmatch_defer_α_241_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmatch_defer_α_241_0
.Lmatch_defer_α_241_31: mov              edx, -1;                             jmp   .Lmatch_defer_α_241_0
.Lmatch_defer_α_241_22: push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
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
.Lmatch_defer_α_241_23: test             rax, rax;                            jz    .Lmatch_defer_α_241_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmatch_defer_α_241_5]
                        push             rcx
                        lea              rcx, [rip + .Lmatch_defer_α_241_4]
                        push             rcx;                                 jmp   rax
.Lmatch_defer_α_241_4:                                                        jmp   n90_match_end_α
.Lmatch_defer_α_241_5:                                                        jmp   n88_match_begin_β
.Lmatch_defer_α_241_0:  mov              eax, edx
                        test             eax, eax;                            js    n88_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmatch_defer_α_241_6]
                        push             rcx
                        push             rax;                                 jmp   n90_match_end_α
.Lmatch_defer_α_241_6:  add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n88_match_begin_β
n89_match_defer_β:      mov              r11, 68
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmatch_defer_β_241_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmatch_defer_β_241_12
                                                                              jmp   rax
.Lmatch_defer_β_241_12:                                                       jmp   qword ptr [rsp]
                        .size            n89_match_defer_bx, .-n89_match_defer_bx
                        .type            n90_match_end_bx, @function
n90_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_match_end_α:        mov              r11, 69
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
                        test             rax, rax;                            je    .Lmatch_end_α_243_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_88_af
.Lmatch_end_α_243_13:   add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n91_statement_end_α
                        .size            n90_match_end_bx, .-n90_match_end_bx
                        .type            n91_statement_end_bx, @function
n91_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 70
                        mov              r10, 8
                        add              rsp, 80;                             jmp   n92_lit_integer_α
                        .size            n91_statement_end_bx, .-n91_statement_end_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n92_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_246_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_lit_integer_α
.Llit_integer_α_246_0:  .quad            9
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_247_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n94_call_α
.Llit_integer_α_247_0:  .quad            12
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_call_bx, @function
n94_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_α:             sub              rsp, 16
                        mov              r11, 73
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
.Lcall_α_rkfnzd249:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd249]
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
                        cmp              al, 104;                             jne   .Lcall_α_248_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n95_statement_begin_α
.Lcall_α_248_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_statement_begin_α
n94_call_β:             mov              r11, 73
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n95_statement_begin_α
                        .size            n94_call_bx, .-n94_call_bx
                        .type            n95_statement_begin_bx, @function
n95_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:  mov              r11, 74
                        mov              r10, 9;                              jmp   n96_var_α
n95_statement_begin_β:  mov              r11, 74
                        add              rsp, 48;                             jmp   n106_lit_integer_α
                        .size            n95_statement_begin_bx, .-n95_statement_begin_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 75
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 76
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_coerce_numeric_α
n97_var_β:              mov              r11, 76
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_coerce_numeric_bx, @function
n98_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 77
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_255_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_255_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_255_0
.Lcoerce_numeric_α_255_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_coerce_numeric_α
.Lcoerce_numeric_α_255_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_coerce_numeric_α
n98_coerce_numeric_β:   mov              r11, 77
                        add              rsp, 16;                             jmp   n97_var_β
                        .size            n98_coerce_numeric_bx, .-n98_coerce_numeric_bx
                        .type            n99_coerce_numeric_bx, @function
n99_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 78
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_257_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_257_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_257_0
.Lcoerce_numeric_α_257_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_cmp_test_α
.Lcoerce_numeric_α_257_0:
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n100_cmp_test_α
n99_coerce_numeric_β:   mov              r11, 78
                        add              rsp, 16;                             jmp   n98_coerce_numeric_β
                        .size            n99_coerce_numeric_bx, .-n99_coerce_numeric_bx
                        .type            n100_cmp_test_bx, @function
n100_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_cmp_test_α:        sub              rsp, 16
                        mov              r11, 79
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_259_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_259_239
                        add              rsp, 16;                             jmp   n99_coerce_numeric_β
.Lcmp_test_α_259_239:                                                         jmp   n101_var_α
.Lcmp_test_α_259_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lcmp_test_α_259_240
                        add              rsp, 16;                             jmp   n99_coerce_numeric_β
.Lcmp_test_α_259_240:                                                         jmp   n101_var_α
n100_cmp_test_β:        mov              r11, 79
                        add              rsp, 16;                             jmp   n99_coerce_numeric_β
                        .size            n100_cmp_test_bx, .-n100_cmp_test_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_lit_integer_α
n101_var_β:             mov              r11, 80
                        add              rsp, 16;                             jmp   n100_cmp_test_β
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_lit_integer_bx, @function
n102_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:     sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_261_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_binop_α
n102_lit_integer_β:     mov              r11, 81
                        add              rsp, 16;                             jmp   n101_var_β
.Llit_integer_α_261_0:  .quad            1
                        .size            n102_lit_integer_bx, .-n102_lit_integer_bx
                        .type            n103_binop_bx, @function
n103_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
                        mov              r11, 82
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_262_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_262_7
.Lbinop_α_262_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_262_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_262_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_262_4
.Lbinop_α_262_3:        movq             xmm0, rsi
.Lbinop_α_262_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_262_7:                                                              jmp   n104_assign_α
.Lbinop_α_262_0:        mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lbinop_α_262_240
                        add              rsp, 16;                             jmp   n102_lit_integer_β
.Lbinop_α_262_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
                        .size            n103_binop_bx, .-n103_binop_bx
                        .type            n104_assign_bx, @function
n104_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 83
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n105_statement_end_α
                        .size            n104_assign_bx, .-n104_assign_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 84
                        mov              r10, 9
                        add              rsp, 176;                            jmp   n81_lit_integer_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#=======================================================================================================================
#         STRING_PATTERN = F3                             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n106_lit_integer_α:     sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_266_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_lit_integer_α
.Llit_integer_α_266_0:  .quad            10
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_267_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_call_α
.Llit_integer_α_267_0:  .quad            13
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            sub              rsp, 16
                        mov              r11, 87
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
.Lcall_α_rkfnzd269:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd269]
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
                        cmp              al, 104;                             jne   .Lcall_α_268_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n109_statement_begin_α
.Lcall_α_268_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_statement_begin_α
n108_call_β:            mov              r11, 87
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n109_statement_begin_α
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 88
                        mov              r10, 10;                             jmp   n110_var_α
n109_statement_begin_β: mov              r11, 88
                        add              rsp, 48;                             jmp   RETURN
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 96]             # F3
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_assign_α
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_assign_bx, @function
n111_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              r11, 90
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # STRING_PATTERN
                        mov              qword ptr [r9 + 8], rdx;             jmp   n112_statement_end_α
                        .size            n111_assign_bx, .-n111_assign_bx
                        .type            n112_statement_end_bx, @function
n112_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   mov              r11, 91
                        mov              r10, 10
                        add              rsp, 64;                             jmp   RETURN
                        .size            n112_statement_end_bx, .-n112_statement_end_bx
                        .type            n113_statement_begin_bx, @function
n113_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_begin_α: mov              r11, 92
                        mov              r10, 11;                             jmp   n114_statement_end_α
n113_statement_begin_β: mov              r11, 92
                        add              rsp, 48;                             jmp   n115_lit_integer_α
                        .size            n113_statement_begin_bx, .-n113_statement_begin_bx
                        .type            n114_statement_end_bx, @function
n114_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 93
                        mov              r10, 11
                        add              rsp, 48;                             jmp   n115_lit_integer_α
                        .size            n114_statement_end_bx, .-n114_statement_end_bx
                        .type            n115_lit_integer_bx, @function
n115_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'record = ' REC
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n115_lit_integer_α:     sub              rsp, 16
                        mov              r11, 94
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_lit_integer_α
.Llit_integer_α_280_0:  .quad            12
                        .size            n115_lit_integer_bx, .-n115_lit_integer_bx
                        .type            n116_lit_integer_bx, @function
n116_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_integer_α:     sub              rsp, 16
                        mov              r11, 95
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_call_α
.Llit_integer_α_281_0:  .quad            16
                        .size            n116_lit_integer_bx, .-n116_lit_integer_bx
                        .type            n117_call_bx, @function
n117_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_call_α:            sub              rsp, 16
                        mov              r11, 96
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
.Lcall_α_rkfnzd283:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd283]
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
                        cmp              al, 104;                             jne   .Lcall_α_282_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n118_statement_begin_α
.Lcall_α_282_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_statement_begin_α
n117_call_β:            mov              r11, 96
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n118_statement_begin_α
                        .size            n117_call_bx, .-n117_call_bx
                        .type            n118_statement_begin_bx, @function
n118_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α: mov              r11, 97
                        mov              r10, 12;                             jmp   n119_lit_string_α
n118_statement_begin_β: mov              r11, 97
                        add              rsp, 48;                             jmp   n124_lit_integer_α
                        .size            n118_statement_begin_bx, .-n118_statement_begin_bx
                        .type            n119_lit_string_bx, @function
n119_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_var_α
.Llit_string_α_286_0:   .quad            .Llit_string_α_286_0_s
.Llit_string_α_286_0_s: .string          "record = "
                        .size            n119_lit_string_bx, .-n119_lit_string_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 32]             # REC
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_binop_α
n120_var_β:             mov              r11, 99
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n118_statement_begin_β
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_binop_bx, @function
n121_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_binop_α:           sub              rsp, 16
                        mov              r11, 100
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n122_assign_α
                        .size            n121_binop_bx, .-n121_binop_bx
                        .type            n122_assign_bx, @function
n122_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:          mov              r11, 101
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_289_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n123_statement_end_α
.Lassign_α_289_0:       .quad            .Lassign_α_289_0_s
.Lassign_α_289_0_s:     .string          "OUTPUT"
                        .size            n122_assign_bx, .-n122_assign_bx
                        .type            n123_statement_end_bx, @function
n123_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:   mov              r11, 102
                        mov              r10, 12
                        add              rsp, 96;                             jmp   n124_lit_integer_α
                        .size            n123_statement_end_bx, .-n123_statement_end_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'field 3 = ' STRING_PATTERN(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n124_lit_integer_α:     sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_lit_integer_α
.Llit_integer_α_292_0:  .quad            13
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_lit_integer_bx, @function
n125_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     sub              rsp, 16
                        mov              r11, 104
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_293_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_call_α
.Llit_integer_α_293_0:  .quad            17
                        .size            n125_lit_integer_bx, .-n125_lit_integer_bx
                        .type            n126_call_bx, @function
n126_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_call_α:            sub              rsp, 16
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
.Lcall_α_rkfnzd295:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd295]
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
                        cmp              al, 104;                             jne   .Lcall_α_294_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n127_statement_begin_α
.Lcall_α_294_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_statement_begin_α
n126_call_β:            mov              r11, 105
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n127_statement_begin_α
                        .size            n126_call_bx, .-n126_call_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α: mov              r11, 106
                        mov              r10, 13;                             jmp   n128_lit_string_α
n127_statement_begin_β: mov              r11, 106
                        add              rsp, 48;                             jmp   n134_lit_integer_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_lit_string_bx, @function
n128_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_298_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_lit_integer_α
.Llit_string_α_298_0:   .quad            .Llit_string_α_298_0_s
.Llit_string_α_298_0_s: .string          "field 3 = "
                        .size            n128_lit_string_bx, .-n128_lit_string_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n130_call_α
n129_lit_integer_β:     mov              r11, 108
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n127_statement_begin_β
.Llit_integer_α_299_0:  .quad            1000
                        .size            n129_lit_integer_bx, .-n129_lit_integer_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            sub              rsp, 16
                        mov              r11, 109
                        lea              rcx, [rip + .Lcall_α_sig301z]
                        lea              rax, [rip + STRING_PATTERN_α];       jmp   rax
.Lcall_α_sig301z:       .quad            1
                        .quad            .Lcall_α_301_2
                        .quad            .Lcall_α_301_2
                        .quad            16
.Lcall_α_301_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_α_301_29
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
.Lcall_α_301_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_α_301_240
                        add              rsp, 16;                             jmp   n129_lit_integer_β
.Lcall_α_301_240:                                                             jmp   n131_binop_α
n130_call_β:            mov              r11, 109;                            jmp   n129_lit_integer_β
.Lcall_β_301_0:         .quad            .Lcall_β_301_0_s
.Lcall_β_301_0_s:       .string          "STRING_PATTERN"
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_binop_bx, @function
n131_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_binop_α:           sub              rsp, 16
                        mov              r11, 110
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n132_assign_α
                        .size            n131_binop_bx, .-n131_binop_bx
                        .type            n132_assign_bx, @function
n132_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_assign_α:          mov              r11, 111
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_303_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n133_statement_end_α
.Lassign_α_303_0:       .quad            .Lassign_α_303_0_s
.Lassign_α_303_0_s:     .string          "OUTPUT"
                        .size            n132_assign_bx, .-n132_assign_bx
                        .type            n133_statement_end_bx, @function
n133_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   mov              r11, 112
                        mov              r10, 13
                        add              rsp, 112;                            jmp   n134_lit_integer_α
                        .size            n133_statement_end_bx, .-n133_statement_end_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'field 1 = ' F1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n134_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_306_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_lit_integer_α
.Llit_integer_α_306_0:  .quad            14
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_lit_integer_bx, @function
n135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     sub              rsp, 16
                        mov              r11, 114
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_call_α
.Llit_integer_α_307_0:  .quad            18
                        .size            n135_lit_integer_bx, .-n135_lit_integer_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            sub              rsp, 16
                        mov              r11, 115
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
                        add              rsp, -16;                            jmp   n137_statement_begin_α
.Lcall_α_308_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_statement_begin_α
n136_call_β:            mov              r11, 115
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n137_statement_begin_α
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_statement_begin_bx, @function
n137_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 116
                        mov              r10, 14;                             jmp   n138_lit_string_α
n137_statement_begin_β: mov              r11, 116
                        add              rsp, 48;                             jmp   n143_lit_integer_α
                        .size            n137_statement_begin_bx, .-n137_statement_begin_bx
                        .type            n138_lit_string_bx, @function
n138_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_string_α:      sub              rsp, 16
                        mov              r11, 117
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_312_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n139_var_α
.Llit_string_α_312_0:   .quad            .Llit_string_α_312_0_s
.Llit_string_α_312_0_s: .string          "field 1 = "
                        .size            n138_lit_string_bx, .-n138_lit_string_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 118
                        mov              rax, qword ptr [r9 + 64]             # F1
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_binop_α
n139_var_β:             mov              r11, 118
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_binop_bx, @function
n140_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:           sub              rsp, 16
                        mov              r11, 119
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_assign_α
                        .size            n140_binop_bx, .-n140_binop_bx
                        .type            n141_assign_bx, @function
n141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              r11, 120
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_315_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_statement_end_α
.Lassign_α_315_0:       .quad            .Lassign_α_315_0_s
.Lassign_α_315_0_s:     .string          "OUTPUT"
                        .size            n141_assign_bx, .-n141_assign_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 121
                        mov              r10, 14
                        add              rsp, 96;                             jmp   n143_lit_integer_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_lit_integer_bx, @function
n143_lit_integer_bx:
#=======================================================================================================================
#         OUTPUT = 'field 2 = ' F2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n143_lit_integer_α:     sub              rsp, 16
                        mov              r11, 122
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_lit_integer_α
.Llit_integer_α_318_0:  .quad            15
                        .size            n143_lit_integer_bx, .-n143_lit_integer_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              r11, 123
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_319_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_call_α
.Llit_integer_α_319_0:  .quad            19
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            sub              rsp, 16
                        mov              r11, 124
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
.Lcall_α_rkfnzd321:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd321]
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
                        cmp              al, 104;                             jne   .Lcall_α_320_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n146_statement_begin_α
.Lcall_α_320_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_statement_begin_α
n145_call_β:            mov              r11, 124
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n146_statement_begin_α
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_statement_begin_bx, @function
n146_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α: mov              r11, 125
                        mov              r10, 15;                             jmp   n147_lit_string_α
n146_statement_begin_β: mov              r11, 125
                        add              rsp, 48;                             jmp   main_γ
                        .size            n146_statement_begin_bx, .-n146_statement_begin_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_324_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_var_α
.Llit_string_α_324_0:   .quad            .Llit_string_α_324_0_s
.Llit_string_α_324_0_s: .string          "field 2 = "
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_var_bx, @function
n148_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              r11, 127
                        mov              rax, qword ptr [r9 + 80]             # F2
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_binop_α
n148_var_β:             mov              r11, 127
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n146_statement_begin_β
                        .size            n148_var_bx, .-n148_var_bx
                        .type            n149_binop_bx, @function
n149_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              r11, 128
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n150_assign_α
                        .size            n149_binop_bx, .-n149_binop_bx
                        .type            n150_assign_bx, @function
n150_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              r11, 129
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lassign_α_327_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n151_statement_end_α
.Lassign_α_327_0:       .quad            .Lassign_α_327_0_s
.Lassign_α_327_0_s:     .string          "OUTPUT"
                        .size            n150_assign_bx, .-n150_assign_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 130
                        mov              r10, 15
                        add              rsp, 96;                             jmp   main_γ
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_goto_bx, @function
n152_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_goto_α:            mov              r11, 131;                            jmp   n153_lit_integer_α
n152_goto_β:            mov              r11, 131;                            jmp   main_ω
                        .size            n152_goto_bx, .-n152_goto_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#=======================================================================================================================
# STRING_PATTERN  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_331_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_lit_integer_α
.Llit_integer_α_331_0:  .quad            7
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_332_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_call_α
.Llit_integer_α_332_0:  .quad            10
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_call_bx, @function
n155_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_α:            sub              rsp, 16
                        mov              r11, 134
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
.Lcall_α_rkfnzd334:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd334]
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
                        cmp              al, 104;                             jne   .Lcall_α_333_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n77_statement_begin_α
.Lcall_α_333_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_statement_begin_α
n155_call_β:            mov              r11, 134
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n77_statement_begin_α
                        .size            n155_call_bx, .-n155_call_bx
                        .type            n156_goto_bx, @function
n156_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_goto_α:            mov              r11, 135;                            jmp   n81_lit_integer_α
n156_goto_β:            mov              r11, 135;                            jmp   main_ω
                        .size            n156_goto_bx, .-n156_goto_bx
                        .type            n157_goto_bx, @function
n157_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_goto_α:            mov              r11, 136;                            jmp   n74_lit_integer_α
n157_goto_β:            mov              r11, 136;                            jmp   main_ω
                        .size            n157_goto_bx, .-n157_goto_bx
                        .type            n158_define_bx, @function
n158_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 137
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
                        .size            n158_define_bx, .-n158_define_bx
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
.Lseala1:               .string          "STRING_PATTERN"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            STRING_PATTERN_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + STRING_PATTERN_α@GOTPCREL]
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
                        .long            192
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
.S0:                    .string          "F1"
.S1:                    .string          "F2"
.S2:                    .string          "F3"
.S3:                    .string          "PATV$0"
                        .text
                        .section         .note.GNU-stack,"",@progbits
