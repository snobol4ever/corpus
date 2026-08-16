                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
.Lgvan0:                .string          "src"
.Lgvan1:                .string          "claws"
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
#                 &TRIM          =  0
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n5_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
n1_lit_string_β:        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx50_0:                .quad            .Lx50_0_s
.Lx50_0_s:              .string          "TRIM"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
n2_lit_integer_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n0_statement_begin_β
.Lx51_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
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
.Lrkfnzd53:             .string          "SNO$KWSET"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd53]
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
                        cmp              eax, 104;                            jne   .Lx52_240
                        add              rsp, 16;                             jmp   n2_lit_integer_β
.Lx52_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_statement_end_α
n3_call_β:              add              rsp, 16;                             jmp   n2_lit_integer_β
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_end_α:     add              rsp, 48;                             jmp   n5_statement_begin_α
n4_statement_end_β:     add              rsp, 48;                             jmp   n5_statement_begin_α
#=======================================================================================================================
#                 INPUT(.INPUT, 9, '[-f0 -r1000000]')
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:                                                         jmp   n6_lit_string_α
n5_statement_begin_β:                                                         jmp   n12_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_call_α
n6_lit_string_β:        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:              sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd60:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd60]
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
                        cmp              eax, 104;                            jne   .Lx59_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
.Lx59_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n8_lit_integer_α
n7_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n5_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_lit_string_α
n8_lit_integer_β:       add              rsp, 16
                        add              rsp, 32;                             jmp   n5_statement_begin_β
.Lx61_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_call_α
n9_lit_string_β:        add              rsp, 16;                             jmp   n8_lit_integer_β
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "[-f0 -r1000000]"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_α:             sub              rsp, 16
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
.Lbynamefnzd11:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd11]
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
                        cmp              eax, 104;                            jne   .Lx63_240
                        add              rsp, 16;                             jmp   n9_lit_string_β
.Lx63_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_statement_end_α
n10_call_β:             add              rsp, 16;                             jmp   n9_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    add              rsp, 80;                             jmp   n12_statement_begin_α
n11_statement_end_β:    add              rsp, 80;                             jmp   n12_statement_begin_α
#=======================================================================================================================
#                 src             =   INPUT                       :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:                                                        jmp   n13_var_α
n12_statement_begin_β:                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            jne   .Lx68_240
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lx68_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n14_assign_α
n13_var_β:              add              rsp, 16;                             jmp   n12_statement_begin_β
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # src
                        mov              qword ptr [r9 + 8], rdx;             jmp   n15_statement_end_α
n14_assign_β:                                                                 jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    add              rsp, 16;                             jmp   n16_statement_begin_α
n15_statement_end_β:    add              rsp, 16;                             jmp   n44_statement_begin_α
#=======================================================================================================================
#                 claws           =
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:                                                        jmp   n17_statement_end_α
n16_statement_begin_β:                                                        jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:                                                          jmp   n18_statement_begin_α
n17_statement_end_β:                                                          jmp   n18_statement_begin_α
#=======================================================================================================================
#                 src             claws                           :F(fail)
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:                                                        jmp   n19_var_α
n18_statement_begin_β:                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # src
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n20_match_begin_α
n19_var_β:              add              rsp, 16;                             jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n20_match_begin_α:      mov              rdi, qword ptr [rsp + 0]             # var
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
.Lx80_0:                mov              r14d, dword ptr [rbp + -40];         jmp   n21_match_pos_α
n20_match_begin_β:      lea              rsp, [rbp + -72]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx80_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx80_1
                                                                              jmp   .Lx80_0
.Lx80_1:
n20_match_begin_af:     mov              r12, qword ptr [rbp + -8]            # cas_mark
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
                        add              rsp, 16;                             jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_match_pos_α:        mov              rax, 0
                        cmp              r14d, eax;                           jne   n20_match_begin_β
                                                                              jmp   n22_match_arbno_α
n21_match_pos_β:                                                              jmp   n20_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n22_match_arbno_α:      mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d;         jmp   n23_match_rpos_α
n22_match_arbno_β:                                                            jmp   n26_match_alternate_α
n22_match_arbno_as:     mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n26_match_alternate_β
                        mov              dword ptr [rbp + -60], r14d;         jmp   n23_match_rpos_α
n22_match_arbno_af:     mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jmp   n21_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n23_match_rpos_α:       mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n22_match_arbno_β
                                                                              jmp   n24_match_end_α
n23_match_rpos_β:                                                             jmp   n22_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n24_match_end_α:        push             r14
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
                        pop              rbp;                                 jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    add              rsp, 16;                             jmp   n37_statement_begin_α
n25_statement_end_β:    add              rsp, 32;                             jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_match_alternate_α:  sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx90_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n35_match_span_α
.Lx90_21:               lea              rax, [rip + .Lx90_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n29_match_notany_α
n26_match_alternate_s0: lea              rax, [rip + .Lx90_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
n26_match_alternate_s1: lea              rax, [rip + .Lx90_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_match_alternate_as
.Lx90_40:                                                                     jmp   n34_goto_β
.Lx90_41:                                                                     jmp   n28_goto_β
n26_match_alternate_as:                                                       jmp   n27_match_span_α
n26_match_alternate_β:  mov              rax, qword ptr [rsp + 8];            jmp   rax
n26_match_alternate_af: mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx90_19:               add              rsp, 32;                             jmp   n22_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_span_α:       sub              rsp, 16
                        movsxd           rcx, r14d
.Lx92_0:                cmp              ecx, r15d;                           jge   .Lx92_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx92_10
                        cmp              esi, 10;                             je    .Lx92_10
                                                                              jmp   .Lx92_1
.Lx92_10:               add              ecx, 1;                              jmp   .Lx92_0
.Lx92_1:                cmp              ecx, r14d;                           jg    .Lx92_240
                        add              rsp, 16;                             jmp   n26_match_alternate_β
.Lx92_240:              mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n22_match_arbno_as
n27_match_span_β:       mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n26_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:                                                                   jmp   n26_match_alternate_af
n28_goto_β:                                                                   jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n29_match_notany_α:     mov              eax, r14d
                        cmp              eax, r15d;                           jge   n26_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n26_match_alternate_af
                        add              r14d, 1;                             jmp   n30_match_break_α
n29_match_notany_β:     sub              r14d, 1;                             jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n30_match_break_α:      movsxd           rcx, r14d
.Lx96_0:                cmp              ecx, r15d;                           jge   n29_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx96_1
                        add              ecx, 1;                              jmp   .Lx96_0
.Lx96_1:                mov              dword ptr [rsp + 528], r14d
                        mov              r14d, ecx;                           jmp   n31_match_lit_α
n30_match_break_β:      mov              r14d, dword ptr [rsp + 528];         jmp   n29_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_lit_α:        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n30_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n30_match_break_β
                        add              r14d, 1;                             jmp   n32_match_any_α
n31_match_lit_β:        sub              r14d, 1;                             jmp   n30_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_any_α:        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n31_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n31_match_lit_β
                        add              r14d, 1;                             jmp   n33_match_span_α
n32_match_any_β:        sub              r14d, 1;                             jmp   n31_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n33_match_span_α:       lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx102_0:               cmp              ecx, r15d;                           jge   .Lx102_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx102_1
                        add              ecx, 1;                              jmp   .Lx102_0
.Lx102_1:               cmp              ecx, r14d;                           jle   n32_match_any_β
                        mov              dword ptr [rsp + 548], r14d
                        mov              r14d, ecx;                           jmp   n26_match_alternate_s1
n33_match_span_β:       mov              r14d, dword ptr [rsp + 548];         jmp   n32_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:                                                                   jmp   n26_match_alternate_af
n34_goto_β:                                                                   jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n35_match_span_α:       lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx105_0:               cmp              ecx, r15d;                           jge   .Lx105_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx105_1
                        add              ecx, 1;                              jmp   .Lx105_0
.Lx105_1:               cmp              ecx, r14d;                           jle   n26_match_alternate_af
                        mov              dword ptr [rsp + 516], r14d
                        mov              r14d, ecx;                           jmp   n36_match_lit_α
n35_match_span_β:       mov              r14d, dword ptr [rsp + 516];         jmp   n26_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n36_match_lit_α:        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n35_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n35_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n35_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n35_match_span_β
                        add              r14d, 10;                            jmp   n26_match_alternate_s0
n36_match_lit_β:        sub              r14d, 10;                            jmp   n35_match_span_β
#=======================================================================================================================
#                 OUTPUT          =  'matched bytes=' SIZE(src)   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:                                                        jmp   n38_lit_string_α
n37_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_var_α
n38_lit_string_β:       add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # src
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_call_α
n39_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             sub              rsp, 16
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd113:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd113]
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
                        cmp              eax, 104;                            jne   .Lx112_240
                        add              rsp, 16;                             jmp   n39_var_β
.Lx112_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_binop_α
n40_call_β:             add              rsp, 16;                             jmp   n39_var_β
#-----------------------------------------------------------------------------------------------------------------------
n41_binop_α:            sub              rsp, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n42_assign_α
n41_binop_β:            add              rsp, 32;                             jmp   n39_var_β
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_statement_end_α
n42_assign_β:                                                                 jmp   n37_statement_begin_β
.Lx115_0:               .quad            .Lx115_0_s
.Lx115_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    add              rsp, 64;                             jmp   main_γ
n43_statement_end_β:    add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# fail            OUTPUT          =  'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:                                                        jmp   n45_lit_string_α
n44_statement_begin_β:                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_assign_α
n45_lit_string_β:       add              rsp, 16;                             jmp   n44_statement_begin_β
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_statement_end_α
n46_assign_β:                                                                 jmp   n44_statement_begin_β
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    add              rsp, 16;                             jmp   main_γ
n47_statement_end_β:    add              rsp, 16;                             jmp   main_γ
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
