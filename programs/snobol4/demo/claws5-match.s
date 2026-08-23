                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 216
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              r11, 1
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:         mov              r11, 1;                              jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              r11, 2
                        mov              dword ptr [rbp + -48], r14d
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              r11, 2
                        mov              r12, qword ptr [rbp + -40];          jmp   n3_match_alternate_α
n1_match_arbno_as:      mov              r11, 2
                        mov              eax, dword ptr [rbp + -44]
                        cmp              r14d, eax;                           je    n3_match_alternate_β
                        mov              dword ptr [rbp + -44], r14d
                        mov              qword ptr [rbp + -40], r12;          jmp   n2_match_rpos_α
n1_match_arbno_af:      mov              r11, 2
                        mov              eax, dword ptr [rbp + -48]
                        cmp              r14d, eax;                           jne   n4_match_span_β
                                                                              jmp   n0_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              r11, 3
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:        mov              r11, 3;                              jmp   n1_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   mov              r11, 4
                        mov              dword ptr [rbp + -216], r14d
                        lea              rax, [rip + .Lx17_21]
                        mov              qword ptr [rbp + -200], rax;         jmp   n10_match_span_α
.Lx17_21:               lea              rax, [rip + .Lx17_19]
                        mov              qword ptr [rbp + -200], rax;         jmp   n5_match_notany_α
n3_match_alternate_s0:  mov              r11, 4
                        lea              rax, [rip + .Lx17_40]
                        mov              qword ptr [rbp + -208], rax;         jmp   n3_match_alternate_as
n3_match_alternate_s1:  mov              r11, 4
                        lea              rax, [rip + .Lx17_41]
                        mov              qword ptr [rbp + -208], rax;         jmp   n3_match_alternate_as
.Lx17_40:                                                                     jmp   n11_match_lit_β
.Lx17_41:                                                                     jmp   n9_match_span_β
n3_match_alternate_as:  mov              r11, 4;                              jmp   n4_match_span_α
n3_match_alternate_β:   mov              r11, 4
                        mov              rax, qword ptr [rbp + -208];         jmp   rax
n3_match_alternate_af:  mov              r11, 4
                        mov              r14d, dword ptr [rbp + -216]
                        mov              rax, qword ptr [rbp + -200];         jmp   rax
.Lx17_19:                                                                     jmp   n1_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lx19_0:                cmp              ecx, r15d;                           jge   .Lx19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx19_10
                        cmp              esi, 10;                             je    .Lx19_10
                                                                              jmp   .Lx19_1
.Lx19_10:               add              ecx, 1;                              jmp   .Lx19_0
.Lx19_1:                cmp              ecx, r14d;                           jg    .Lx19_240
                        add              rsp, 16;                             jmp   n3_match_alternate_β
.Lx19_240:              mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   n1_match_arbno_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -172]
                        add              rsp, 16;                             jmp   n3_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_notany_α:      mov              r11, 6
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n3_match_alternate_af
                        add              r14d, 1;                             jmp   n6_match_break_α
n5_match_notany_β:      mov              r11, 6
                        sub              r14d, 1;                             jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n6_match_break_α:       mov              r11, 7
                        movsxd           rcx, r14d
.Lx22_0:                cmp              ecx, r15d;                           jge   n5_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx22_1
                        add              ecx, 1;                              jmp   .Lx22_0
.Lx22_1:                mov              dword ptr [rbp + -112], r14d
                        mov              r14d, ecx;                           jmp   n7_match_lit_α
n6_match_break_β:       mov              r11, 7
                        mov              r14d, dword ptr [rbp + -112];        jmp   n5_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n6_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n6_match_break_β
                        add              r14d, 1;                             jmp   n8_match_any_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 1;                             jmp   n6_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_any_α:         mov              r11, 9
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n7_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n7_match_lit_β
                        add              r14d, 1;                             jmp   n9_match_span_α
n8_match_any_β:         mov              r11, 9
                        sub              r14d, 1;                             jmp   n7_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_span_α:        mov              r11, 10
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx28_0:                cmp              ecx, r15d;                           jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx28_1
                        add              ecx, 1;                              jmp   .Lx28_0
.Lx28_1:                cmp              ecx, r14d;                           jle   n8_match_any_β
                        mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   n3_match_alternate_s1
n9_match_span_β:        mov              r11, 10
                        mov              r14d, dword ptr [rbp + -140];        jmp   n8_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       mov              r11, 11
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx30_0:                cmp              ecx, r15d;                           jge   .Lx30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx30_1
                        add              ecx, 1;                              jmp   .Lx30_0
.Lx30_1:                cmp              ecx, r14d;                           jle   n3_match_alternate_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n11_match_lit_α
n10_match_span_β:       mov              r11, 11
                        mov              r14d, dword ptr [rbp + -76];         jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n11_match_lit_α:        mov              r11, 12
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n10_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n10_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n10_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n10_match_span_β
                        add              r14d, 10;                            jmp   n3_match_alternate_s0
n11_match_lit_β:        mov              r11, 12
                        sub              r14d, 10;                            jmp   n10_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n2_match_rpos_β
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
n33_statement_begin_α:  mov              r11, 13
                        mov              r10, 1;                              jmp   n34_lit_integer_α
n33_statement_begin_β:  mov              r11, 13;                             jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_keyword_assign_snobol4_α
n34_lit_integer_β:      mov              r11, 14
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lx83_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n35_keyword_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 15
                        mov              rdi, qword ptr [rip + .Lx84_0]
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
                        cmp              al, 104;                             jne   .Lx84_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lx84_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_statement_end_α
n35_keyword_assign_snobol4_β:
                        mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n33_statement_begin_β
.Lx84_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 16
                        mov              r10, 1
                        add              rsp, 32;                             jmp   n37_statement_begin_α
n36_statement_end_β:    mov              r11, 16
                        add              rsp, 32;                             jmp   n37_statement_begin_α
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 17
                        mov              r10, 2;                              jmp   n38_lit_string_α
n37_statement_begin_β:  mov              r11, 17;                             jmp   n42_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_call_α
n38_lit_string_β:       mov              r11, 18
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:             sub              rsp, 16
                        mov              r11, 19
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd91:             .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd91]
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
                        cmp              al, 104;                             jne   .Lx90_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx90_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_assign_α
n39_call_β:             mov              r11, 19
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
                        mov              qword ptr [r9 + 8], rdx;             jmp   n41_statement_end_α
n40_assign_β:           mov              r11, 20;                             jmp   n37_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 21
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n42_statement_begin_α
n41_statement_end_β:    mov              r11, 21
                        add              rsp, 32;                             jmp   n42_statement_begin_α
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 22
                        mov              r10, 3;                              jmp   n43_lit_string_α
n42_statement_begin_β:  mov              r11, 22;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_call_α
n43_lit_string_β:       mov              r11, 23
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_α:             sub              rsp, 16
                        mov              r11, 24
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd99:             .string          "SNO$NAME"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd99]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 524341
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx98_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
.Lx98_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_lit_integer_α
n44_call_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_lit_string_α
n45_lit_integer_β:      mov              r11, 25
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n42_statement_begin_β
.Lx100_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_call_α
n46_lit_string_β:       mov              r11, 26
                        add              rsp, 16;                             jmp   n45_lit_integer_β
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "[-f0 -r4194304]"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             sub              rsp, 16
                        mov              r11, 27
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
.Lbynamefnzd27:         .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefnzd27]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 327680
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lx102_240
                        add              rsp, 16;                             jmp   n46_lit_string_β
.Lx102_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_statement_end_α
n47_call_β:             mov              r11, 27
                        add              rsp, 16;                             jmp   n46_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 28
                        mov              r10, 3
                        add              rsp, 80;                             jmp   n49_statement_begin_α
n48_statement_end_β:    mov              r11, 28
                        add              rsp, 80;                             jmp   n49_statement_begin_α
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 29
                        mov              r10, 4;                              jmp   n50_var_α
n49_statement_begin_β:  mov              r11, 29;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rdi, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lx107_240
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Lx107_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
n50_var_β:              mov              r11, 30
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "INPUT"
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx;            jmp   n52_statement_end_α
n51_assign_β:           mov              r11, 31;                             jmp   n49_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 32
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n53_statement_begin_α
n52_statement_end_β:    mov              r11, 32
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 33
                        mov              r10, 5;                              jmp   n54_var_α
n53_statement_begin_β:  mov              r11, 33;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 34
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_match_begin_α
n54_var_β:              mov              r11, 34
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n55_match_begin_α:      mov              r11, 35
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
                        push             rbp
                        mov              rbp, rsp
                        push             r12                                  # cas_mark
                        push             r13                                  # outer_Σ
                        push             r14                                  # outer_δ
                        push             r15                                  # outer_Δ
                        sub              rsp, 88
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
                        mov              qword ptr [rcx + 248], rax;          jmp   n56_match_pos_α
n55_match_begin_β:      mov              r11, 35
.Lx115_13:              lea              rsp, [rbp + -120]                    # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx115_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx115_1
                                                                              jmp   .Lx115_0
.Lx115_1:
n55_match_begin_af:     mov              r11, 35
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
                        add              rsp, 16;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n56_match_pos_α:        mov              r11, 36
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n55_match_begin_β
                                                                              jmp   n57_match_arbno_α
n56_match_pos_β:        mov              r11, 36;                             jmp   n55_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n57_match_arbno_α:      mov              r11, 37
                        mov              dword ptr [rbp + -64], r14d
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n58_match_rpos_α
n57_match_arbno_β:      mov              r11, 37
                        mov              r12, qword ptr [rbp + -56];          jmp   n61_match_alternate_α
n57_match_arbno_as:     mov              r11, 37
                        mov              eax, dword ptr [rbp + -60]
                        cmp              r14d, eax;                           je    n61_match_alternate_β
                        mov              dword ptr [rbp + -60], r14d
                        mov              qword ptr [rbp + -56], r12;          jmp   n58_match_rpos_α
n57_match_arbno_af:     mov              r11, 37
                        mov              eax, dword ptr [rbp + -64]
                        cmp              r14d, eax;                           jne   n62_match_span_β
                                                                              jmp   n56_match_pos_β
#-----------------------------------------------------------------------------------------------------------------------
n58_match_rpos_α:       mov              r11, 38
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n57_match_arbno_β
                                                                              jmp   n59_match_end_α
n58_match_rpos_β:       mov              r11, 38;                             jmp   n57_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n59_match_end_α:        mov              r11, 39
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
                        test             rax, rax;                            je    .Lx121_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n55_match_begin_af
.Lx121_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n60_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 40
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n70_statement_begin_α
n60_statement_end_β:    mov              r11, 40
                        add              rsp, 32;                             jmp   n77_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n61_match_alternate_α:  mov              r11, 41
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lx125_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n68_match_span_α
.Lx125_21:              lea              rax, [rip + .Lx125_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n63_match_notany_α
n61_match_alternate_s0: mov              r11, 41
                        lea              rax, [rip + .Lx125_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_match_alternate_as
n61_match_alternate_s1: mov              r11, 41
                        lea              rax, [rip + .Lx125_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_match_alternate_as
.Lx125_40:                                                                    jmp   n69_match_lit_β
.Lx125_41:                                                                    jmp   n67_match_span_β
n61_match_alternate_as: mov              r11, 41;                             jmp   n62_match_span_α
n61_match_alternate_β:  mov              r11, 41
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
n61_match_alternate_af: mov              r11, 41
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lx125_19:              add              rsp, 32;                             jmp   n57_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n62_match_span_α:       sub              rsp, 16
                        mov              r11, 42
                        movsxd           rcx, r14d
.Lx127_0:               cmp              ecx, r15d;                           jge   .Lx127_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lx127_10
                        cmp              esi, 10;                             je    .Lx127_10
                                                                              jmp   .Lx127_1
.Lx127_10:              add              ecx, 1;                              jmp   .Lx127_0
.Lx127_1:               cmp              ecx, r14d;                           jg    .Lx127_240
                        add              rsp, 16;                             jmp   n61_match_alternate_β
.Lx127_240:             mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   n57_match_arbno_as
n62_match_span_β:       mov              r11, 42
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n61_match_alternate_β
#-----------------------------------------------------------------------------------------------------------------------
n63_match_notany_α:     mov              r11, 43
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n61_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    n61_match_alternate_af
                        add              r14d, 1;                             jmp   n64_match_break_α
n63_match_notany_β:     mov              r11, 43
                        sub              r14d, 1;                             jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n64_match_break_α:      mov              r11, 44
                        movsxd           rcx, r14d
.Lx130_0:               cmp              ecx, r15d;                           jge   n63_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lx130_1
                        add              ecx, 1;                              jmp   .Lx130_0
.Lx130_1:               mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n65_match_lit_α
n64_match_break_β:      mov              r11, 44
                        mov              r14d, dword ptr [rbp + -128];        jmp   n63_match_notany_β
#-----------------------------------------------------------------------------------------------------------------------
n65_match_lit_α:        mov              r11, 45
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n64_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n64_match_break_β
                        add              r14d, 1;                             jmp   n66_match_any_α
n65_match_lit_β:        mov              r11, 45
                        sub              r14d, 1;                             jmp   n64_match_break_β
#-----------------------------------------------------------------------------------------------------------------------
n66_match_any_α:        mov              r11, 46
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n65_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n65_match_lit_β
                        add              r14d, 1;                             jmp   n67_match_span_α
n66_match_any_β:        mov              r11, 46
                        sub              r14d, 1;                             jmp   n65_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n67_match_span_α:       mov              r11, 47
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lx136_0:               cmp              ecx, r15d;                           jge   .Lx136_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx136_1
                        add              ecx, 1;                              jmp   .Lx136_0
.Lx136_1:               cmp              ecx, r14d;                           jle   n66_match_any_β
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   n61_match_alternate_s1
n67_match_span_β:       mov              r11, 47
                        mov              r14d, dword ptr [rbp + -156];        jmp   n66_match_any_β
#-----------------------------------------------------------------------------------------------------------------------
n68_match_span_α:       mov              r11, 48
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lx138_0:               cmp              ecx, r15d;                           jge   .Lx138_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx138_1
                        add              ecx, 1;                              jmp   .Lx138_0
.Lx138_1:               cmp              ecx, r14d;                           jle   n61_match_alternate_af
                        mov              dword ptr [rbp + -92], r14d
                        mov              r14d, ecx;                           jmp   n69_match_lit_α
n68_match_span_β:       mov              r11, 48
                        mov              r14d, dword ptr [rbp + -92];         jmp   n61_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n69_match_lit_α:        mov              r11, 49
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n68_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n68_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n68_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n68_match_span_β
                        add              r14d, 10;                            jmp   n61_match_alternate_s0
n69_match_lit_β:        mov              r11, 49
                        sub              r14d, 10;                            jmp   n68_match_span_β
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 50
                        mov              r10, 6;                              jmp   n71_lit_string_α
n70_statement_begin_β:  mov              r11, 50;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       sub              rsp, 16
                        mov              r11, 51
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_var_α
n71_lit_string_β:       mov              r11, 51
                        add              rsp, 16;                             jmp   n70_statement_begin_β
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "matched bytes="
#-----------------------------------------------------------------------------------------------------------------------
n72_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n73_call_α
n72_var_β:              mov              r11, 52
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n70_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n73_call_α:             sub              rsp, 16
                        mov              r11, 53
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd146:            .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd146]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 262193
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx145_240
                        add              rsp, 16;                             jmp   n72_var_β
.Lx145_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n74_binop_α
n73_call_β:             mov              r11, 53
                        add              rsp, 16;                             jmp   n72_var_β
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            sub              rsp, 16
                        mov              r11, 54
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n75_assign_α
n74_binop_β:            mov              r11, 54
                        add              rsp, 32;                             jmp   n72_var_β
#-----------------------------------------------------------------------------------------------------------------------
n75_assign_α:           mov              r11, 55
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_statement_end_α
n75_assign_β:           mov              r11, 55;                             jmp   n70_statement_begin_β
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 56
                        mov              r10, 6
                        add              rsp, 64;                             jmp   main_γ
n76_statement_end_β:    mov              r11, 56
                        add              rsp, 64;                             jmp   main_γ
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 57
                        mov              r10, 7;                              jmp   n78_lit_string_α
n77_statement_begin_β:  mov              r11, 57;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_string_α:       sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
n78_lit_string_β:       mov              r11, 58
                        add              rsp, 16;                             jmp   n77_statement_begin_β
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "Pattern match failed"
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 59
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n80_statement_end_α
n79_assign_β:           mov              r11, 59;                             jmp   n77_statement_begin_β
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 60
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
n80_statement_end_β:    mov              r11, 60
                        add              rsp, 16;                             jmp   main_γ
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
