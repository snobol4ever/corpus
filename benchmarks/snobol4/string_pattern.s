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
.LPAT$0_α_14_0:         cmp              ecx, r15d;                           jl    .LPAT$0_α_14_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.LPAT$0_α_14_240:       movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .LPAT$0_α_14_1
                        add              ecx, 1;                              jmp   .LPAT$0_α_14_0
.LPAT$0_α_14_1:         mov              dword ptr [rbp + -64], r14d
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
.LPAT$0_α_22_0:         cmp              ecx, r15d;                           jl    .LPAT$0_α_22_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
.LPAT$0_α_22_240:       movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .LPAT$0_α_22_1
                        add              ecx, 1;                              jmp   .LPAT$0_α_22_0
.LPAT$0_α_22_1:         mov              dword ptr [rbp + -96], r14d
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
.LPAT$0_α_30_0:         cmp              ecx, r15d;                           jl    .LPAT$0_α_30_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
.LPAT$0_α_30_240:       movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .LPAT$0_α_30_1
                        add              ecx, 1;                              jmp   .LPAT$0_α_30_0
.LPAT$0_α_30_1:         mov              dword ptr [rbp + -128], r14d
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
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
                        .type            n33_statement_begin_bx, @function
n33_statement_begin_bx:
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 4 0
n33_statement_begin_α:  mov              r11, 12
                        mov              r10, 1;                              jmp   n34_lit_integer_α
n33_statement_begin_β:  mov              r11, 12;                             jmp   n37_statement_begin_α
                        .size            n33_statement_begin_bx, .-n33_statement_begin_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_kw_assign_snobol4_α
.Lmain_α_115_0:         .quad            1
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_kw_assign_snobol4_bx, @function
n35_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lmain_α_116_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_116_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lmain_α_116_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_statement_end_α
.Lmain_α_116_0:         .quad            1
                        .size            n35_kw_assign_snobol4_bx, .-n35_kw_assign_snobol4_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 15
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n37_statement_begin_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n37_statement_begin_α:  mov              r11, 16
                        mov              r10, 2;                              jmp   n38_lit_integer_α
n37_statement_begin_β:  mov              r11, 16;                             jmp   n41_statement_begin_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_kw_assign_snobol4_α
.Lmain_α_121_0:         .quad            0
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_kw_assign_snobol4_bx, @function
n39_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lmain_α_122_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_122_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lmain_α_122_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_statement_end_α
.Lmain_α_122_0:         .quad            0
                        .size            n39_kw_assign_snobol4_bx, .-n39_kw_assign_snobol4_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 19
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n41_statement_begin_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n41_statement_begin_α:  mov              r11, 20
                        mov              r10, 3;                              jmp   n42_lit_integer_α
n41_statement_begin_β:  mov              r11, 20;                             jmp   n46_statement_begin_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_127_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_unop_α
.Lmain_α_127_0:         .quad            1
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_unop_bx, @function
n43_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             sub              rsp, 16
                        mov              r11, 22
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_kw_assign_snobol4_α
n43_unop_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
                        .size            n43_unop_bx, .-n43_unop_bx
                        .type            n44_kw_assign_snobol4_bx, @function
n44_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 23
                        mov              rdi, qword ptr [rip + .Lmain_α_129_0]
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
                        cmp              al, 104;                             jne   .Lmain_α_129_240
                        add              rsp, 16;                             jmp   n43_unop_β
.Lmain_α_129_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_statement_end_α
.Lmain_α_129_0:         .quad            10
                        .size            n44_kw_assign_snobol4_bx, .-n44_kw_assign_snobol4_bx
                        .type            n45_statement_end_bx, @function
n45_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 24
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n46_statement_begin_α
                        .size            n45_statement_end_bx, .-n45_statement_end_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
#=======================================================================================================================
#         REC = 'alpha,beta,gamma,delta,epsilon'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n46_statement_begin_α:  mov              r11, 25
                        mov              r10, 4;                              jmp   n47_lit_string_α
n46_statement_begin_β:  mov              r11, 25;                             jmp   n50_statement_begin_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lmain_α_134_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_assign_α
.Lmain_α_134_0:         .quad            .Lmain_α_134_0_s
.Lmain_α_134_0_s:       .string          "alpha,beta,gamma,delta,epsilon"
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # REC
                        mov              qword ptr [r9 + 40], rdx;            jmp   n49_statement_end_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 28
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n50_statement_begin_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#=======================================================================================================================
#         PAT = BREAK(',') . F1 ',' BREAK(',') . F2 ',' BREAK(',') . F3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n50_statement_begin_α:  mov              r11, 29
                        mov              r10, 5;                              jmp   n51_lit_string_α
n50_statement_begin_β:  mov              r11, 29;                             jmp   n55_statement_begin_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lmain_α_140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_call_α
.Lmain_α_140_0:         .quad            .Lmain_α_140_0_s
.Lmain_α_140_0_s:       .string          "PAT$0"
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_call_bx, @function
n52_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_call_α:             sub              rsp, 16
                        mov              r11, 31
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd142:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd142]
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
                        cmp              al, 104;                             jne   .Lmain_α_141_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
.Lmain_α_141_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_assign_α
n52_call_β:             mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n50_statement_begin_β
                        .size            n52_call_bx, .-n52_call_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # PAT
                        mov              qword ptr [r9 + 56], rdx;            jmp   n54_statement_end_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 33
                        mov              r10, 5
                        add              rsp, 32;                             jmp   n55_statement_begin_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#=======================================================================================================================
#         DEFINE('STRING_PATTERN(N)')                     :(STRING_PATTERN_END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n55_statement_begin_α:  mov              r11, 34
                        mov              r10, 6;                              jmp   n56_define_α
n55_statement_begin_β:  mov              r11, 34;                             jmp   n85_statement_begin_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_define_bx, @function
n56_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_define_α:           mov              r11, 35
                        mov              rdi, qword ptr [rip + .Lmain_α_149_0]
                        mov              rsi, qword ptr [rip + .Lmain_α_149_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n58_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, qword ptr [rip + .Lmain_α_149_0]
                        lea              rsi, [rip + STRING_PATTERN_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_statement_end_α
n56_define_β:           mov              r11, 35;                             jmp   n55_statement_begin_β
.Lmain_α_149_0:         .quad            .Lmain_α_149_0_s
.Lmain_α_149_0_s:       .string          "STRING_PATTERN"
.Lmain_α_149_1:         .quad            .Lmain_α_149_1_s
.Lmain_α_149_1_s:       .string          "N"
                                                                              jmp   .Lmain_α_150_245
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
                        cmp              rdx, 0;                              jbe   .Lmain_α_150_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # N
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lmain_α_150_41
.Lmain_α_150_10:        mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lmain_α_150_41:        lea              rcx, [rip + STRING_PATTERN_γ]
                        lea              rax, [rip + STRING_PATTERN_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n58_statement_begin_α];  jmp   rax
STRING_PATTERN_γ:       mov              rdi, qword ptr [r9 + 0]              # STRING_PATTERN
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lmain_α_150_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lmain_α_150_110
.Lmain_α_150_80:        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lmain_α_150_110:       mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lmain_α_150_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # N
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lmain_α_150_180
.Lmain_α_150_150:       mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lmain_α_150_180:       mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lmain_α_150_245:
                        .size            n56_define_bx, .-n56_define_bx
                        .type            n57_statement_end_bx, @function
n57_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 36
                        mov              r10, 6;                              jmp   n85_statement_begin_α
                        .size            n57_statement_end_bx, .-n57_statement_end_bx
                        .type            n58_statement_begin_bx, @function
n58_statement_begin_bx:
#=======================================================================================================================
# STRING_PATTERN  ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n58_statement_begin_α:  mov              r11, 37
                        mov              r10, 7;                              jmp   n59_lit_integer_α
n58_statement_begin_β:  mov              r11, 37;                             jmp   n62_statement_begin_α
                        .size            n58_statement_begin_bx, .-n58_statement_begin_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_assign_α
.Lmain_α_155_0:         .quad            1
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n61_statement_end_α
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 40
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n62_statement_begin_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#=======================================================================================================================
# ZBL     REC ? PAT
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n62_statement_begin_α:  mov              r11, 41
                        mov              r10, 8;                              jmp   n63_var_α
n62_statement_begin_β:  mov              r11, 41;                             jmp   n70_statement_begin_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 32]             # REC
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_var_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 48]             # PAT
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_assign_α
n64_var_β:              mov              r11, 43;                             jmp   n69_statement_end_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_assign_bx, @function
n65_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 44
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_163_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_match_begin_α
n65_assign_β:           mov              r11, 44;                             jmp   n64_var_β
.Lmain_α_163_0:         .quad            .Lmain_α_163_0_s
.Lmain_α_163_0_s:       .string          "PATV$0"
                        .size            n65_assign_bx, .-n65_assign_bx
                        .type            n66_match_begin_bx, @function
n66_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_begin_α:      mov              r11, 45
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
.Lmain_α_165_0:         mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmain_α_165_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n67_match_defer_α
n66_match_begin_β:      mov              r11, 45
.Lmain_α_165_13:        lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmain_β_165_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmain_β_165_1
                                                                              jmp   .Lmain_α_165_0
.Lmain_β_165_1:
n66_match_begin_af:     mov              r11, 45
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
                        pop              rbp;                                 jmp   n65_assign_β
                        .size            n66_match_begin_bx, .-n66_match_begin_bx
                        .type            n67_match_defer_bx, @function
n67_match_defer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_defer_α:      mov              r11, 46
                        lea              rcx, [rip + g_sno_defer_cells+16384]
                        mov              rax, qword ptr [rcx + 0]
                        lea              rdx, [rip + .S3]
                        cmp              rax, rdx;                            jne   .Lmain_α_166_30
                        mov              rax, qword ptr [rcx + 8]
                        mov              edx, dword ptr [rax + 0]
                        and              edx, 255
                        cmp              edx, 2;                              jne   .Lmain_α_166_30
                        mov              edx, dword ptr [rax + 4]
                        cmp              edx, 1;                              jne   .Lmain_α_166_30
                        movsxd           rcx, r14d
                        cmp              ecx, r15d;                           jge   .Lmain_α_166_31
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rax + 8]
                        xor              edx, edx
                        movzx            edi, byte ptr [rdi + rdx]
                        cmp              esi, edi;                            jne   .Lmain_α_166_31
                        mov              edx, r14d
                        add              edx, 1;                              jmp   .Lmain_α_166_0
.Lmain_α_166_31:        mov              edx, -1;                             jmp   .Lmain_α_166_0
.Lmain_α_166_30:        lea              rsi, [rip + g_sno_defer_cells+16384]
                        lea              rdi, [rip + .S3]
                        mov              rcx, qword ptr [rsi + 0]
                        cmp              rcx, rdi;                            jne   .Lmain_α_166_22
                        mov              rcx, qword ptr [rsi + 8]
                        test             rcx, rcx;                            je    .Lmain_α_166_22
                        mov              rax, qword ptr [rcx + 0]
                        cmp              al, 8;                               jne   .Lmain_α_166_22
                        mov              rdx, qword ptr [rcx + 8]
                        test             rdx, rdx;                            je    .Lmain_α_166_22
                        mov              rax, qword ptr [rdx + 0]
                        test             rax, rax;                            jne   .Lmain_α_166_23
.Lmain_α_166_22:        push             r14
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
.Lmain_α_166_23:        test             rax, rax;                            jz    .Lmain_α_166_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lmain_α_166_5]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_166_4]
                        push             rcx;                                 jmp   rax
.Lmain_α_166_4:                                                               jmp   n68_match_end_α
.Lmain_α_166_5:                                                               jmp   n66_match_begin_β
.Lmain_α_166_0:         mov              eax, edx
                        test             eax, eax;                            js    n66_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lmain_α_166_6]
                        push             rcx
                        push             rax;                                 jmp   n68_match_end_α
.Lmain_α_166_6:         add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n66_match_begin_β
n67_match_defer_β:      mov              r11, 46
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lmain_β_166_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lmain_β_166_12
                                                                              jmp   rax
.Lmain_β_166_12:                                                              jmp   qword ptr [rsp]
                        .size            n67_match_defer_bx, .-n67_match_defer_bx
                        .type            n68_match_end_bx, @function
n68_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_end_α:        mov              r11, 47
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
                        test             rax, rax;                            je    .Lmain_α_168_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n66_match_begin_af
.Lmain_α_168_13:        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n69_statement_end_α
                        .size            n68_match_end_bx, .-n68_match_end_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 48
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n70_statement_begin_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#=======================================================================================================================
#         ZI = LT(ZI, N) ZI + 1                           :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n70_statement_begin_α:  mov              r11, 49
                        mov              r10, 9;                              jmp   n71_var_α
n70_statement_begin_β:  mov              r11, 49;                             jmp   n81_statement_begin_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 50
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_var_α
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_var_bx, @function
n72_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 16]             # N
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_coerce_numeric_α
n72_var_β:              mov              r11, 51
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
                        .size            n72_var_bx, .-n72_var_bx
                        .type            n73_coerce_numeric_bx, @function
n73_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 52
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lmain_α_176_1
                        cmp              al, 3;                               jne   .Lmain_α_176_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lmain_α_176_0
.Lmain_α_176_1:         mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_coerce_numeric_α
.Lmain_α_176_0:         lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_coerce_numeric_α
n73_coerce_numeric_β:   mov              r11, 52
                        add              rsp, 16;                             jmp   n72_var_β
                        .size            n73_coerce_numeric_bx, .-n73_coerce_numeric_bx
                        .type            n74_coerce_numeric_bx, @function
n74_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 53
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lmain_α_178_1
                        cmp              al, 3;                               jne   .Lmain_α_178_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lmain_α_178_0
.Lmain_α_178_1:         mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_cmp_test_α
.Lmain_α_178_0:         lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_cmp_test_α
n74_coerce_numeric_β:   mov              r11, 53
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
                        .size            n74_coerce_numeric_bx, .-n74_coerce_numeric_bx
                        .type            n75_cmp_test_bx, @function
n75_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_cmp_test_α:         sub              rsp, 16
                        mov              r11, 54
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_180_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lmain_α_180_239
                        add              rsp, 16;                             jmp   n74_coerce_numeric_β
.Lmain_α_180_239:                                                             jmp   n76_var_α
.Lmain_α_180_0:         lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            js    .Lmain_α_180_240
                        add              rsp, 16;                             jmp   n74_coerce_numeric_β
.Lmain_α_180_240:                                                             jmp   n76_var_α
n75_cmp_test_β:         mov              r11, 54
                        add              rsp, 16;                             jmp   n74_coerce_numeric_β
                        .size            n75_cmp_test_bx, .-n75_cmp_test_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 112]            # ZI
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
n76_var_β:              mov              r11, 55
                        add              rsp, 16;                             jmp   n75_cmp_test_β
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_binop_α
n77_lit_integer_β:      mov              r11, 56
                        add              rsp, 16;                             jmp   n76_var_β
.Lmain_α_182_0:         .quad            1
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_binop_bx, @function
n78_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 57
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lmain_α_183_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmain_α_183_7
.Lmain_α_183_2:         mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lmain_α_183_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lmain_α_183_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_183_4
.Lmain_α_183_3:         movq             xmm0, rsi
.Lmain_α_183_4:         cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lmain_α_183_7:                                                               jmp   n79_assign_α
.Lmain_α_183_0:         mov              rdi, qword ptr [rsp + 32]            # var
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
                        cmp              al, 104;                             jne   .Lmain_α_183_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lmain_α_183_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_assign_α
                        .size            n78_binop_bx, .-n78_binop_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 58
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # ZI
                        mov              qword ptr [r9 + 120], rdx;           jmp   n80_statement_end_α
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 59
                        mov              r10, 9
                        add              rsp, 128;                            jmp   n62_statement_begin_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_statement_begin_bx, @function
n81_statement_begin_bx:
#=======================================================================================================================
#         STRING_PATTERN = F3                             :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n81_statement_begin_α:  mov              r11, 60
                        mov              r10, 10;                             jmp   n82_var_α
n81_statement_begin_β:  mov              r11, 60;                             jmp   RETURN
                        .size            n81_statement_begin_bx, .-n81_statement_begin_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 96]             # F3
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_assign_α
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_assign_bx, @function
n83_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # STRING_PATTERN
                        mov              qword ptr [r9 + 8], rdx;             jmp   n84_statement_end_α
                        .size            n83_assign_bx, .-n83_assign_bx
                        .type            n84_statement_end_bx, @function
n84_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 63
                        mov              r10, 10
                        add              rsp, 16;                             jmp   RETURN
                        .size            n84_statement_end_bx, .-n84_statement_end_bx
                        .type            n85_statement_begin_bx, @function
n85_statement_begin_bx:
#=======================================================================================================================
# STRING_PATTERN_END  <stmt 11, line 15: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             2 15 0
n85_statement_begin_α:  mov              r11, 64
                        mov              r10, 11;                             jmp   n86_statement_end_α
n85_statement_begin_β:  mov              r11, 64;                             jmp   n87_statement_begin_α
                        .size            n85_statement_begin_bx, .-n85_statement_begin_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 65
                        mov              r10, 11;                             jmp   n87_statement_begin_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'record = ' REC
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n87_statement_begin_α:  mov              r11, 66
                        mov              r10, 12;                             jmp   n88_lit_string_α
n87_statement_begin_β:  mov              r11, 66;                             jmp   n93_statement_begin_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lmain_α_199_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_var_α
.Lmain_α_199_0:         .quad            .Lmain_α_199_0_s
.Lmain_α_199_0_s:       .string          "record = "
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 32]             # REC
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_binop_α
n89_var_β:              mov              r11, 68
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_binop_bx, @function
n90_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              r11, 69
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_assign_α
                        .size            n90_binop_bx, .-n90_binop_bx
                        .type            n91_assign_bx, @function
n91_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 70
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_202_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n92_statement_end_α
.Lmain_α_202_0:         .quad            .Lmain_α_202_0_s
.Lmain_α_202_0_s:       .string          "OUTPUT"
                        .size            n91_assign_bx, .-n91_assign_bx
                        .type            n92_statement_end_bx, @function
n92_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 71
                        mov              r10, 12
                        add              rsp, 48;                             jmp   n93_statement_begin_α
                        .size            n92_statement_end_bx, .-n92_statement_end_bx
                        .type            n93_statement_begin_bx, @function
n93_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'field 3 = ' STRING_PATTERN(1000)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n93_statement_begin_α:  mov              r11, 72
                        mov              r10, 13;                             jmp   n94_lit_string_α
n93_statement_begin_β:  mov              r11, 72;                             jmp   n100_statement_begin_α
                        .size            n93_statement_begin_bx, .-n93_statement_begin_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lmain_α_207_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_lit_integer_α
.Lmain_α_207_0:         .quad            .Lmain_α_207_0_s
.Lmain_α_207_0_s:       .string          "field 3 = "
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 74
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lmain_α_208_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_call_α
n95_lit_integer_β:      mov              r11, 74
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
.Lmain_α_208_0:         .quad            1000
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_call_bx, @function
n96_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_call_α:             sub              rsp, 16
                        mov              r11, 75
                        lea              rcx, [rip + .Lsig210z]
                        lea              rax, [rip + STRING_PATTERN_α];       jmp   rax
.Lsig210z:              .quad            1
                        .quad            .Lmain_α_210_2
                        .quad            .Lmain_α_210_2
                        .quad            16
.Lmain_α_210_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_210_29
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
.Lmain_α_210_29:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lmain_α_210_240
                        add              rsp, 16;                             jmp   n95_lit_integer_β
.Lmain_α_210_240:                                                             jmp   n97_binop_α
n96_call_β:             mov              r11, 75;                             jmp   n95_lit_integer_β
.Lmain_β_210_0:         .quad            .Lmain_β_210_0_s
.Lmain_β_210_0_s:       .string          "STRING_PATTERN"
                        .size            n96_call_bx, .-n96_call_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            sub              rsp, 16
                        mov              r11, 76
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_assign_α
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_assign_bx, @function
n98_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 77
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_212_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_statement_end_α
.Lmain_α_212_0:         .quad            .Lmain_α_212_0_s
.Lmain_α_212_0_s:       .string          "OUTPUT"
                        .size            n98_assign_bx, .-n98_assign_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 78
                        mov              r10, 13
                        add              rsp, 64;                             jmp   n100_statement_begin_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'field 1 = ' F1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n100_statement_begin_α: mov              r11, 79
                        mov              r10, 14;                             jmp   n101_lit_string_α
n100_statement_begin_β: mov              r11, 79;                             jmp   n106_statement_begin_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_lit_string_bx, @function
n101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lmain_α_217_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n102_var_α
.Lmain_α_217_0:         .quad            .Lmain_α_217_0_s
.Lmain_α_217_0_s:       .string          "field 1 = "
                        .size            n101_lit_string_bx, .-n101_lit_string_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 81
                        mov              rax, qword ptr [r9 + 64]             # F1
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_binop_α
n102_var_β:             mov              r11, 81
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_binop_bx, @function
n103_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
                        mov              r11, 82
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n104_assign_α
                        .size            n103_binop_bx, .-n103_binop_bx
                        .type            n104_assign_bx, @function
n104_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 83
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_220_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n105_statement_end_α
.Lmain_α_220_0:         .quad            .Lmain_α_220_0_s
.Lmain_α_220_0_s:       .string          "OUTPUT"
                        .size            n104_assign_bx, .-n104_assign_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 84
                        mov              r10, 14
                        add              rsp, 48;                             jmp   n106_statement_begin_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_statement_begin_bx, @function
n106_statement_begin_bx:
#=======================================================================================================================
#         OUTPUT = 'field 2 = ' F2
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n106_statement_begin_α: mov              r11, 85
                        mov              r10, 15;                             jmp   n107_lit_string_α
n106_statement_begin_β: mov              r11, 85;                             jmp   main_γ
                        .size            n106_statement_begin_bx, .-n106_statement_begin_bx
                        .type            n107_lit_string_bx, @function
n107_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      sub              rsp, 16
                        mov              r11, 86
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lmain_α_225_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_var_α
.Lmain_α_225_0:         .quad            .Lmain_α_225_0_s
.Lmain_α_225_0_s:       .string          "field 2 = "
                        .size            n107_lit_string_bx, .-n107_lit_string_bx
                        .type            n108_var_bx, @function
n108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              r11, 87
                        mov              rax, qword ptr [r9 + 80]             # F2
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_binop_α
n108_var_β:             mov              r11, 87
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n106_statement_begin_β
                        .size            n108_var_bx, .-n108_var_bx
                        .type            n109_binop_bx, @function
n109_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:           sub              rsp, 16
                        mov              r11, 88
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_assign_α
                        .size            n109_binop_bx, .-n109_binop_bx
                        .type            n110_assign_bx, @function
n110_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              r11, 89
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lmain_α_228_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n111_statement_end_α
.Lmain_α_228_0:         .quad            .Lmain_α_228_0_s
.Lmain_α_228_0_s:       .string          "OUTPUT"
                        .size            n110_assign_bx, .-n110_assign_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:   mov              r11, 90
                        mov              r10, 15
                        add              rsp, 48;                             jmp   main_γ
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_define_bx, @function
n112_define_bx:
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 91
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
                        .size            n112_define_bx, .-n112_define_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        add              rsp, 0
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
