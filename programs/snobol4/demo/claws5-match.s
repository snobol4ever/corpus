                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 200
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
n1_match_arbno_β:                                                             jmp   n3_match_alternate_α
n1_match_arbno_as:      mov              eax, dword ptr [rbp + -28]
                        cmp              r14d, eax;                           je    n3_match_alternate_β
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
n3_match_alternate_α:   mov              dword ptr [rbp + -200], r14d
                        lea              rax, [rip + .Lx19_21]
                        mov              qword ptr [rbp + -184], rax;         jmp   n12_match_span_α
.Lx19_21:               lea              rax, [rip + .Lx19_19]
                        mov              qword ptr [rbp + -184], rax;         jmp   n6_match_notany_α
n3_match_alternate_s0:  lea              rax, [rip + .Lx19_40]
                        mov              qword ptr [rbp + -192], rax;         jmp   n3_match_alternate_as
n3_match_alternate_s1:  lea              rax, [rip + .Lx19_41]
                        mov              qword ptr [rbp + -192], rax;         jmp   n3_match_alternate_as
.Lx19_40:                                                                     jmp   n11_goto_β
.Lx19_41:                                                                     jmp   n5_goto_β
n3_match_alternate_as:                                                        jmp   n4_match_span_α
n3_match_alternate_β:   mov              rax, qword ptr [rbp + -192];         jmp   rax
n3_match_alternate_af:  mov              r14d, dword ptr [rbp + -200]
                        mov              rax, qword ptr [rbp + -184];         jmp   rax
.Lx19_19:                                                                     jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        movsxd           rcx, r14d
.Lx21_0:                cmp              ecx, r15d;                           jge   .Lx21_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx21_10
                        cmp              esi, 10;                             je    .Lx21_10
                                                                              jmp   .Lx21_1
.Lx21_10:               add              ecx, 1;                              jmp   .Lx21_0
.Lx21_1:                cmp              ecx, r14d;                           jg    .Lx21_240
                        add              rsp, 16;                             jmp   n3_match_alternate_β
.Lx21_240:              mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   n1_match_arbno_as
n4_match_span_β:        mov              r14d, dword ptr [rbp + -156]
                        add              rsp, 16;                             jmp   n3_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n5_goto_α:                                                                    jmp   n3_match_alternate_af
n5_goto_β:                                                                    jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_notany_α:      mov              eax, r14d
                        cmp              eax, r15d;                           jge   n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n3_match_alternate_af
                        add              r14d, 1;                             jmp   n7_match_break_α
n6_match_notany_β:      sub              r14d, 1;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n7_match_break_α:       movsxd           rcx, r14d
.Lx25_0:                cmp              ecx, r15d;                           jge   n6_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx25_1
                        add              ecx, 1;                              jmp   .Lx25_0
.Lx25_1:                mov              dword ptr [rbp + -96], r14d
                        mov              r14d, ecx;                           jmp   n8_match_lit_α
n7_match_break_β:       mov              r14d, dword ptr [rbp + -96];         jmp   n6_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n7_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n7_match_break_β
                        add              r14d, 1;                             jmp   n9_match_any_α
n8_match_lit_β:         sub              r14d, 1;                             jmp   n7_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_any_α:         mov              eax, r14d
                        cmp              eax, r15d;                           jge   n8_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n8_match_lit_β
                        add              r14d, 1;                             jmp   n10_match_span_α
n9_match_any_β:         sub              r14d, 1;                             jmp   n8_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx31_0:                cmp              ecx, r15d;                           jge   .Lx31_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx31_1
                        add              ecx, 1;                              jmp   .Lx31_0
.Lx31_1:                cmp              ecx, r14d;                           jle   n9_match_any_β
                        mov              dword ptr [rbp + -124], r14d
                        mov              r14d, ecx;                           jmp   n3_match_alternate_s1
n10_match_span_β:       mov              r14d, dword ptr [rbp + -124];        jmp   n9_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n11_goto_α:                                                                   jmp   n3_match_alternate_af
n11_goto_β:                                                                   jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n12_match_span_α:       lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx34_0:                cmp              ecx, r15d;                           jge   .Lx34_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx34_1
                        add              ecx, 1;                              jmp   .Lx34_0
.Lx34_1:                cmp              ecx, r14d;                           jle   n3_match_alternate_af
                        mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n13_match_lit_α
n12_match_span_β:       mov              r14d, dword ptr [rbp + -60];         jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n13_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n12_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n12_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n12_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n12_match_span_β
                        add              r14d, 10;                            jmp   n3_match_alternate_s0
n13_match_lit_β:        sub              r14d, 10;                            jmp   n12_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              r10, qword ptr [rsp + 8]
                        mov              r11, qword ptr [rsp + 16]
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_rpos_β
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
n37_statement_begin_α:                                                        jmp   n38_lit_integer_α
n37_statement_begin_β:                                                        jmp   n41_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_keyword_assign_snobol4_α
n38_lit_integer_β:      add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx89_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n39_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx90_0]
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
                        cmp              eax, 104;                            jne   .Lx90_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx90_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_statement_end_α
n39_keyword_assign_snobol4_β:
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx90_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    add              rsp, 32;                             jmp   n41_statement_begin_α
n40_statement_end_β:    add              rsp, 32;                             jmp   n41_statement_begin_α
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:                                                        jmp   n42_lit_string_α
n41_statement_begin_β:                                                        jmp   n46_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx95_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_call_α
n42_lit_string_β:       add              rsp, 16;                             jmp   n41_statement_begin_β
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd97:             .string          "SNO$MKPAT"
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
                        add              rsp, 16;                             jmp   n41_statement_begin_β
.Lx96_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_assign_α
n43_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
                        mov              qword ptr [r9 + 8], rdx;             jmp   n45_statement_end_α
n44_assign_β:                                                                 jmp   n41_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_statement_end_α:    add              rsp, 32;                             jmp   n46_statement_begin_α
n45_statement_end_β:    add              rsp, 32;                             jmp   n46_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_begin_α:                                                        jmp   n47_lit_string_α
n46_statement_begin_β:                                                        jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_call_α
n47_lit_string_β:       add              rsp, 16;                             jmp   n46_statement_begin_β
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd105:            .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd105]
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
                        cmp              eax, 104;                            jne   .Lx104_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
.Lx104_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_lit_integer_α
n48_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n46_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_lit_string_α
n49_lit_integer_β:      add              rsp, 16
                        add              rsp, 32;                             jmp   n46_statement_begin_β
.Lx106_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_call_α
n50_lit_string_β:       add              rsp, 16;                             jmp   n49_lit_integer_β
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             sub              rsp, 16
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
.Lbynamefnzd29:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd29]
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
                        cmp              eax, 104;                            jne   .Lx108_240
                        add              rsp, 16;                             jmp   n50_lit_string_β
.Lx108_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_statement_end_α
n51_call_β:             add              rsp, 16;                             jmp   n50_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    add              rsp, 80;                             jmp   n53_statement_begin_α
n52_statement_end_β:    add              rsp, 80;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:                                                        jmp   n54_var_α
n53_statement_begin_β:                                                        jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx113_240
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Lx113_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_assign_α
n54_var_β:              add              rsp, 16;                             jmp   n53_statement_begin_β
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx;            jmp   n56_statement_end_α
n55_assign_β:                                                                 jmp   n53_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 16;                             jmp   n57_statement_begin_α
n56_statement_end_β:    add              rsp, 16;                             jmp   n83_statement_begin_α
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:                                                        jmp   n58_var_α
n57_statement_begin_β:                                                        jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_match_begin_α
n58_var_β:              add              rsp, 16;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n59_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 40
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
.Lx121_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx121_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n60_match_pos_α
n59_match_begin_β:
.Lx121_13:              lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx121_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx121_1
                                                                              jmp   .Lx121_0
.Lx121_1:
n59_match_begin_af:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        add              rsp, 16;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n60_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   n59_match_begin_β
                                                                              jmp   n61_match_arbno_α
n60_match_pos_β:                                                              jmp   n59_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n61_match_arbno_α:      mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n62_match_rpos_α
n61_match_arbno_β:                                                            jmp   n65_match_alternate_α
n61_match_arbno_as:     mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n65_match_alternate_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n62_match_rpos_α
n61_match_arbno_af:     mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n60_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n62_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n61_match_arbno_β
                                                                              jmp   n63_match_end_α
n62_match_rpos_β:                                                             jmp   n61_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_end_α:        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        pop              rbp;                                 jmp   n64_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 16;                             jmp   n76_statement_begin_α
n64_statement_end_β:    add              rsp, 32;                             jmp   n83_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n65_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx131_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n74_match_span_α
.Lx131_21:              lea              rax, [rip + .Lx131_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n68_match_notany_α
n65_match_alternate_s0: lea              rax, [rip + .Lx131_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_match_alternate_as
n65_match_alternate_s1: lea              rax, [rip + .Lx131_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n65_match_alternate_as
.Lx131_40:                                                                    jmp   n73_goto_β
.Lx131_41:                                                                    jmp   n67_goto_β
n65_match_alternate_as:                                                       jmp   n66_match_span_α
n65_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n65_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx131_19:              add              rsp, 32;                             jmp   n61_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n66_match_span_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx133_0:               cmp              ecx, r15d;                           jge   .Lx133_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx133_10
                        cmp              esi, 10;                             je    .Lx133_10
                                                                              jmp   .Lx133_1
.Lx133_10:              add              ecx, 1;                              jmp   .Lx133_0
.Lx133_1:               cmp              ecx, r14d;                           jg    .Lx133_240
                        add              rsp, 16;                             jmp   n65_match_alternate_β
.Lx133_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n61_match_arbno_as
n66_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n65_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n67_goto_α:                                                                   jmp   n65_match_alternate_af
n67_goto_β:                                                                   jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n68_match_notany_α:     mov              eax, r14d
                        cmp              eax, r15d;                           jge   n65_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n65_match_alternate_af
                        add              r14d, 1;                             jmp   n69_match_break_α
n68_match_notany_β:     sub              r14d, 1;                             jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_break_α:      movsxd           rcx, r14d
.Lx137_0:               cmp              ecx, r15d;                           jge   n68_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx137_1
                        add              ecx, 1;                              jmp   .Lx137_0
.Lx137_1:               mov              dword ptr [rsp + 528], r14d
                        mov              r14d, ecx;                           jmp   n70_match_lit_α
n69_match_break_β:      mov              r14d, dword ptr [rsp + 528];         jmp   n68_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n70_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n69_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n69_match_break_β
                        add              r14d, 1;                             jmp   n71_match_any_α
n70_match_lit_β:        sub              r14d, 1;                             jmp   n69_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n71_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n70_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n70_match_lit_β
                        add              r14d, 1;                             jmp   n72_match_span_α
n71_match_any_β:        sub              r14d, 1;                             jmp   n70_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n72_match_span_α:       lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx143_0:               cmp              ecx, r15d;                           jge   .Lx143_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx143_1
                        add              ecx, 1;                              jmp   .Lx143_0
.Lx143_1:               cmp              ecx, r14d;                           jle   n71_match_any_β
                        mov              dword ptr [rsp + 548], r14d
                        mov              r14d, ecx;                           jmp   n65_match_alternate_s1
n72_match_span_β:       mov              r14d, dword ptr [rsp + 548];         jmp   n71_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n73_goto_α:                                                                   jmp   n65_match_alternate_af
n73_goto_β:                                                                   jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n74_match_span_α:       lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx146_0:               cmp              ecx, r15d;                           jge   .Lx146_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx146_1
                        add              ecx, 1;                              jmp   .Lx146_0
.Lx146_1:               cmp              ecx, r14d;                           jle   n65_match_alternate_af
                        mov              dword ptr [rsp + 516], r14d
                        mov              r14d, ecx;                           jmp   n75_match_lit_α
n74_match_span_β:       mov              r14d, dword ptr [rsp + 516];         jmp   n65_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n75_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n74_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n74_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n74_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n74_match_span_β
                        add              r14d, 10;                            jmp   n65_match_alternate_s0
n75_match_lit_β:        sub              r14d, 10;                            jmp   n74_match_span_β
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:                                                        jmp   n77_lit_string_α
n76_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_α
n77_lit_string_β:       add              rsp, 16;                             jmp   n76_statement_begin_β
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_call_α
n78_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n76_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n79_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd154:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd154]
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
                        cmp              eax, 104;                            jne   .Lx153_240
                        add              rsp, 16;                             jmp   n78_var_β
.Lx153_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n80_binop_α
n79_call_β:             add              rsp, 16;                             jmp   n78_var_β
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n81_assign_α
n80_binop_β:            add              rsp, 32;                             jmp   n78_var_β
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n82_statement_end_α
n81_assign_β:                                                                 jmp   n76_statement_begin_β
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    add              rsp, 64;                             jmp   main_γ
n82_statement_end_β:    add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:                                                        jmp   n84_lit_string_α
n83_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_assign_α
n84_lit_string_β:       add              rsp, 16;                             jmp   n83_statement_begin_β
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_statement_end_α
n85_assign_β:                                                                 jmp   n83_statement_begin_β
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n86_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
                        .long            224
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
