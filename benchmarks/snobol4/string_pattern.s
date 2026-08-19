                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n1_match_break_α
n0_match_assign_save_β: add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_break_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx14_0:                cmp              ecx, r15d;                           jl    .Lx14_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
.Lx14_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx14_1
                        add              ecx, 1;                              jmp   .Lx14_0
.Lx14_1:                mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_cond_α
n1_match_break_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S0]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n3_match_lit_α
n2_match_assign_cond_β: sub              r12, 24;                             jmp   n1_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n2_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n2_match_assign_cond_β
                        add              r14d, 1;                             jmp   n4_match_assign_save_α
n3_match_lit_β:         sub              r14d, 1;                             jmp   n2_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n5_match_break_α
n4_match_assign_save_β: add              rsp, 16;                             jmp   n3_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_break_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx22_0:                cmp              ecx, r15d;                           jl    .Lx22_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
.Lx22_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx22_1
                        add              ecx, 1;                              jmp   .Lx22_0
.Lx22_1:                mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n6_match_assign_cond_α
n5_match_break_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n3_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_cond_α: mov              eax, dword ptr [rsp + 16]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n7_match_lit_α
n6_match_assign_cond_β: sub              r12, 24;                             jmp   n5_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_assign_cond_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n6_match_assign_cond_β
                        add              r14d, 1;                             jmp   n8_match_assign_save_α
n7_match_lit_β:         sub              r14d, 1;                             jmp   n6_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n9_match_break_α
n8_match_assign_save_β: add              rsp, 16;                             jmp   n7_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_break_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx30_0:                cmp              ecx, r15d;                           jl    .Lx30_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lx30_240:              movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 44;                             je    .Lx30_1
                        add              ecx, 1;                              jmp   .Lx30_0
.Lx30_1:                mov              dword ptr [rsp + 0], r14d
                        mov              r14d, ecx;                           jmp   n10_match_assign_cond_α
n9_match_break_β:       mov              r14d, dword ptr [rsp + 0]
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n7_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_assign_cond_α:
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
                        sub              r12, 24;                             jmp   n9_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        sub              rsp, 8
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$0_res]
                        push             rax;                                 jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                                                                              jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 16
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 16
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
.Lgvan11:               .string          "ZK"
.Lgvan12:               .string          "ZT"
.Lgvan13:               .string          "ZE"
.Lgvan14:               .string          "ZD"
.Lgvan15:               .string          "ZN"
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
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM = 1
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:                                                        jmp   n34_lit_string_α
n33_statement_begin_β:                                                        jmp   n38_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_lit_integer_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_call_α
n35_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lx197_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
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
.Lrkfnzd199:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd199]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx198_240
                        add              rsp, 16;                             jmp   n35_lit_integer_β
.Lx198_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_statement_end_α
n36_call_β:             add              rsp, 16;                             jmp   n35_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    add              rsp, 48;                             jmp   n38_statement_begin_α
#=======================================================================================================================
#         &ANCHOR = 0
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:                                                        jmp   n39_lit_string_α
n38_statement_begin_β:                                                        jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_lit_integer_α
.Lx204_0:               .quad            .Lx204_0_s
.Lx204_0_s:             .string          "ANCHOR"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_call_α
n40_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Lx205_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             sub              rsp, 16
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
.Lrkfnzd207:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd207]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx206_240
                        add              rsp, 16;                             jmp   n40_lit_integer_β
.Lx206_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_statement_end_α
n41_call_β:             add              rsp, 16;                             jmp   n40_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    add              rsp, 48;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         &STLIMIT = -1
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:                                                        jmp   n44_lit_string_α
n43_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_lit_integer_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "STLIMIT"
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_unop_α
n45_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lx213_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n46_unop_α:             sub              rsp, 16
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
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_call_α
n46_unop_β:             add              rsp, 16;                             jmp   n45_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             sub              rsp, 16
                        sub              rsp, 32
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], r8
                        .section         .rodata
.Lrkfnzd216:            .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd216]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        cmp              eax, 104;                            jne   .Lx215_240
                        add              rsp, 16;                             jmp   n46_unop_β
.Lx215_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_statement_end_α
n47_call_β:             add              rsp, 16;                             jmp   n46_unop_β
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 64;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         ZCHK = 1000
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_lit_integer_α
n49_statement_begin_β:                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx221_0:               .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # ZCHK
                        mov              qword ptr [r9 + 40], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 16;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         ZBUD = 500
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:                                                        jmp   n54_lit_integer_α
n53_statement_begin_β:                                                        jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx227_0:               .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ZBUD
                        mov              qword ptr [r9 + 56], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 16;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         ZFLR = 20
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_lit_integer_α
n57_statement_begin_β:                                                        jmp   n61_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Lx233_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # ZFLR
                        mov              qword ptr [r9 + 72], rdx;            jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    add              rsp, 16;                             jmp   n61_statement_begin_α
#=======================================================================================================================
#         REC = 'alpha,beta,gamma,delta,epsilon'
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:                                                        jmp   n62_lit_string_α
n61_statement_begin_β:                                                        jmp   n65_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 30
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_assign_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          "alpha,beta,gamma,delta,epsilon"
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # REC
                        mov              qword ptr [r9 + 88], rdx;            jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 16;                             jmp   n65_statement_begin_α
#=======================================================================================================================
#         PAT = BREAK(',') . F1 ',' BREAK(',') . F2 ',' BREAK(',') . F3
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:                                                        jmp   n66_lit_string_α
n65_statement_begin_β:                                                        jmp   n70_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_call_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd247:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd247]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx246_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
.Lx246_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_assign_α
n67_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n65_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT
                        mov              qword ptr [r9 + 104], rdx;           jmp   n69_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    add              rsp, 32;                             jmp   n70_statement_begin_α
#=======================================================================================================================
#         DEFINE('ZBODY(ZKN)')                            :(ZBODY_END)
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:                                                        jmp   n71_define_α
n70_statement_begin_β:                                                        jmp   n101_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n71_define_α:           mov              rdi, qword ptr [rip + .Lx254_0]
                        mov              rsi, qword ptr [rip + .Lx254_1]
                        mov              edx, 1
                        mov              ecx, 1
                        mov              r8d, 0
                        lea              r9, [rip + n73_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_statement_end_α
n71_define_β:                                                                 jmp   n70_statement_begin_β
.Lx254_0:               .quad            .Lx254_0_s
.Lx254_0_s:             .string          "ZBODY"
.Lx254_1:               .quad            .Lx254_1_s
.Lx254_1_s:             .string          "ZKN"
                                                                              jmp   .Lx255_245
#-----------------------------------------------------------------------------------------------------------------------
ZBODY_α:                sub              rsp, 64
                        mov              rax, qword ptr [r9 + 0]              # ZBODY
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 16], r10
                        mov              qword ptr [rsp + 24], r11
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        cmp              rdx, 0;                              jbe   .Lx255_10
                        mov              rdi, qword ptr [rcx + 24]
                        add              rdi, r8
                        mov              rax, qword ptr [rdi + 0]
                        mov              rsi, qword ptr [r9 + 16]             # ZKN
                        mov              qword ptr [r9 + 16], rax
                        mov              qword ptr [rdi + 0], rsi
                        mov              rax, qword ptr [rdi + 8]
                        mov              rsi, qword ptr [r9 + 24]
                        mov              qword ptr [r9 + 24], rax
                        mov              qword ptr [rdi + 8], rsi;            jmp   .Lx255_41
.Lx255_10:              mov              rax, qword ptr [r9 + 16]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 56], rax
                        mov              qword ptr [r9 + 16], 0
                        mov              qword ptr [r9 + 24], 0
.Lx255_41:              lea              r10, [rip + ZBODY_γ]
                        lea              r11, [rip + ZBODY_ω]
                        push             r11
                        push             r10
                        lea              rax, [rip + n73_statement_begin_α];  jmp   rax
ZBODY_γ:                mov              rdi, qword ptr [r9 + 0]              # ZBODY
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        cmp              rdx, 0;                              jbe   .Lx255_80
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx255_110
.Lx255_80:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx255_110:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 8]
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
                        cmp              rdx, 0;                              jbe   .Lx255_150
                        mov              r11, qword ptr [rcx + 24]
                        add              r11, r8
                        mov              rax, qword ptr [r11 + 0]
                        mov              qword ptr [r9 + 16], rax             # ZKN
                        mov              rax, qword ptr [r11 + 8]
                        mov              qword ptr [r9 + 24], rax;            jmp   .Lx255_180
.Lx255_150:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [r9 + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [r9 + 24], rax
.Lx255_180:             mov              r10, qword ptr [rsp + 16]
                        mov              r11, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 64
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx255_245:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:                                                          jmp   n101_statement_begin_α
#=======================================================================================================================
# ZBODY   ZI = 1
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:                                                        jmp   n74_lit_integer_α
n73_statement_begin_β:                                                        jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n75_assign_α
.Lx260_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZI
                        mov              qword ptr [r9 + 168], rdx;           jmp   n76_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    add              rsp, 16;                             jmp   n77_statement_begin_α
#=======================================================================================================================
# ZBL     REC ? PAT
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:                                                        jmp   n78_var_α
n77_statement_begin_β:                                                        jmp   n85_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # REC
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # PAT
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_assign_α
n79_var_β:                                                                    jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_match_begin_α
n80_assign_β:                                                                 jmp   n79_var_β
.Lx268_0:               .quad            .Lx268_0_s
.Lx268_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n81_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx270_0:               mov              r14d, dword ptr [rbp + -40]
                        lea              rax, [rip + .Lx270_13]               # match_beta_cont
                        mov              qword ptr [rbp + -48], rax;          jmp   n82_match_defer_α
n81_match_begin_β:
.Lx270_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx270_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx270_1
                                                                              jmp   .Lx270_0
.Lx270_1:
n81_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rdi, r13
                        mov              rsi, r15
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_match_ctx_restore@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   n80_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n82_match_defer_α:      lea              rdi, [rip + .S3]
                        xor              esi, esi
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx271_14
                        mov              rax, qword ptr [rdx + 0]
.Lx271_14:              test             rax, rax;                            jz    .Lx271_0
                        mov              r8d, 1
                        lea              r10, [rip + .Lx271_4]
                        lea              r11, [rip + .Lx271_5];               jmp   rax
.Lx271_4:                                                                     jmp   n83_match_end_α
.Lx271_5:                                                                     jmp   n81_match_begin_β
.Lx271_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n81_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx271_6]
                        push             rcx
                        push             rax;                                 jmp   n83_match_end_α
.Lx271_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n81_match_begin_β
n82_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx271_12
                                                                              jmp   qword ptr [rbp + -48]
.Lx271_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n83_match_end_α:        push             r14
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
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n84_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    add              rsp, 32;                             jmp   n85_statement_begin_α
#=======================================================================================================================
#         ZI = LT(ZI, ZKN) ZI + 1                         :S(ZBL)
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:                                                        jmp   n86_var_α
n85_statement_begin_β:                                                        jmp   n97_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZI
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # ZKN
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n88_coerce_numeric_α
n87_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n85_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx281_1
                        cmp              eax, 3;                              jne   .Lx281_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx281_0
.Lx281_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_coerce_numeric_α
.Lx281_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_coerce_numeric_α
n88_coerce_numeric_β:   add              rsp, 16;                             jmp   n87_var_β
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx283_1
                        cmp              eax, 3;                              jne   .Lx283_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx283_0
.Lx283_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_cmp_test_α
.Lx283_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_cmp_test_α
n89_coerce_numeric_β:   add              rsp, 16;                             jmp   n88_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n90_cmp_test_α:         sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx285_240
                        add              rsp, 16;                             jmp   n89_coerce_numeric_β
.Lx285_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n91_var_α
n90_cmp_test_β:         add              rsp, 16;                             jmp   n89_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # ZI
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n92_lit_integer_α
n91_var_β:              add              rsp, 16;                             jmp   n90_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_binop_α
n92_lit_integer_β:      add              rsp, 16;                             jmp   n91_var_β
.Lx287_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n93_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx288_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx288_7
.Lx288_2:               and              edx, 1;                              jz    .Lx288_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx288_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx288_4
.Lx288_3:               movq             xmm0, rsi
.Lx288_4:               cmp              ecx, 5;                              je    .Lx288_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx288_6
.Lx288_5:               movq             xmm1, rdi
.Lx288_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx288_7:                                                                     jmp   n94_binop_α
.Lx288_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx288_240
                        add              rsp, 16;                             jmp   n92_lit_integer_β
.Lx288_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_binop_α
n93_binop_β:            add              rsp, 16;                             jmp   n92_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n94_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # ZI
                        mov              qword ptr [r9 + 168], rdx;           jmp   n96_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_end_α:    add              rsp, 144;                            jmp   n77_statement_begin_α
#=======================================================================================================================
#         ZBODY = F3                                      :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_begin_α:                                                        jmp   n98_var_α
n97_statement_begin_β:                                                        jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # F3
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # ZBODY
                        mov              qword ptr [r9 + 8], rdx;             jmp   n100_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# ZBODY_END  <stmt 14, line 17: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α:                                                       jmp   n102_statement_end_α
n101_statement_begin_β:                                                       jmp   n103_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:                                                         jmp   n103_statement_begin_α
#=======================================================================================================================
#         <stmt 15, line 33: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α:                                                       jmp   n104_lit_string_α
n103_statement_begin_β:                                                       jmp   n110_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx305_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_var_α
.Lx305_0:               .quad            .Lx305_0_s
.Lx305_0_s:             .string          "check: "
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # ZCHK
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_call_α
n105_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n103_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig308z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig308z:              .quad            1
                        .quad            .Lx308_2
                        .quad            .Lx308_2
                        .quad            16
.Lx308_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx308_29
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
.Lx308_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx308_240
                        add              rsp, 16;                             jmp   n105_var_β
.Lx308_240:                                                                   jmp   n107_binop_α
n106_call_β:                                                                  jmp   n105_var_β
.Lx308_0:               .quad            .Lx308_0_s
.Lx308_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n108_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_statement_end_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   add              rsp, 64;                             jmp   n110_statement_begin_α
#=======================================================================================================================
#         <stmt 16, line 34: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α:                                                       jmp   n111_var_α
n110_statement_begin_β:                                                       jmp   n114_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_call_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd317:            .string          "DIFFER"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd317]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              eax, 104;                            jne   .Lx316_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Lx316_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n113_statement_end_α
n112_call_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   add              rsp, 32;                             jmp   n144_statement_begin_α
#=======================================================================================================================
#         <stmt 17, line 35: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α:                                                       jmp   n115_lit_integer_α
n114_statement_begin_β:                                                       jmp   n118_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx322_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_assign_α
.Lx322_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n117_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   add              rsp, 16;                             jmp   n118_statement_begin_α
#=======================================================================================================================
# ZCAL  <stmt 18, line 36: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α:                                                       jmp   n119_call_α
n118_statement_begin_β:                                                       jmp   n122_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd329:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd329]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx328_240
                        add              rsp, 16;                             jmp   n118_statement_begin_β
.Lx328_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_assign_α
n119_call_β:            add              rsp, 16;                             jmp   n118_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n121_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   add              rsp, 16;                             jmp   n122_statement_begin_α
#=======================================================================================================================
#         <stmt 19, line 37: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α:                                                       jmp   n123_var_α
n122_statement_begin_β:                                                       jmp   n126_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_call_α
#-----------------------------------------------------------------------------------------------------------------------
n124_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig337z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig337z:              .quad            1
                        .quad            .Lx337_2
                        .quad            .Lx337_2
                        .quad            16
.Lx337_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx337_29
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
.Lx337_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx337_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
.Lx337_240:                                                                   jmp   n125_statement_end_α
n124_call_β:                                                                  jmp   n122_statement_begin_β
.Lx337_0:               .quad            .Lx337_0_s
.Lx337_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   add              rsp, 32;                             jmp   n126_statement_begin_α
#=======================================================================================================================
#         <stmt 20, line 38: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α:                                                       jmp   n127_call_α
n126_statement_begin_β:                                                       jmp   n132_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd343:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd343]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx342_240
                        add              rsp, 16;                             jmp   n126_statement_begin_β
.Lx342_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n128_var_α
n127_call_β:            add              rsp, 16;                             jmp   n126_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n128_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n129_binop_α
n128_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n126_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n129_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx345_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx345_7
.Lx345_2:               and              edx, 1;                              jz    .Lx345_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx345_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx345_4
.Lx345_3:               movq             xmm0, rsi
.Lx345_4:               cmp              ecx, 5;                              je    .Lx345_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx345_6
.Lx345_5:               movq             xmm1, rdi
.Lx345_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx345_7:                                                                     jmp   n130_assign_α
.Lx345_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx345_240
                        add              rsp, 16;                             jmp   n128_var_β
.Lx345_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n130_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n130_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n131_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   add              rsp, 48;                             jmp   n132_statement_begin_α
#=======================================================================================================================
#         <stmt 21, line 39: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α:                                                       jmp   n133_var_α
n132_statement_begin_β:                                                       jmp   n144_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_var_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # ZFLR
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n135_coerce_numeric_α
n134_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n135_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx354_1
                        cmp              eax, 3;                              jne   .Lx354_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 3;                              jne   .Lx354_0
.Lx354_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_coerce_numeric_α
.Lx354_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n136_coerce_numeric_α
n135_coerce_numeric_β:  add              rsp, 16;                             jmp   n134_var_β
#-----------------------------------------------------------------------------------------------------------------------
n136_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx356_1
                        cmp              eax, 3;                              jne   .Lx356_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 3;                              jne   .Lx356_0
.Lx356_1:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_cmp_test_α
.Lx356_0:               lea              rdi, [rsp + 32]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n137_cmp_test_α
n136_coerce_numeric_β:  add              rsp, 16;                             jmp   n135_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n137_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx358_240
                        add              rsp, 16;                             jmp   n136_coerce_numeric_β
.Lx358_240:             mov              qword ptr [rsp + 0], 0               # result
                        mov              qword ptr [rsp + 8], 0;              jmp   n138_var_α
n137_cmp_test_β:        add              rsp, 16;                             jmp   n136_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_lit_integer_α
n138_var_β:             add              rsp, 16;                             jmp   n137_cmp_test_β
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_binop_α
n139_lit_integer_β:     add              rsp, 16;                             jmp   n138_var_β
.Lx360_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]            # lit_integer
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx361_2
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              rdx, qword ptr [rsp + 24]            # lit_integer
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx361_7
.Lx361_2:               and              edx, 1;                              jz    .Lx361_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]            # lit_integer
                        cmp              eax, 5;                              je    .Lx361_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx361_4
.Lx361_3:               movq             xmm0, rsi
.Lx361_4:               cmp              ecx, 5;                              je    .Lx361_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx361_6
.Lx361_5:               movq             xmm1, rdi
.Lx361_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx361_7:                                                                     jmp   n141_binop_α
.Lx361_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              eax, 104;                            jne   .Lx361_240
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lx361_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n141_binop_α
n140_binop_β:           add              rsp, 16;                             jmp   n139_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # cmp_test
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n142_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # ZK
                        mov              qword ptr [r9 + 184], rdx;           jmp   n143_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   add              rsp, 144;                            jmp   n118_statement_begin_α
#=======================================================================================================================
# ZMEAS  <stmt 22, line 40: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_begin_α:                                                       jmp   n145_call_α
n144_statement_begin_β:                                                       jmp   n148_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd369:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd369]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx368_240
                        add              rsp, 16;                             jmp   n144_statement_begin_β
.Lx368_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n146_assign_α
n145_call_β:            add              rsp, 16;                             jmp   n144_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # ZT
                        mov              qword ptr [r9 + 200], rdx;           jmp   n147_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   add              rsp, 16;                             jmp   n148_statement_begin_α
#=======================================================================================================================
#         <stmt 23, line 41: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α:                                                       jmp   n149_var_α
n148_statement_begin_β:                                                       jmp   n154_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_var_α
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ZBUD
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_binop_α
n150_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n148_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n151_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx377_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx377_7
.Lx377_2:               and              edx, 1;                              jz    .Lx377_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx377_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx377_4
.Lx377_3:               movq             xmm0, rsi
.Lx377_4:               cmp              ecx, 5;                              je    .Lx377_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx377_6
.Lx377_5:               movq             xmm1, rdi
.Lx377_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx377_7:                                                                     jmp   n152_assign_α
.Lx377_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx377_240
                        add              rsp, 16;                             jmp   n150_var_β
.Lx377_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n152_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n152_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 224], rax            # ZD
                        mov              qword ptr [r9 + 232], rdx;           jmp   n153_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   add              rsp, 48;                             jmp   n154_statement_begin_α
#=======================================================================================================================
#         <stmt 24, line 42: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α:                                                       jmp   n155_lit_integer_α
n154_statement_begin_β:                                                       jmp   n158_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_assign_α
.Lx383_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n156_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n157_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   add              rsp, 16;                             jmp   n158_statement_begin_α
#=======================================================================================================================
# ZB  <stmt 25, line 43: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α:                                                       jmp   n159_var_α
n158_statement_begin_β:                                                       jmp   n162_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_call_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            sub              rsp, 16
                        lea              rcx, [rip + .Lsig391z]
                        lea              rax, [rip + ZBODY_α];                jmp   rax
.Lsig391z:              .quad            1
                        .quad            .Lx391_2
                        .quad            .Lx391_2
                        .quad            16
.Lx391_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx391_29
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
.Lx391_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx391_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
.Lx391_240:                                                                   jmp   n161_statement_end_α
n160_call_β:                                                                  jmp   n158_statement_begin_β
.Lx391_0:               .quad            .Lx391_0_s
.Lx391_0_s:             .string          "ZBODY"
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   add              rsp, 32;                             jmp   n162_statement_begin_α
#=======================================================================================================================
#         <stmt 26, line 44: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α:                                                       jmp   n163_var_α
n162_statement_begin_β:                                                       jmp   n168_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_var_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # ZK
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_binop_α
n164_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n165_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx398_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx398_7
.Lx398_2:               and              edx, 1;                              jz    .Lx398_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              eax, 5;                              je    .Lx398_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx398_4
.Lx398_3:               movq             xmm0, rsi
.Lx398_4:               cmp              ecx, 5;                              je    .Lx398_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx398_6
.Lx398_5:               movq             xmm1, rdi
.Lx398_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx398_7:                                                                     jmp   n166_assign_α
.Lx398_0:               mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            jne   .Lx398_240
                        add              rsp, 16;                             jmp   n164_var_β
.Lx398_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n166_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 240], rax            # ZN
                        mov              qword ptr [r9 + 248], rdx;           jmp   n167_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   add              rsp, 48;                             jmp   n168_statement_begin_α
#=======================================================================================================================
#         <stmt 27, line 45: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α:                                                       jmp   n169_call_α
n168_statement_begin_β:                                                       jmp   n175_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n169_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd405:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd405]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx404_240
                        add              rsp, 16;                             jmp   n168_statement_begin_β
.Lx404_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_var_α
n169_call_β:            add              rsp, 16;                             jmp   n168_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 224]            # ZD
                        mov              rdx, qword ptr [r9 + 232]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_coerce_numeric_α
n170_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n168_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n171_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        cmp              eax, 5;                              je    .Lx408_1
                        cmp              eax, 3;                              jne   .Lx408_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              eax, 3;                              jne   .Lx408_0
.Lx408_1:               mov              rax, qword ptr [rsp + 32]            # call
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              qword ptr [rsp + 8], rax;            jmp   n172_coerce_numeric_α
.Lx408_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n172_coerce_numeric_α
n171_coerce_numeric_β:  add              rsp, 16;                             jmp   n170_var_β
#-----------------------------------------------------------------------------------------------------------------------
n172_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              eax, 5;                              je    .Lx410_1
                        cmp              eax, 3;                              jne   .Lx410_0
                        mov              eax, dword ptr [rsp + 48]            # call
                        cmp              eax, 3;                              jne   .Lx410_0
.Lx410_1:               mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_cmp_test_α
.Lx410_0:               lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # call
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n173_cmp_test_α
n172_coerce_numeric_β:  add              rsp, 16;                             jmp   n171_coerce_numeric_β
#-----------------------------------------------------------------------------------------------------------------------
n173_cmp_test_α:        sub              rsp, 16
                        lea              rdi, [rsp + 32]                      # coerce_numeric
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        call             rt_cmp_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        test             eax, eax;                            js    .Lx412_240
                        add              rsp, 16;                             jmp   n172_coerce_numeric_β
.Lx412_240:                                                                   jmp   n174_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   add              rsp, 80;                             jmp   n158_statement_begin_α
#=======================================================================================================================
#         <stmt 28, line 46: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α:                                                       jmp   n176_call_α
n175_statement_begin_β:                                                       jmp   n181_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_α:            sub              rsp, 16
                        .section         .rodata
.Lrkfnzd418:            .string          "TIME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd418]
                        xor              esi, esi
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx417_240
                        add              rsp, 16;                             jmp   n175_statement_begin_β
.Lx417_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n177_var_α
n176_call_β:            add              rsp, 16;                             jmp   n175_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n177_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # ZT
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n178_binop_α
n177_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n175_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n178_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # call
                        mov              ecx, dword ptr [rsp + 16]            # var
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx420_2
                        mov              rax, qword ptr [rsp + 40]            # call
                        mov              rdx, qword ptr [rsp + 24]            # var
                        sub              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx420_7
.Lx420_2:               and              edx, 1;                              jz    .Lx420_0
                        mov              rsi, qword ptr [rsp + 40]            # call
                        mov              rdi, qword ptr [rsp + 24]            # var
                        cmp              eax, 5;                              je    .Lx420_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx420_4
.Lx420_3:               movq             xmm0, rsi
.Lx420_4:               cmp              ecx, 5;                              je    .Lx420_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx420_6
.Lx420_5:               movq             xmm1, rdi
.Lx420_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx420_7:                                                                     jmp   n179_assign_α
.Lx420_0:               mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub@PLT
                        cmp              eax, 104;                            jne   .Lx420_240
                        add              rsp, 16;                             jmp   n177_var_β
.Lx420_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n179_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n179_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # ZE
                        mov              qword ptr [r9 + 216], rdx;           jmp   n180_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   add              rsp, 48;                             jmp   n181_statement_begin_α
#=======================================================================================================================
#         <stmt 29, line 47: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α:                                                       jmp   n182_lit_string_α
n181_statement_begin_β:                                                       jmp   n187_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n183_var_α
.Lx426_0:               .quad            .Lx426_0_s
.Lx426_0_s:             .string          "iters: "
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 240]            # ZN
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_binop_α
n183_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n181_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n184_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_statement_end_α
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   add              rsp, 48;                             jmp   n187_statement_begin_α
#=======================================================================================================================
#         <stmt 30, line 48: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α:                                                       jmp   n188_lit_string_α
n187_statement_begin_β:                                                       jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n189_var_α
.Lx434_0:               .quad            .Lx434_0_s
.Lx434_0_s:             .string          "ms: "
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # ZE
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_binop_α
n189_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n190_binop_α:           sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n191_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n192_statement_end_α
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   add              rsp, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 pop              rcx
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
