                        .intel_syntax    noprefix
                        .text
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
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              r11, 1
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: mov              r11, 1
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        mov              r11, 2
                        movsxd           rcx, r14d
.Lx14_0:                cmp              ecx, r15d;                           jl    .Lx14_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx14_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx14_1
                        add              ecx, 1;                              jmp   .Lx14_0
.Lx14_1:                mov              dword ptr [rbp + -64], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r11, 2
                        mov              r14d, dword ptr [rbp + -64]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
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
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_save_α: sub              rsp, 16
                        mov              r11, 5
                        mov              dword ptr [rsp + 0], r14d;           jmp   n5_match_break_α
n4_match_assign_save_β: mov              r11, 5
                        add              rsp, 16;                             jmp   n3_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_break_α:       sub              rsp, 16
                        mov              r11, 6
                        movsxd           rcx, r14d
.Lx22_0:                cmp              ecx, r15d;                           jl    .Lx22_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
.Lx22_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx22_1
                        add              ecx, 1;                              jmp   .Lx22_0
.Lx22_1:                mov              dword ptr [rbp + -96], r14d
                        mov              r14d, ecx;                           jmp   n6_match_assign_cond_α
n5_match_break_β:       mov              r11, 6
                        mov              r14d, dword ptr [rbp + -96]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
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
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: sub              rsp, 16
                        mov              r11, 9
                        mov              dword ptr [rsp + 0], r14d;           jmp   n9_match_break_α
n8_match_assign_save_β: mov              r11, 9
                        add              rsp, 16;                             jmp   n7_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:       sub              rsp, 16
                        mov              r11, 10
                        movsxd           rcx, r14d
.Lx30_0:                cmp              ecx, r15d;                           jl    .Lx30_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lx30_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx30_1
                        add              ecx, 1;                              jmp   .Lx30_0
.Lx30_1:                mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n10_match_assign_cond_α
n9_match_break_β:       mov              r11, 10
                        mov              r14d, dword ptr [rbp + -128]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
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
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 17
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 17
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "ZBODY"
.Lgvan1:                .string          "ZKN"
.Lgvan2:                .string          "ZCHK"
.Lgvan3:                .string          "ZBUD"
.Lgvan4:                .string          "ZFLR"
.Lgvan5:                .string          "REC"
.Lgvan6:                .string          "PAT"
.Lgvan7:                .string          "F1"
.Lgvan8:                .string          "F2"
.Lgvan9:                .string          "F3"
.Lgvan10:               .string          "ZI"
.Lgvan11:               .string          "fixed_n"
.Lgvan12:               .string          "ZK"
.Lgvan13:               .string          "ZT"
.Lgvan14:               .string          "ZE"
.Lgvan15:               .string          "ZD"
.Lgvan16:               .string          "ZN"
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
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 12
                        mov              r10, 1;                              jmp   n34_lit_integer_α
n33_statement_begin_β:  mov              r11, 12;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_keyword_assign_snobol4_α
.Lx280_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lx281_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx281_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lx281_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_statement_end_α
.Lx281_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 15
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 16
                        mov              r10, 2;                              jmp   n38_lit_integer_α
n37_statement_begin_β:  mov              r11, 16;                             jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_keyword_assign_snobol4_α
.Lx286_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 18
                        mov              rdi, qword ptr [rip + .Lx287_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx287_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx287_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_statement_end_α
.Lx287_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 19
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 20
                        mov              r10, 3;                              jmp   n42_lit_integer_α
n41_statement_begin_β:  mov              r11, 20;                             jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      sub              rsp, 16
                        mov              r11, 21
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_unop_α
.Lx292_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             sub              rsp, 16
                        mov              r11, 22
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_keyword_assign_snobol4_α
n43_unop_β:             mov              r11, 22
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n44_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 23
                        mov              rdi, qword ptr [rip + .Lx294_0]
                        mov              rsi, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_kw_write_idx@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx294_240
                        add              rsp, 16;                             jmp   n43_unop_β
.Lx294_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_statement_end_α
.Lx294_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    mov              r11, 24
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:  mov              r11, 25
                        mov              r10, 4;                              jmp   n47_lit_integer_α
n46_statement_begin_β:  mov              r11, 25;                             jmp   n50_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_assign_α
.Lx299_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n49_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 28
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n50_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 29
                        mov              r10, 5;                              jmp   n51_lit_integer_α
n50_statement_begin_β:  mov              r11, 29;                             jmp   n54_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_assign_α
.Lx305_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n53_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 32
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n54_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 33
                        mov              r10, 6;                              jmp   n55_lit_integer_α
n54_statement_begin_β:  mov              r11, 33;                             jmp   n58_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx311_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_assign_α
.Lx311_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n56_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n57_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_end_α:    mov              r11, 36
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n58_statement_begin_α
#=======================================================================================================================
#         REC = 'alpha,beta,gamma,delta,epsilon'
#-----------------------------------------------------------------------------------------------------------------------
n58_statement_begin_α:  mov              r11, 37
                        mov              r10, 7;                              jmp   n59_lit_string_α
n58_statement_begin_β:  mov              r11, 37;                             jmp   n62_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       sub              rsp, 16
                        mov              r11, 38
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_assign_α
.Lx317_0:               .quad            .Lx317_0_s
.Lx317_0_s:             .string          "alpha,beta,gamma,delta,epsilon"
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # REC
                        mov              qword ptr [r9 + 88], rdx;            jmp   n61_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 40
                        mov              r10, 7
                        add              rsp, 16;                             jmp   n62_statement_begin_α
#=======================================================================================================================
#         PAT = BREAK(',') . F1 ',' BREAK(',') . F2 ',' BREAK(',') . F3
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 41
                        mov              r10, 8;                              jmp   n63_lit_string_α
n62_statement_begin_β:  mov              r11, 41;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx323_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
.Lx323_0:               .quad            .Lx323_0_s
.Lx323_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             sub              rsp, 16
                        mov              r11, 43
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd325:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd325]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx324_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_β
.Lx324_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_assign_α
n64_call_β:             mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n62_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT
                        mov              qword ptr [r9 + 104], rdx;           jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 45
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n67_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 46
                        mov              r10, 9;                              jmp   n68_define_α
n67_statement_begin_β:  mov              r11, 46;                             jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_define_α:           mov              r11, 47
                        mov              rdi, qword ptr [rip + .Lx332_0]
                        mov              rsi, qword ptr [rip + .Lx332_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n70_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx332_0]
                        lea              rsi, [rip + ZBODY_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n69_statement_end_α
n68_define_β:           mov              r11, 47;                             jmp   n67_statement_begin_β
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "ZBODY"
.Lx332_1:               .quad            .Lx332_1_s
.Lx332_1_s:             .string          "ZKN"
                                                                              jmp   .Lx333_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx333_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx333_41
.Lx333_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx333_41:              lea              rcx, [rip + ZBODY_γ]
                        lea              rax, [rip + ZBODY_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n70_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx333_80
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx333_110
.Lx333_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx333_110:             mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 64
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
ZBODY_ω:                mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx333_150
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [rcx + 24]
                        add              rax, r8
                        mov              rax, qword ptr [rax + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx333_180
.Lx333_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx333_180:             mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx333_245:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 48
                        mov              r10, 9;                              jmp   n97_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 49
                        mov              r10, 10;                             jmp   n71_lit_integer_α
n70_statement_begin_β:  mov              r11, 49;                             jmp   n74_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_assign_α
.Lx338_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZI
                        mov              qword ptr [r9 + 168], rdx;           jmp   n73_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 52
                        mov              r10, 10
                        add              rsp, 16;                             jmp   n74_statement_begin_α
#=======================================================================================================================
# ZBL     REC ? PAT
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:  mov              r11, 53
                        mov              r10, 11;                             jmp   n75_var_α
n74_statement_begin_β:  mov              r11, 53;                             jmp   n82_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 80]             # REC
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 96]             # PAT
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_assign_α
n76_var_β:              mov              r11, 55;                             jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              r11, 56
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_match_begin_α
n77_assign_β:           mov              r11, 56;                             jmp   n76_var_β
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n78_match_begin_α:      mov              r11, 57
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
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              dword ptr [rbp + -40], 0             # start_δ
.Lx348_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx348_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n79_match_defer_α
n78_match_begin_β:      mov              r11, 57
.Lx348_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx348_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx348_1
                                                                              jmp   .Lx348_0
.Lx348_1:
n78_match_begin_af:     mov              r11, 57
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rcx + 248], rax
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13                             # sig
                        mov              rsi, r15                             # len
                        call             rt_match_ctx_restore@PLT
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n77_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n79_match_defer_α:      mov              r11, 58
                        lea              rdi, [rip + .S3]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx349_14
                        mov              rax, qword ptr [rdx + 0]
.Lx349_14:              test             rax, rax;                            jz    .Lx349_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx349_5]
                        push             rcx
                        lea              rcx, [rip + .Lx349_4]
                        push             rcx;                                 jmp   rax
.Lx349_4:                                                                     jmp   n80_match_end_α
.Lx349_5:                                                                     jmp   n78_match_begin_β
.Lx349_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n78_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx349_6]
                        push             rcx
                        push             rax;                                 jmp   n80_match_end_α
.Lx349_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n78_match_begin_β
n79_match_defer_β:      mov              r11, 58
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx349_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx349_12
                                                                              jmp   rax
.Lx349_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n80_match_end_α:        mov              r11, 59
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
                        call             rt_match_end_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx351_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n78_match_begin_af
.Lx351_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n81_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 60
                        mov              r10, 11
                        add              rsp, 32;                             jmp   n82_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 61
                        mov              r10, 12;                             jmp   n83_var_α
n82_statement_begin_β:  mov              r11, 61;                             jmp   n93_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 160]            # ZI
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              sub              rsp, 16
                        mov              r11, 63
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n85_coerce_numeric_α
n84_var_β:              mov              r11, 63
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n82_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 64
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx359_1
                        cmp              al, 3;                               jne   .Lx359_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx359_0
.Lx359_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n86_coerce_numeric_α
.Lx359_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_coerce_numeric_α
n85_coerce_numeric_β:   mov              r11, 64
                        add              rsp, 16;                             jmp   n84_var_β
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 65
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx361_1
                        cmp              al, 3;                               jne   .Lx361_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx361_0
.Lx361_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n87_cmp_test_α
.Lx361_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_cmp_test_α
n86_coerce_numeric_β:   mov              r11, 65
                        add              rsp, 16;                             jmp   n85_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n87_cmp_test_α:         sub              rsp, 16
                        mov              r11, 66
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx363_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx363_239
                        add              rsp, 16;                             jmp   n86_coerce_numeric_β
.Lx363_239:                                                                   jmp   n88_var_α
.Lx363_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx363_240
                        add              rsp, 16;                             jmp   n86_coerce_numeric_β
.Lx363_240:                                                                   jmp   n88_var_α
n87_cmp_test_β:         mov              r11, 66
                        add              rsp, 16;                             jmp   n86_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 160]            # ZI
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_integer_α
n88_var_β:              mov              r11, 67
                        add              rsp, 16;                             jmp   n87_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_binop_α
n89_lit_integer_β:      mov              r11, 68
                        add              rsp, 16;                             jmp   n88_var_β
.Lx365_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            sub              rsp, 16
                        mov              r11, 69
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx366_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx366_7
.Lx366_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx366_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx366_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx366_4
.Lx366_3:               movq             xmm0, rsi
.Lx366_4:               cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx366_7:                                                                     jmp   n91_assign_α
.Lx366_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx366_240
                        add              rsp, 16;                             jmp   n89_lit_integer_β
.Lx366_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              r11, 70
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZI
                        mov              qword ptr [r9 + 168], rdx;           jmp   n92_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 71
                        mov              r10, 12
                        add              rsp, 128;                            jmp   n74_statement_begin_α
#=======================================================================================================================
#         ZBODY = F3                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 72
                        mov              r10, 13;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 72;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 73
                        mov              rax, qword ptr [r9 + 144]            # F3
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    mov              r11, 75
                        mov              r10, 13
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:  mov              r11, 76
                        mov              r10, 14;                             jmp   n98_statement_end_α
n97_statement_begin_β:  mov              r11, 76;                             jmp   n99_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    mov              r11, 77
                        mov              r10, 14;                             jmp   n99_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 65: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 78
                        mov              r10, 15;                             jmp   n100_lit_string_α
n99_statement_begin_β:  mov              r11, 78;                             jmp   n106_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_var_α
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 80
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_call_α
n101_var_β:             mov              r11, 80
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n102_call_α:            sub              rsp, 16
                        mov              r11, 81
                        lea              rcx, [rip + .Lsig385z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig385z:              .quad            1
                        .quad            .Lx385_2
                        .quad            .Lx385_2
                        .quad            16
.Lx385_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx385_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx385_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx385_240
                        add              rsp, 16;                             jmp   n101_var_β
.Lx385_240:                                                                   jmp   n103_binop_α
n102_call_β:            mov              r11, 81;                             jmp   n101_var_β
.Lx385_0:               .quad            .Lx385_0_s
.Lx385_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
                        mov              r11, 82
                        mov              rdi, qword ptr [rsp + 48]            # lit_string
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n104_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 83
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n105_statement_end_α
.Lx387_0:               .quad            .Lx387_0_s
.Lx387_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 84
                        mov              r10, 15
                        add              rsp, 64;                             jmp   n106_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 66: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_begin_α: mov              r11, 85
                        mov              r10, 16;                             jmp   n107_var_α
n106_statement_begin_β: mov              r11, 85;                             jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:             sub              rsp, 16
                        mov              r11, 86
                        mov              rdi, qword ptr [rip + .Lx392_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx392_240
                        add              rsp, 16;                             jmp   n106_statement_begin_β
.Lx392_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n108_assign_α
.Lx392_0:               .quad            .Lx392_0_s
.Lx392_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # fixed_n
                        mov              qword ptr [r9 + 184], rdx;           jmp   n109_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   mov              r11, 88
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 67: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 89
                        mov              r10, 17;                             jmp   n111_var_α
n110_statement_begin_β: mov              r11, 89;                             jmp   n116_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 90
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_binop_α
n112_lit_integer_β:     mov              r11, 91
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Lx399_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:           sub              rsp, 16
                        mov              r11, 92
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx400_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx400_7
.Lx400_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx400_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx400_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx400_4
.Lx400_3:               movq             xmm0, rsi
.Lx400_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx400_7:                                                                     jmp   n114_assign_α
.Lx400_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx400_240
                        add              rsp, 16;                             jmp   n112_lit_integer_β
.Lx400_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              r11, 93
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n115_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 94
                        mov              r10, 17
                        add              rsp, 48;                             jmp   n116_statement_begin_α
#=======================================================================================================================
#         <stmt 18, line 68: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α: mov              r11, 95
                        mov              r10, 18;                             jmp   n117_var_α
n116_statement_begin_β: mov              r11, 95;                             jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:             sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n118_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     sub              rsp, 16
                        mov              r11, 97
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n119_binop_α
n118_lit_integer_β:     mov              r11, 97
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n116_statement_begin_β
.Lx407_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n119_binop_α:           sub              rsp, 16
                        mov              r11, 98
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx408_2
                        mov              rdx, 1000000
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx408_7
.Lx408_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx408_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1000000
                        cmp              al, 5;                               je    .Lx408_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx408_4
.Lx408_3:               movq             xmm0, rsi
.Lx408_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx408_7:                                                                     jmp   n120_assign_α
.Lx408_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx408_240
                        add              rsp, 16;                             jmp   n118_lit_integer_β
.Lx408_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 100
                        mov              r10, 18
                        add              rsp, 48;                             jmp   n122_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 69: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 101
                        mov              r10, 19;                             jmp   n123_var_α
n122_statement_begin_β: mov              r11, 101;                            jmp   n127_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx415_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_differ_α
n124_lit_string_β:      mov              r11, 103
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
.Lx415_0:               .quad            .Lx415_0_s
.Lx415_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n125_differ_α:          sub              rsp, 16
                        mov              r11, 104
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx417_240
                        add              rsp, 16;                             jmp   n124_lit_string_β
.Lx417_240:                                                                   jmp   n126_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 105
                        mov              r10, 19
                        add              rsp, 48;                             jmp   n156_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 70: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α: mov              r11, 106
                        mov              r10, 20;                             jmp   n128_lit_integer_α
n127_statement_begin_β: mov              r11, 106;                            jmp   n131_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              r11, 107
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_assign_α
.Lx422_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZK
                        mov              qword ptr [r9 + 200], rdx;           jmp   n130_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 109
                        mov              r10, 20
                        add              rsp, 16;                             jmp   n131_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 21, line 71: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 110
                        mov              r10, 21;                             jmp   n132_call_α
n131_statement_begin_β: mov              r11, 110;                            jmp   n135_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n132_call_α:            sub              rsp, 16
                        mov              r11, 111
                        .section         .rodata
.Lrkfnzd429:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd429]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx428_240
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Lx428_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_assign_α
n132_call_β:            mov              r11, 111
                        add              rsp, 16;                             jmp   n131_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_α:          mov              r11, 112
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZT
                        mov              qword ptr [r9 + 216], rdx;           jmp   n134_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 113
                        mov              r10, 21
                        add              rsp, 16;                             jmp   n135_statement_begin_α
#=======================================================================================================================
#         <stmt 22, line 72: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α: mov              r11, 114
                        mov              r10, 22;                             jmp   n136_var_α
n135_statement_begin_β: mov              r11, 114;                            jmp   n139_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              r11, 115
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_call_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            sub              rsp, 16
                        mov              r11, 116
                        lea              rcx, [rip + .Lsig437z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig437z:              .quad            1
                        .quad            .Lx437_2
                        .quad            .Lx437_2
                        .quad            16
.Lx437_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx437_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx437_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx437_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n135_statement_begin_β
.Lx437_240:                                                                   jmp   n138_statement_end_α
n137_call_β:            mov              r11, 116;                            jmp   n135_statement_begin_β
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   mov              r11, 117
                        mov              r10, 22
                        add              rsp, 32;                             jmp   n139_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 73: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 118
                        mov              r10, 23;                             jmp   n140_call_α
n139_statement_begin_β: mov              r11, 118;                            jmp   n145_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            sub              rsp, 16
                        mov              r11, 119
                        .section         .rodata
.Lrkfnzd443:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd443]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx442_240
                        add              rsp, 16;                             jmp   n139_statement_begin_β
.Lx442_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
n140_call_β:            mov              r11, 119
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_binop_α
n141_var_β:             mov              r11, 120
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:           sub              rsp, 16
                        mov              r11, 121
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx445_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx445_7
.Lx445_2:               and              edx, 1;                              jz    .Lx445_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx445_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx445_4
.Lx445_3:               movq             xmm0, rsi
.Lx445_4:               cmp              cl, 5;                               je    .Lx445_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx445_6
.Lx445_5:               movq             xmm1, rdi
.Lx445_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx445_7:                                                                     jmp   n143_assign_α
.Lx445_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx445_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lx445_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              r11, 122
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n144_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 123
                        mov              r10, 23
                        add              rsp, 48;                             jmp   n145_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 74: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 124
                        mov              r10, 24;                             jmp   n146_var_α
n145_statement_begin_β: mov              r11, 124;                            jmp   n156_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              r11, 125
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_var_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n148_coerce_numeric_α
n147_var_β:             mov              r11, 126
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n145_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n148_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 127
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx454_1
                        cmp              al, 3;                               jne   .Lx454_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx454_0
.Lx454_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n149_coerce_numeric_α
.Lx454_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n149_coerce_numeric_α
n148_coerce_numeric_β:  mov              r11, 127
                        add              rsp, 16;                             jmp   n147_var_β
#-----------------------------------------------------------------------------------------------------------------------
n149_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 128
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx456_1
                        cmp              al, 3;                               jne   .Lx456_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx456_0
.Lx456_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_cmp_test_α
.Lx456_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n150_cmp_test_α
n149_coerce_numeric_β:  mov              r11, 128
                        add              rsp, 16;                             jmp   n148_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n150_cmp_test_α:        sub              rsp, 16
                        mov              r11, 129
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx458_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx458_239
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
.Lx458_239:                                                                   jmp   n151_var_α
.Lx458_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx458_240
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
.Lx458_240:                                                                   jmp   n151_var_α
n150_cmp_test_β:        mov              r11, 129
                        add              rsp, 16;                             jmp   n149_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n151_var_α:             sub              rsp, 16
                        mov              r11, 130
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n152_lit_integer_α
n151_var_β:             mov              r11, 130
                        add              rsp, 16;                             jmp   n150_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     sub              rsp, 16
                        mov              r11, 131
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_binop_α
n152_lit_integer_β:     mov              r11, 131
                        add              rsp, 16;                             jmp   n151_var_β
.Lx460_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n153_binop_α:           sub              rsp, 16
                        mov              r11, 132
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx461_2
                        mov              rdx, 2
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx461_7
.Lx461_2:               mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx461_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx461_4
.Lx461_3:               movq             xmm0, rsi
.Lx461_4:               cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx461_7:                                                                     jmp   n154_assign_α
.Lx461_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_mul@PLT
                        cmp              al, 104;                             jne   .Lx461_240
                        add              rsp, 16;                             jmp   n152_lit_integer_β
.Lx461_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n154_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n154_assign_α:          mov              r11, 133
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZK
                        mov              qword ptr [r9 + 200], rdx;           jmp   n155_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 134
                        mov              r10, 24
                        add              rsp, 128;                            jmp   n131_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 25, line 75: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 135
                        mov              r10, 25;                             jmp   n157_call_α
n156_statement_begin_β: mov              r11, 135;                            jmp   n160_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:            sub              rsp, 16
                        mov              r11, 136
                        .section         .rodata
.Lrkfnzd468:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd468]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx467_240
                        add              rsp, 16;                             jmp   n156_statement_begin_β
.Lx467_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_assign_α
n157_call_β:            mov              r11, 136
                        add              rsp, 16;                             jmp   n156_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZT
                        mov              qword ptr [r9 + 216], rdx;           jmp   n159_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 138
                        mov              r10, 25
                        add              rsp, 16;                             jmp   n160_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 76: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 139
                        mov              r10, 26;                             jmp   n161_var_α
n160_statement_begin_β: mov              r11, 139;                            jmp   n166_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_var_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_binop_α
n162_var_β:             mov              r11, 141
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n163_binop_α:           sub              rsp, 16
                        mov              r11, 142
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx476_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx476_7
.Lx476_2:               and              edx, 1;                              jz    .Lx476_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx476_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx476_4
.Lx476_3:               movq             xmm0, rsi
.Lx476_4:               cmp              cl, 5;                               je    .Lx476_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx476_6
.Lx476_5:               movq             xmm1, rdi
.Lx476_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx476_7:                                                                     jmp   n164_assign_α
.Lx476_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx476_240
                        add              rsp, 16;                             jmp   n162_var_β
.Lx476_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n164_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n164_assign_α:          mov              r11, 143
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZD
                        mov              qword ptr [r9 + 248], rdx;           jmp   n165_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   mov              r11, 144
                        mov              r10, 26
                        add              rsp, 48;                             jmp   n166_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 77: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_begin_α: mov              r11, 145
                        mov              r10, 27;                             jmp   n167_lit_integer_α
n166_statement_begin_β: mov              r11, 145;                            jmp   n170_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_integer_α:     sub              rsp, 16
                        mov              r11, 146
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n168_assign_α
.Lx482_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              r11, 147
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n169_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   mov              r11, 148
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n170_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 28, line 78: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 149
                        mov              r10, 28;                             jmp   n171_var_α
n170_statement_begin_β: mov              r11, 149;                            jmp   n174_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              r11, 150
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_call_α
#-----------------------------------------------------------------------------------------------------------------------
n172_call_α:            sub              rsp, 16
                        mov              r11, 151
                        lea              rcx, [rip + .Lsig490z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig490z:              .quad            1
                        .quad            .Lx490_2
                        .quad            .Lx490_2
                        .quad            16
.Lx490_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx490_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx490_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx490_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Lx490_240:                                                                   jmp   n173_statement_end_α
n172_call_β:            mov              r11, 151;                            jmp   n170_statement_begin_β
.Lx490_0:               .quad            .Lx490_0_s
.Lx490_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   mov              r11, 152
                        mov              r10, 28
                        add              rsp, 32;                             jmp   n174_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 79: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α: mov              r11, 153
                        mov              r10, 29;                             jmp   n175_var_α
n174_statement_begin_β: mov              r11, 153;                            jmp   n180_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:             sub              rsp, 16
                        mov              r11, 154
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             sub              rsp, 16
                        mov              r11, 155
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_binop_α
n176_var_β:             mov              r11, 155
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n174_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n177_binop_α:           sub              rsp, 16
                        mov              r11, 156
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx497_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx497_7
.Lx497_2:               and              edx, 1;                              jz    .Lx497_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx497_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx497_4
.Lx497_3:               movq             xmm0, rsi
.Lx497_4:               cmp              cl, 5;                               je    .Lx497_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx497_6
.Lx497_5:               movq             xmm1, rdi
.Lx497_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx497_7:                                                                     jmp   n178_assign_α
.Lx497_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx497_240
                        add              rsp, 16;                             jmp   n176_var_β
.Lx497_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n178_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n178_assign_α:          mov              r11, 157
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n179_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 158
                        mov              r10, 29
                        add              rsp, 48;                             jmp   n180_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 80: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α: mov              r11, 159
                        mov              r10, 30;                             jmp   n181_call_α
n180_statement_begin_β: mov              r11, 159;                            jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_α:            sub              rsp, 16
                        mov              r11, 160
                        .section         .rodata
.Lrkfnzd504:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd504]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx503_240
                        add              rsp, 16;                             jmp   n180_statement_begin_β
.Lx503_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_var_α
n181_call_β:            mov              r11, 160
                        add              rsp, 16;                             jmp   n180_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 240]            # ZD
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_coerce_numeric_α
n182_var_β:             mov              r11, 161
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n180_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n183_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 162
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              al, 5;                               je    .Lx507_1
                        cmp              al, 3;                               jne   .Lx507_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lx507_0
.Lx507_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n184_coerce_numeric_α
.Lx507_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n184_coerce_numeric_α
n183_coerce_numeric_β:  mov              r11, 162
                        add              rsp, 16;                             jmp   n182_var_β
#-----------------------------------------------------------------------------------------------------------------------
n184_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 163
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx509_1
                        cmp              al, 3;                               jne   .Lx509_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              al, 3;                               jne   .Lx509_0
.Lx509_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_cmp_test_α
.Lx509_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n185_cmp_test_α
n184_coerce_numeric_β:  mov              r11, 163
                        add              rsp, 16;                             jmp   n183_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n185_cmp_test_α:        sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx511_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx511_239
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
.Lx511_239:                                                                   jmp   n186_statement_end_α
.Lx511_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx511_240
                        add              rsp, 16;                             jmp   n184_coerce_numeric_β
.Lx511_240:                                                                   jmp   n186_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 165
                        mov              r10, 30
                        add              rsp, 80;                             jmp   n170_statement_begin_α
#=======================================================================================================================
#         <stmt 31, line 81: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 166
                        mov              r10, 31;                             jmp   n188_call_α
n187_statement_begin_β: mov              r11, 166;                            jmp   n193_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_α:            sub              rsp, 16
                        mov              r11, 167
                        .section         .rodata
.Lrkfnzd517:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd517]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx516_240
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Lx516_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_var_α
n188_call_β:            mov              r11, 167
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 168
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_binop_α
n189_var_β:             mov              r11, 168
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx519_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx519_7
.Lx519_2:               and              edx, 1;                              jz    .Lx519_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx519_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx519_4
.Lx519_3:               movq             xmm0, rsi
.Lx519_4:               cmp              cl, 5;                               je    .Lx519_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx519_6
.Lx519_5:               movq             xmm1, rdi
.Lx519_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx519_7:                                                                     jmp   n191_assign_α
.Lx519_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx519_240
                        add              rsp, 16;                             jmp   n189_var_β
.Lx519_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n191_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n192_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 171
                        mov              r10, 31
                        add              rsp, 48;                             jmp   n193_statement_begin_α
#=======================================================================================================================
#         <stmt 32, line 82: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 172
                        mov              r10, 32;                             jmp   n194_lit_string_α
n193_statement_begin_β: mov              r11, 172;                            jmp   n199_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_string_α:      sub              rsp, 16
                        mov              r11, 173
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_var_α
.Lx525_0:               .quad            .Lx525_0_s
.Lx525_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 174
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_binop_α
n195_var_β:             mov              r11, 174
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:           sub              rsp, 16
                        mov              r11, 175
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n197_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              r11, 176
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n198_statement_end_α
.Lx528_0:               .quad            .Lx528_0_s
.Lx528_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   mov              r11, 177
                        mov              r10, 32
                        add              rsp, 48;                             jmp   n199_statement_begin_α
#=======================================================================================================================
#         <stmt 33, line 83: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 178
                        mov              r10, 33;                             jmp   n200_lit_string_α
n199_statement_begin_β: mov              r11, 178;                            jmp   n205_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      sub              rsp, 16
                        mov              r11, 179
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_var_α
.Lx533_0:               .quad            .Lx533_0_s
.Lx533_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_binop_α
n201_var_β:             mov              r11, 180
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           sub              rsp, 16
                        mov              r11, 181
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n203_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              r11, 182
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n204_statement_end_α
.Lx536_0:               .quad            .Lx536_0_s
.Lx536_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 183
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n205_statement_begin_α
#=======================================================================================================================
#         <stmt 34, line 84: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 184
                        mov              r10, 34;                             jmp   n206_lit_string_α
n205_statement_begin_β: mov              r11, 184;                            jmp   n273_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      sub              rsp, 16
                        mov              r11, 185
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_var_α
.Lx541_0:               .quad            .Lx541_0_s
.Lx541_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_lit_integer_α
n207_var_β:             mov              r11, 186
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_integer_α:     sub              rsp, 16
                        mov              r11, 187
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_binop_α
n208_lit_integer_β:     mov              r11, 187
                        add              rsp, 16;                             jmp   n207_var_β
.Lx543_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              r11, 188
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx544_240
                        add              rsp, 16;                             jmp   n208_lit_integer_β
.Lx544_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n210_binop_α
n209_binop_β:           mov              r11, 188
                        add              rsp, 16;                             jmp   n208_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n210_binop_α:           sub              rsp, 16
                        mov              r11, 189
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n211_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n211_assign_α:          mov              r11, 190
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n212_statement_end_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_end_α:   mov              r11, 191
                        mov              r10, 34
                        add              rsp, 80;                             jmp   n273_statement_begin_α
#=======================================================================================================================
# ZFIXRUN  <stmt 35, line 85: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 192
                        mov              r10, 35;                             jmp   n214_var_α
n213_statement_begin_β: mov              r11, 192;                            jmp   n218_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 193
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      sub              rsp, 16
                        mov              r11, 194
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_differ_α
n215_lit_string_β:      mov              r11, 194
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Lx552_0:               .quad            .Lx552_0_s
.Lx552_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n216_differ_α:          sub              rsp, 16
                        mov              r11, 195
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             descr_identical@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx554_240
                        add              rsp, 16;                             jmp   n215_lit_string_β
.Lx554_240:                                                                   jmp   n217_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   mov              r11, 196
                        mov              r10, 35
                        add              rsp, 48;                             jmp   n222_statement_begin_α
#=======================================================================================================================
#         <stmt 36, line 86: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 197
                        mov              r10, 36;                             jmp   n219_var_α
n218_statement_begin_β: mov              r11, 197;                            jmp   n222_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 176]            # fixed_n
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZK
                        mov              qword ptr [r9 + 200], rdx;           jmp   n221_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   mov              r11, 200
                        mov              r10, 36
                        add              rsp, 16;                             jmp   n222_statement_begin_α
#=======================================================================================================================
# ZFB  <stmt 37, line 87: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α: mov              r11, 201
                        mov              r10, 37;                             jmp   n223_call_α
n222_statement_begin_β: mov              r11, 201;                            jmp   n226_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            sub              rsp, 16
                        mov              r11, 202
                        .section         .rodata
.Lrkfnzd566:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd566]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx565_240
                        add              rsp, 16;                             jmp   n222_statement_begin_β
.Lx565_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_assign_α
n223_call_β:            mov              r11, 202
                        add              rsp, 16;                             jmp   n222_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              r11, 203
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZT
                        mov              qword ptr [r9 + 216], rdx;           jmp   n225_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   mov              r11, 204
                        mov              r10, 37
                        add              rsp, 16;                             jmp   n226_statement_begin_α
#=======================================================================================================================
#         <stmt 38, line 88: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_begin_α: mov              r11, 205
                        mov              r10, 38;                             jmp   n227_lit_integer_α
n226_statement_begin_β: mov              r11, 205;                            jmp   n230_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 206
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_assign_α
.Lx572_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n228_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n229_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   mov              r11, 208
                        mov              r10, 38
                        add              rsp, 16;                             jmp   n230_statement_begin_α
#=======================================================================================================================
# ZFL  <stmt 39, line 89: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_begin_α: mov              r11, 209
                        mov              r10, 39;                             jmp   n231_var_α
n230_statement_begin_β: mov              r11, 209;                            jmp   n234_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             sub              rsp, 16
                        mov              r11, 210
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n232_call_α
#-----------------------------------------------------------------------------------------------------------------------
n232_call_α:            sub              rsp, 16
                        mov              r11, 211
                        lea              rcx, [rip + .Lsig580z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig580z:              .quad            1
                        .quad            .Lx580_2
                        .quad            .Lx580_2
                        .quad            16
.Lx580_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx580_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx580_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx580_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n230_statement_begin_β
.Lx580_240:                                                                   jmp   n233_statement_end_α
n232_call_β:            mov              r11, 211;                            jmp   n230_statement_begin_β
.Lx580_0:               .quad            .Lx580_0_s
.Lx580_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   mov              r11, 212
                        mov              r10, 39
                        add              rsp, 32;                             jmp   n234_statement_begin_α
#=======================================================================================================================
#         <stmt 40, line 90: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_begin_α: mov              r11, 213
                        mov              r10, 40;                             jmp   n235_var_α
n234_statement_begin_β: mov              r11, 213;                            jmp   n240_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 214
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_var_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 215
                        mov              rax, qword ptr [r9 + 192]            # ZK
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_binop_α
n236_var_β:             mov              r11, 215
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n234_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           sub              rsp, 16
                        mov              r11, 216
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx587_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx587_7
.Lx587_2:               and              edx, 1;                              jz    .Lx587_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lx587_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx587_4
.Lx587_3:               movq             xmm0, rsi
.Lx587_4:               cmp              cl, 5;                               je    .Lx587_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx587_6
.Lx587_5:               movq             xmm1, rdi
.Lx587_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx587_7:                                                                     jmp   n238_assign_α
.Lx587_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx587_240
                        add              rsp, 16;                             jmp   n236_var_β
.Lx587_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n238_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:          mov              r11, 217
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 256], rax            # ZN
                        mov              qword ptr [r9 + 264], rdx;           jmp   n239_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   mov              r11, 218
                        mov              r10, 40
                        add              rsp, 48;                             jmp   n240_statement_begin_α
#=======================================================================================================================
#         <stmt 41, line 91: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α: mov              r11, 219
                        mov              r10, 41;                             jmp   n241_var_α
n240_statement_begin_β: mov              r11, 219;                            jmp   n247_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 176]            # fixed_n
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_coerce_numeric_α
n242_var_β:             mov              r11, 221
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n240_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n243_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 222
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx596_1
                        cmp              al, 3;                               jne   .Lx596_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx596_0
.Lx596_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_coerce_numeric_α
.Lx596_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n244_coerce_numeric_α
n243_coerce_numeric_β:  mov              r11, 222
                        add              rsp, 16;                             jmp   n242_var_β
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 223
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lx598_1
                        cmp              al, 3;                               jne   .Lx598_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lx598_0
.Lx598_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_cmp_test_α
.Lx598_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n245_cmp_test_α
n244_coerce_numeric_β:  mov              r11, 223
                        add              rsp, 16;                             jmp   n243_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n245_cmp_test_α:        sub              rsp, 16
                        mov              r11, 224
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx600_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lx600_239
                        add              rsp, 16;                             jmp   n244_coerce_numeric_β
.Lx600_239:                                                                   jmp   n246_statement_end_α
.Lx600_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            js    .Lx600_240
                        add              rsp, 16;                             jmp   n244_coerce_numeric_β
.Lx600_240:                                                                   jmp   n246_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   mov              r11, 225
                        mov              r10, 41
                        add              rsp, 80;                             jmp   n230_statement_begin_α
#=======================================================================================================================
#         <stmt 42, line 92: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α: mov              r11, 226
                        mov              r10, 42;                             jmp   n248_call_α
n247_statement_begin_β: mov              r11, 226;                            jmp   n253_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            sub              rsp, 16
                        mov              r11, 227
                        .section         .rodata
.Lrkfnzd606:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd606]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             jne   .Lx605_240
                        add              rsp, 16;                             jmp   n247_statement_begin_β
.Lx605_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_var_α
n248_call_β:            mov              r11, 227
                        add              rsp, 16;                             jmp   n247_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 208]            # ZT
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_binop_α
n249_var_β:             mov              r11, 228
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n247_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n250_binop_α:           sub              rsp, 16
                        mov              r11, 229
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx608_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx608_7
.Lx608_2:               and              edx, 1;                              jz    .Lx608_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              al, 5;                               je    .Lx608_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx608_4
.Lx608_3:               movq             xmm0, rsi
.Lx608_4:               cmp              cl, 5;                               je    .Lx608_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx608_6
.Lx608_5:               movq             xmm1, rdi
.Lx608_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx608_7:                                                                     jmp   n251_assign_α
.Lx608_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             jne   .Lx608_240
                        add              rsp, 16;                             jmp   n249_var_β
.Lx608_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n251_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:          mov              r11, 230
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n252_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   mov              r11, 231
                        mov              r10, 42
                        add              rsp, 48;                             jmp   n253_statement_begin_α
#=======================================================================================================================
#         <stmt 43, line 93: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α: mov              r11, 232
                        mov              r10, 43;                             jmp   n254_lit_string_α
n253_statement_begin_β: mov              r11, 232;                            jmp   n259_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      sub              rsp, 16
                        mov              r11, 233
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx614_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_var_α
.Lx614_0:               .quad            .Lx614_0_s
.Lx614_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 256]            # ZN
                        mov              rdx, qword ptr [r9 + 264]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_binop_α
n255_var_β:             mov              r11, 234
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n253_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n256_binop_α:           sub              rsp, 16
                        mov              r11, 235
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n257_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:          mov              r11, 236
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n258_statement_end_α
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   mov              r11, 237
                        mov              r10, 43
                        add              rsp, 48;                             jmp   n259_statement_begin_α
#=======================================================================================================================
#         <stmt 44, line 94: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α: mov              r11, 238
                        mov              r10, 44;                             jmp   n260_lit_string_α
n259_statement_begin_β: mov              r11, 238;                            jmp   n265_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              r11, 239
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_var_α
.Lx622_0:               .quad            .Lx622_0_s
.Lx622_0_s:             .string          "ns: "
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              r11, 240
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_binop_α
n261_var_β:             mov              r11, 240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n259_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n262_binop_α:           sub              rsp, 16
                        mov              r11, 241
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n263_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n263_assign_α:          mov              r11, 242
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n264_statement_end_α
.Lx625_0:               .quad            .Lx625_0_s
.Lx625_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_end_α:   mov              r11, 243
                        mov              r10, 44
                        add              rsp, 48;                             jmp   n265_statement_begin_α
#=======================================================================================================================
#         <stmt 45, line 95: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α: mov              r11, 244
                        mov              r10, 45;                             jmp   n266_lit_string_α
n265_statement_begin_β: mov              r11, 244;                            jmp   n273_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      sub              rsp, 16
                        mov              r11, 245
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_var_α
.Lx630_0:               .quad            .Lx630_0_s
.Lx630_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             sub              rsp, 16
                        mov              r11, 246
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n268_lit_integer_α
n267_var_β:             mov              r11, 246
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n265_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_integer_α:     sub              rsp, 16
                        mov              r11, 247
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n269_binop_α
n268_lit_integer_β:     mov              r11, 247
                        add              rsp, 16;                             jmp   n267_var_β
.Lx632_0:               .quad            1000000
#-----------------------------------------------------------------------------------------------------------------------
n269_binop_α:           sub              rsp, 16
                        mov              r11, 248
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_div@PLT
                        cmp              al, 104;                             jne   .Lx633_240
                        add              rsp, 16;                             jmp   n268_lit_integer_β
.Lx633_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n270_binop_α
n269_binop_β:           mov              r11, 248
                        add              rsp, 16;                             jmp   n268_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n270_binop_α:           sub              rsp, 16
                        mov              r11, 249
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n271_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 250
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n272_statement_end_α
.Lx635_0:               .quad            .Lx635_0_s
.Lx635_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   mov              r11, 251
                        mov              r10, 45
                        add              rsp, 80;                             jmp   n273_statement_begin_α
#=======================================================================================================================
# ZEXIT  <stmt 46, line 96: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α: mov              r11, 252
                        mov              r10, 46;                             jmp   n274_var_α
n273_statement_begin_β: mov              r11, 252;                            jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              r11, 253
                        mov              rax, qword ptr [r9 + 224]            # ZE
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:          mov              r11, 254
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZE
                        mov              qword ptr [r9 + 232], rdx;           jmp   n276_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   mov              r11, 255
                        mov              r10, 46
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 256
                        pop              rcx
                        add              rsp, 8;                              jmp   rcx
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
.Lseala1:               .string          "ZBODY"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            ZBODY_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + ZBODY_α@GOTPCREL]
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
