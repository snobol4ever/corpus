                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 184
                        mov              qword ptr [rbp + -8], r10
                        mov              qword ptr [rbp + -16], r11
                        mov              qword ptr [rbp + -24], rdx
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:                                                               jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              dword ptr [rbp + -32], r14d
                        mov              dword ptr [rbp + -28], r14d;         jmp   n2_match_rpos_α
n1_match_arbno_β:                                                             jmp   n3_match_fence1_α
n1_match_arbno_as:      mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        mov              dword ptr [rbp + -28], r14d;         jmp   n2_match_rpos_α
n1_match_arbno_af:      mov              eax, dword ptr [rbp + -32]
                        cmp              r14d, eax;                           jmp   n0_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:                                                              jmp   n1_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_fence1_α:      mov              qword ptr [rbp + -80], rsp;          jmp   n5_match_alternate_α
n3_match_fence1_as:     mov              rsp, qword ptr [rbp + -80];          jmp   n4_match_span_α
n3_match_fence1_af:
n3_match_fence1_β:      mov              rsp, qword ptr [rbp + -80];          jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx22_0:                cmp              ecx, r15d;                           jge   .Lx22_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx22_10
                        cmp              esi, 10;                             je    .Lx22_10
                                                                              jmp   .Lx22_1
.Lx22_10:               add              ecx, 1;                              jmp   .Lx22_0
.Lx22_1:                cmp              ecx, r14d;                           jg    .Lx22_240
                        add              rsp, 16;                             jmp   n1_match_arbno_af
.Lx22_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n1_match_arbno_as
n4_match_span_β:        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n5_match_alternate_α:   sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx24_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n13_match_span_α
.Lx24_21:               lea              rax, [rip + .Lx24_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n7_match_notany_α
n5_match_alternate_s0:  lea              rax, [rip + .Lx24_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
n5_match_alternate_s1:  lea              rax, [rip + .Lx24_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_match_alternate_as
.Lx24_40:                                                                     jmp   n12_goto_β
.Lx24_41:                                                                     jmp   n6_goto_β
n5_match_alternate_as:                                                        jmp   n3_match_fence1_as
n5_match_alternate_β:   mov              rax, qword ptr [rsp + 8];            jmp   rax
n5_match_alternate_af:  mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx24_19:               add              rsp, 32;                             jmp   n3_match_fence1_af
#-----------------------------------------------------------------------------------------------------------------------
n6_goto_α:                                                                    jmp   n5_match_alternate_af
n6_goto_β:                                                                    jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_notany_α:      mov              eax, r14d
                        cmp              eax, r15d;                           jge   n5_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n5_match_alternate_af
                        add              r14d, 1;                             jmp   n8_match_break_α
n7_match_notany_β:      sub              r14d, 1;                             jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_break_α:       movsxd           rcx, r14d
.Lx28_0:                cmp              ecx, r15d;                           jge   n7_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx28_1
                        add              ecx, 1;                              jmp   .Lx28_0
.Lx28_1:                mov              dword ptr [rbp + -144], r14d
                        mov              r14d, ecx;                           jmp   n9_match_lit_α
n8_match_break_β:       mov              r14d, dword ptr [rbp + -144];        jmp   n7_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n8_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n8_match_break_β
                        add              r14d, 1;                             jmp   n10_match_any_α
n9_match_lit_β:         sub              r14d, 1;                             jmp   n8_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n9_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n9_match_lit_β
                        add              r14d, 1;                             jmp   n11_match_span_α
n10_match_any_β:        sub              r14d, 1;                             jmp   n9_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n11_match_span_α:       lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx34_0:                cmp              ecx, r15d;                           jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx34_1
                        add              ecx, 1;                              jmp   .Lx34_0
.Lx34_1:                cmp              ecx, r14d;                           jle   n10_match_any_β
                        mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   n5_match_alternate_s1
n11_match_span_β:       mov              r14d, dword ptr [rbp + -172];        jmp   n10_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n12_goto_α:                                                                   jmp   n5_match_alternate_af
n12_goto_β:                                                                   jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_span_α:       lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx37_0:                cmp              ecx, r15d;                           jge   .Lx37_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx37_1
                        add              ecx, 1;                              jmp   .Lx37_0
.Lx37_1:                cmp              ecx, r14d;                           jle   n5_match_alternate_af
                        mov              dword ptr [rbp + -108], r14d
                        mov              r14d, ecx;                           jmp   n14_match_lit_α
n13_match_span_β:       mov              r14d, dword ptr [rbp + -108];        jmp   n5_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n14_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n13_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n13_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n13_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n13_match_span_β
                        add              r14d, 10;                            jmp   n5_match_alternate_s0
n14_match_lit_β:        sub              r14d, 10;                            jmp   n13_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_γ:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        push             rbp
                        push             r11
                        push             r10
                        lea              rax, [rip + PAT$0_res]
                        push             rax
                        mov              rbp, qword ptr [rbp + 0];            jmp   r10
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_ω:
                        mov              r10, qword ptr [rbp + -8]
                        mov              r11, qword ptr [rbp + -16]
                        mov              rsp, rbp
                        pop              rbp;                                 jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 2
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 2
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "claws"
.Lgvan1:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:                                                        jmp   n41_lit_integer_α
n40_statement_begin_β:                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_keyword_assign_snobol4_α
.Lx81_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n42_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx82_0]
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
                        cmp              eax, 104;                            jne   .Lx82_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
.Lx82_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_statement_end_α
.Lx82_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    add              rsp, 32;                             jmp   n44_statement_begin_α
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:                                                        jmp   n45_lit_string_α
n44_statement_begin_β:                                                        jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_call_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd89:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd89]
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
                        cmp              eax, 104;                            jne   .Lx88_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
.Lx88_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_assign_α
n46_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n44_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
                        mov              qword ptr [r9 + 8], rdx;             jmp   n48_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    add              rsp, 32;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:                                                        jmp   n50_lit_string_α
n49_statement_begin_β:                                                        jmp   n56_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_call_α
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd97:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd97]
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
                        cmp              eax, 104;                            jne   .Lx96_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Lx96_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_lit_integer_α
n51_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_lit_string_α
n52_lit_integer_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n49_statement_begin_β
.Lx98_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_call_α
n53_lit_string_β:       add              rsp, 16;                             jmp   n52_lit_integer_β
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             sub              rsp, 16
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
.Lbynamefnzd30:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd30]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              eax, 104;                            jne   .Lx100_240
                        add              rsp, 16;                             jmp   n53_lit_string_β
.Lx100_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_statement_end_α
n54_call_β:             add              rsp, 16;                             jmp   n53_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    add              rsp, 80;                             jmp   n56_statement_begin_α
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:                                                        jmp   n57_var_α
n56_statement_begin_β:                                                        jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx105_240
                        add              rsp, 16;                             jmp   n56_statement_begin_β
.Lx105_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_assign_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx;            jmp   n59_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    add              rsp, 16;                             jmp   n60_statement_begin_α
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_begin_α:                                                        jmp   n61_var_α
n60_statement_begin_β:                                                        jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # claws
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_assign_α
n62_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_match_begin_α
n63_assign_β:                                                                 jmp   n62_var_β
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n64_match_begin_α:      mov              rdi, qword ptr [rsp + 16]            # var
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
.Lx115_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx115_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n65_match_defer_α
n64_match_begin_β:
.Lx115_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx115_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx115_1
                                                                              jmp   .Lx115_0
.Lx115_1:
n64_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n63_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_defer_α:      lea              rdi, [rip + .S0]
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
                        test             rax, rax;                            je    .Lx116_14
                        mov              rax, qword ptr [rdx + 0]
.Lx116_14:              test             rax, rax;                            jz    .Lx116_0
                        mov              r8d, 1
                        lea              r10, [rip + .Lx116_4]
                        lea              r11, [rip + .Lx116_5];               jmp   rax
.Lx116_4:                                                                     jmp   n66_match_end_α
.Lx116_5:                                                                     jmp   n64_match_begin_β
.Lx116_0:               push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S0]
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
                        test             eax, eax;                            js    n64_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx116_6]
                        push             rcx
                        push             rax;                                 jmp   n66_match_end_α
.Lx116_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n64_match_begin_β
n65_match_defer_β:      cmp              qword ptr [rsp + 0], 0;              jne   .Lx116_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx116_12
                                                                              jmp   rax
.Lx116_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n66_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n67_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    add              rsp, 32;                             jmp   n68_statement_begin_α
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:                                                        jmp   n69_lit_string_α
n68_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_var_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_call_α
n70_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n68_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n71_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd126:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd126]
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
                        cmp              eax, 104;                            jne   .Lx125_240
                        add              rsp, 16;                             jmp   n70_var_β
.Lx125_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_binop_α
n71_call_β:             add              rsp, 16;                             jmp   n70_var_β
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n74_statement_end_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:                                                        jmp   n76_lit_string_α
n75_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_assign_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n77_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_statement_end_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
                        .long            256
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
.S0:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C1:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                        .byte            1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.C2:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
                        .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
