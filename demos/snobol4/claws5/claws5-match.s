                        .intel_syntax    noprefix
                        .text
                        .file            1 "snobol4/claws5/claws5-match.sno"
                        .file            2 "<included>"
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
                        .type            n0_match_pos_bx, @function
n0_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_match_pos_α:         mov              r11, 1
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   PAT$0_ω
                                                                              jmp   n1_match_arbno_α
n0_match_pos_β:         mov              r11, 1;                              jmp   PAT$0_ω
                        .size            n0_match_pos_bx, .-n0_match_pos_bx
                        .type            n1_match_arbno_bx, @function
n1_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_match_arbno_α:       mov              r11, 2
                        sub              rsp, 160
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
n1_match_arbno_β:       mov              r11, 2
                        mov              rax, qword ptr [rbp + -48]
                        mov              r12, qword ptr [rax + 8];            jmp   n3_match_alternate_α
.Lmatch_arbno_γ_1_as:   mov              r11, 2
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n4_match_span_β
                        sub              rsp, 160
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -176]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -168]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rbp + -56]
                        mov              qword ptr [rsp + 152], rax
                        mov              qword ptr [rbp + -48], rsp;          jmp   n2_match_rpos_α
.Lmatch_arbno_γ_1_af:   mov              r11, 2
.Lmatch_arbno_ω_1_af:   mov              r11, 2
                        mov              rcx, qword ptr [rbp + -48]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -48], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_14_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -176], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -168], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 128]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 136]
                        mov              qword ptr [rbp + -72], rax
                        mov              rax, qword ptr [rcx + 144]
                        mov              qword ptr [rbp + -64], rax
                        mov              rax, qword ptr [rcx + 152]
                        mov              qword ptr [rbp + -56], rax
                        lea              rsp, [rcx + 160]
                        mov              r12, qword ptr [rdx + 8];            jmp   n4_match_span_β
.Lmatch_arbno_β_14_3:   lea              rsp, [rcx + 160];                    jmp   n0_match_pos_β
                        .size            n1_match_arbno_bx, .-n1_match_arbno_bx
                        .type            n2_match_rpos_bx, @function
n2_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_match_rpos_α:        mov              r11, 3
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n1_match_arbno_β
                                                                              jmp   PAT$0_γ
n2_match_rpos_β:        mov              r11, 3;                              jmp   n1_match_arbno_β
                        .size            n2_match_rpos_bx, .-n2_match_rpos_bx
                        .type            n3_match_alternate_bx, @function
n3_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:   mov              r11, 4
                        mov              dword ptr [rbp + -216], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_17_21]
                        mov              qword ptr [rbp + -200], rax;         jmp   n10_match_span_α
.Lmatch_alternate_α_17_21:
                        lea              rax, [rip + .Lmatch_alternate_α_17_19]
                        mov              qword ptr [rbp + -200], rax;         jmp   n5_match_notany_α
.Lmatch_alternate_γ_3_s0:
                        mov              r11, 4
                        lea              rax, [rip + .Lmatch_alternate_α_17_40]
                        mov              qword ptr [rbp + -208], rax;         jmp   .Lmatch_alternate_γ_3_as
.Lmatch_alternate_γ_3_s1:
                        mov              r11, 4
                        lea              rax, [rip + .Lmatch_alternate_α_17_41]
                        mov              qword ptr [rbp + -208], rax;         jmp   .Lmatch_alternate_γ_3_as
.Lmatch_alternate_α_17_40:
                                                                              jmp   n11_match_lit_β
.Lmatch_alternate_α_17_41:
                                                                              jmp   n9_match_span_β
.Lmatch_alternate_γ_3_as:
                        mov              r11, 4;                              jmp   n4_match_span_α
n3_match_alternate_β:   mov              r11, 4
                        mov              rax, qword ptr [rbp + -208];         jmp   rax
.Lmatch_alternate_γ_3_af:
                        mov              r11, 4
.Lmatch_alternate_ω_3_af:
                        mov              r11, 4
                        mov              r14d, dword ptr [rbp + -216]
                        mov              rax, qword ptr [rbp + -200];         jmp   rax
.Lmatch_alternate_α_17_19:
                                                                              jmp   .Lmatch_arbno_ω_1_af
                        .size            n3_match_alternate_bx, .-n3_match_alternate_bx
                        .type            n4_match_span_bx, @function
n4_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_match_span_α:        sub              rsp, 16
                        mov              r11, 5
                        movsxd           rcx, r14d
.Lmatch_span_α_19_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_19_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_19_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_19_10
                                                                              jmp   .Lmatch_span_α_19_1
.Lmatch_span_α_19_10:   add              ecx, 1;                              jmp   .Lmatch_span_α_19_0
.Lmatch_span_α_19_1:    cmp              ecx, r14d;                           jg    .Lmatch_span_α_19_240
                        add              rsp, 16;                             jmp   n3_match_alternate_β
.Lmatch_span_α_19_240:  mov              dword ptr [rbp + -172], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_1_as
n4_match_span_β:        mov              r11, 5
                        mov              r14d, dword ptr [rbp + -172]
                        add              rsp, 16;                             jmp   n3_match_alternate_β
                        .size            n4_match_span_bx, .-n4_match_span_bx
                        .type            n5_match_notany_bx, @function
n5_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_match_notany_α:      mov              r11, 6
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_3_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_3_af
                        add              r14d, 1;                             jmp   n6_match_break_α
n5_match_notany_β:      mov              r11, 6
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_3_af
                        .size            n5_match_notany_bx, .-n5_match_notany_bx
                        .type            n6_match_break_bx, @function
n6_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_match_break_α:       mov              r11, 7
                        movsxd           rcx, r14d
.Lmatch_break_α_22_0:   cmp              ecx, r15d;                           jge   n5_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_22_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_22_0
.Lmatch_break_α_22_1:   mov              dword ptr [rbp + -112], r14d
                        mov              r14d, ecx;                           jmp   n7_match_lit_α
n6_match_break_β:       mov              r11, 7
                        mov              r14d, dword ptr [rbp + -112];        jmp   n5_match_notany_β
                        .size            n6_match_break_bx, .-n6_match_break_bx
                        .type            n7_match_lit_bx, @function
n7_match_lit_bx:
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
                        .size            n7_match_lit_bx, .-n7_match_lit_bx
                        .type            n8_match_any_bx, @function
n8_match_any_bx:
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
                        .size            n8_match_any_bx, .-n8_match_any_bx
                        .type            n9_match_span_bx, @function
n9_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_match_span_α:        mov              r11, 10
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_28_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_28_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_28_0
.Lmatch_span_α_28_1:    cmp              ecx, r14d;                           jle   n8_match_any_β
                        mov              dword ptr [rbp + -140], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_3_s1
n9_match_span_β:        mov              r11, 10
                        mov              r14d, dword ptr [rbp + -140];        jmp   n8_match_any_β
                        .size            n9_match_span_bx, .-n9_match_span_bx
                        .type            n10_match_span_bx, @function
n10_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_match_span_α:       mov              r11, 11
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_30_0:    cmp              ecx, r15d;                           jge   .Lmatch_span_α_30_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_30_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_30_0
.Lmatch_span_α_30_1:    cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_3_af
                        mov              dword ptr [rbp + -76], r14d
                        mov              r14d, ecx;                           jmp   n11_match_lit_α
n10_match_span_β:       mov              r11, 11
                        mov              r14d, dword ptr [rbp + -76];         jmp   .Lmatch_alternate_ω_3_af
                        .size            n10_match_span_bx, .-n10_match_span_bx
                        .type            n11_match_lit_bx, @function
n11_match_lit_bx:
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
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_3_s0
n11_match_lit_β:        mov              r11, 12
                        sub              r14d, 10;                            jmp   n10_match_span_β
                        .size            n11_match_lit_bx, .-n11_match_lit_bx
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
                        sub              rsp, 65544
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
                        lea              rdi, [rip + __label_names]
                        mov              esi, 2
                        call             rt_label_table_install@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
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
.Lgvan0:                .string          "claws"
.Lgvan1:                .string          "src"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "error"
.Llbln1:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#=======================================================================================================================
#         &TRIM   =   0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 13
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_92_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
n33_lit_integer_β:      mov              r11, 13
                        add              rsp, 16
                        add              rsp, -48;                            jmp   n36_call_α
.Llit_integer_α_92_0:   .quad            18446744073709551615
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_93_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_lit_string_α
n34_lit_integer_β:      mov              r11, 14
                        add              rsp, 16
                        add              rsp, -32;                            jmp   n36_call_α
.Llit_integer_α_93_0:   .quad            0
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_lit_string_bx, @function
n35_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 15
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 31
                        mov              rax, qword ptr [rip + .Llit_string_α_94_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_call_α
n35_lit_string_β:       mov              r11, 15
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n36_call_α
.Llit_string_α_94_0:    .quad            .Llit_string_α_94_0_s
.Llit_string_α_94_0_s:  .string          "snobol4/claws5/claws5-match.sno"
                        .size            n35_lit_string_bx, .-n35_lit_string_bx
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             sub              rsp, 16
                        mov              r11, 16
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
.Lcall_α_rkfnzd96:      .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd96]
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
                        cmp              al, 104;                             jne   .Lcall_α_95_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_stmt_mark_α
.Lcall_α_95_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_stmt_mark_α
n36_call_β:             mov              r11, 16
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n37_stmt_mark_α
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_stmt_mark_bx, @function
n37_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_stmt_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n38_statement_begin_α
n37_stmt_mark_β:        mov              r11, 17;                             jmp   n38_statement_begin_α
                        .size            n37_stmt_mark_bx, .-n37_stmt_mark_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 18
                        mov              r10, 1;                              jmp   n39_lit_integer_α
n38_statement_begin_β:  mov              r11, 18
                        add              rsp, 64;                             jmp   n42_stmt_mark_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_101_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_kw_assign_snobol4_α
n39_lit_integer_β:      mov              r11, 19
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Llit_integer_α_101_0:  .quad            0
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_kw_assign_snobol4_bx, @function
n40_kw_assign_snobol4_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_kw_assign_snobol4_α:
                        sub              rsp, 16
                        mov              r11, 20
                        mov              rdi, qword ptr [rip + .Lkw_assign_snobol4_α_102_0]
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
                        cmp              al, 104;                             jne   .Lkw_assign_snobol4_α_102_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Lkw_assign_snobol4_α_102_240:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_statement_end_α
n40_kw_assign_snobol4_β:
                        mov              r11, 20
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Lkw_assign_snobol4_α_102_0:
                        .quad            1
                        .size            n40_kw_assign_snobol4_bx, .-n40_kw_assign_snobol4_bx
                        .type            n41_statement_end_bx, @function
n41_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 21
                        mov              r10, 1
                        add              rsp, 96;                             jmp   n42_stmt_mark_α
n41_statement_end_β:    mov              r11, 21
                        add              rsp, 96;                             jmp   n42_stmt_mark_α
                        .size            n41_statement_end_bx, .-n41_statement_end_bx
                        .type            n42_stmt_mark_bx, @function
n42_stmt_mark_bx:
#=======================================================================================================================
#         claws   =   POS(0)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 2 0
n42_stmt_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n43_statement_begin_α
n42_stmt_mark_β:        mov              r11, 22;                             jmp   n43_statement_begin_α
                        .size            n42_stmt_mark_bx, .-n42_stmt_mark_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 23
                        mov              r10, 2;                              jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 23;                             jmp   n48_stmt_mark_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_lit_string_bx, @function
n44_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_109_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_call_α
n44_lit_string_β:       mov              r11, 24
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Llit_string_α_109_0:   .quad            .Llit_string_α_109_0_s
.Llit_string_α_109_0_s: .string          "PAT$0"
                        .size            n44_lit_string_bx, .-n44_lit_string_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             sub              rsp, 16
                        mov              r11, 25
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd111:     .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd111]
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
                        cmp              al, 104;                             jne   .Lcall_α_110_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
.Lcall_α_110_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_assign_α
n45_call_β:             mov              r11, 25
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_assign_bx, @function
n46_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # claws
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
                        mov              rdi, qword ptr [rip + .Lassign_α_112_0]
                        .section         .rodata
.Lassign_α_112_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_112_1_s]
                        mov              r8, 2
                        mov              r9, 2
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
                        pop              rax;                                 jmp   n47_statement_end_α
n46_assign_β:           mov              r11, 26;                             jmp   n43_statement_begin_β
.Lassign_α_112_0:       .quad            .Lassign_α_112_0_s
.Lassign_α_112_0_s:     .string          "claws"
                        .size            n46_assign_bx, .-n46_assign_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 27
                        mov              r10, 2
                        add              rsp, 32;                             jmp   n48_stmt_mark_α
n47_statement_end_β:    mov              r11, 27
                        add              rsp, 32;                             jmp   n48_stmt_mark_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_stmt_mark_bx, @function
n48_stmt_mark_bx:
#=======================================================================================================================
#         INPUT(.INPUT, 9, '[-f0 -r4194304]')
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n48_stmt_mark_α:        mov              r11, 28
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n49_statement_begin_α
n48_stmt_mark_β:        mov              r11, 28;                             jmp   n49_statement_begin_α
                        .size            n48_stmt_mark_bx, .-n48_stmt_mark_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 29
                        mov              r10, 3;                              jmp   n50_lit_name_α
n49_statement_begin_β:  mov              r11, 29;                             jmp   n55_stmt_mark_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_lit_name_bx, @function
n50_lit_name_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_name_α:         sub              rsp, 16
                        mov              r11, 30
                        mov              qword ptr [rsp + 0], 40              # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_name_α_119_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_lit_integer_α
n50_lit_name_β:         mov              r11, 30
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Llit_name_α_119_0:     .quad            .Llit_name_α_119_0_s
.Llit_name_α_119_0_s:   .string          "INPUT"
                        .size            n50_lit_name_bx, .-n50_lit_name_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 31
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_120_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_lit_string_α
n51_lit_integer_β:      mov              r11, 31
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n49_statement_begin_β
.Llit_integer_α_120_0:  .quad            9
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_call_α
n52_lit_string_β:       mov              r11, 32
                        add              rsp, 16;                             jmp   n51_lit_integer_β
.Llit_string_α_121_0:   .quad            .Llit_string_α_121_0_s
.Llit_string_α_121_0_s: .string          "[-f0 -r4194304]"
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_call_bx, @function
n53_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_call_α:             sub              rsp, 16
                        mov              r11, 33
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
.Lcall_α_bynamefnzd33:  .string          "INPUT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefnzd33]
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
                        cmp              al, 104;                             jne   .Lcall_α_122_240
                        add              rsp, 16;                             jmp   n52_lit_string_β
.Lcall_α_122_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_statement_end_α
n53_call_β:             mov              r11, 33
                        add              rsp, 16;                             jmp   n52_lit_string_β
                        .size            n53_call_bx, .-n53_call_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 34
                        mov              r10, 3
                        add              rsp, 64;                             jmp   n55_stmt_mark_α
n54_statement_end_β:    mov              r11, 34
                        add              rsp, 64;                             jmp   n55_stmt_mark_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_stmt_mark_bx, @function
n55_stmt_mark_bx:
#=======================================================================================================================
#         src     =   INPUT  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n55_stmt_mark_α:        mov              r11, 35
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n56_statement_begin_α
n55_stmt_mark_β:        mov              r11, 35;                             jmp   n56_statement_begin_α
                        .size            n55_stmt_mark_bx, .-n55_stmt_mark_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 36
                        mov              r10, 4;                              jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 36;                             jmp   n61_stmt_mark_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rdi, qword ptr [rip + .Lvar_α_129_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lvar_α_129_240
                        add              rsp, 16;                             jmp   n56_statement_begin_β
.Lvar_α_129_240:        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_assign_α
n57_var_β:              mov              r11, 37
                        add              rsp, 16;                             jmp   n56_statement_begin_β
.Lvar_α_129_0:          .quad            .Lvar_α_129_0_s
.Lvar_α_129_0_s:        .string          "INPUT"
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_assign_bx, @function
n58_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # src
                        mov              qword ptr [r9 + 24], rdx
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
                        mov              rdi, qword ptr [rip + .Lassign_α_130_0]
                        .section         .rodata
.Lassign_α_130_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_130_1_s]
                        mov              r8, 13
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
                        pop              rax;                                 jmp   n59_statement_end_α
n58_assign_β:           mov              r11, 38;                             jmp   n56_statement_begin_β
.Lassign_α_130_0:       .quad            .Lassign_α_130_0_s
.Lassign_α_130_0_s:     .string          "src"
                        .size            n58_assign_bx, .-n58_assign_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 39
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n60_stmt_mark_α
n59_statement_end_β:    mov              r11, 39
                        add              rsp, 16;                             jmp   n61_stmt_mark_α
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_stmt_mark_bx, @function
n60_stmt_mark_bx:
#=======================================================================================================================
#         src     ?   claws  :F(error)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n60_stmt_mark_α:        mov              r11, 40
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n62_statement_begin_α
n60_stmt_mark_β:        mov              r11, 40;                             jmp   n62_statement_begin_α
                        .size            n60_stmt_mark_bx, .-n60_stmt_mark_bx
                        .type            n61_stmt_mark_bx, @function
n61_stmt_mark_bx:
#=======================================================================================================================
# error   OUTPUT  =   'Pattern match failed'
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n61_stmt_mark_α:        mov              r11, 41
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n87_statement_begin_α
n61_stmt_mark_β:        mov              r11, 41;                             jmp   n87_statement_begin_α
                        .size            n61_stmt_mark_bx, .-n61_stmt_mark_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 42
                        mov              r10, 5;                              jmp   n63_var_α
n62_statement_begin_β:  mov              r11, 42;                             jmp   n61_stmt_mark_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_var_bx, @function
n63_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n64_match_begin_α
n63_var_β:              mov              r11, 43
                        add              rsp, 16;                             jmp   n61_stmt_mark_α
                        .size            n63_var_bx, .-n63_var_bx
                        .type            n64_match_begin_bx, @function
n64_match_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_match_begin_α:      mov              r11, 44
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
.Lmatch_begin_α_141_0:  mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lmatch_begin_α_141_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n65_match_pos_α
n64_match_begin_β:      mov              r11, 44
.Lmatch_begin_α_141_13: lea              rsp, [rbp + -120]                    # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lmatch_begin_β_141_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lmatch_begin_β_141_1
                                                                              jmp   .Lmatch_begin_α_141_0
.Lmatch_begin_β_141_1:
.Lmatch_begin_γ_64_af:  mov              r11, 44
.Lmatch_begin_ω_64_af:  mov              r11, 44
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
                        add              rsp, 16;                             jmp   n61_stmt_mark_α
                        .size            n64_match_begin_bx, .-n64_match_begin_bx
                        .type            n65_match_pos_bx, @function
n65_match_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_match_pos_α:        mov              r11, 45
                        mov              rax, 0
                        cmp              r14d, eax;                           jne   n64_match_begin_β
                                                                              jmp   n66_match_arbno_α
n65_match_pos_β:        mov              r11, 45;                             jmp   n64_match_begin_β
                        .size            n65_match_pos_bx, .-n65_match_pos_bx
                        .type            n66_match_arbno_bx, @function
n66_match_arbno_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_match_arbno_α:      mov              r11, 46
                        sub              rsp, 128
                        mov              dword ptr [rsp + 0], r14d
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              rax, qword ptr [rbp + -64]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n67_match_rpos_α
n66_match_arbno_β:      mov              r11, 46
                        mov              rax, qword ptr [rbp + -64]
                        mov              r12, qword ptr [rax + 8];            jmp   n71_match_alternate_α
.Lmatch_arbno_γ_66_as:  mov              r11, 46
                        mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 4]
                        cmp              r14d, eax;                           je    n72_match_span_β
                        sub              rsp, 128
                        mov              eax, dword ptr [rcx + 0]
                        mov              dword ptr [rsp + 0], eax
                        mov              dword ptr [rsp + 4], r14d
                        mov              qword ptr [rsp + 8], r12
                        mov              qword ptr [rsp + 16], rcx
                        mov              rax, qword ptr [rbp + -160]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rbp + -152]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rbp + -144]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rbp + -136]
                        mov              qword ptr [rsp + 56], rax
                        mov              rax, qword ptr [rbp + -128]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rbp + -120]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rbp + -112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rbp + -104]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rbp + -96]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rbp + -88]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rbp + -80]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rbp + -72]
                        mov              qword ptr [rsp + 120], rax
                        mov              qword ptr [rbp + -64], rsp;          jmp   n67_match_rpos_α
.Lmatch_arbno_γ_66_af:  mov              r11, 46
.Lmatch_arbno_ω_66_af:  mov              r11, 46
                        mov              rcx, qword ptr [rbp + -64]
                        mov              eax, dword ptr [rcx + 0]
                        mov              r14d, dword ptr [rcx + 4]
                        mov              rdx, qword ptr [rcx + 16]
                        mov              qword ptr [rbp + -64], rdx
                        cmp              r14d, eax;                           je    .Lmatch_arbno_β_144_3
                        mov              rax, qword ptr [rcx + 32]
                        mov              qword ptr [rbp + -160], rax
                        mov              rax, qword ptr [rcx + 40]
                        mov              qword ptr [rbp + -152], rax
                        mov              rax, qword ptr [rcx + 48]
                        mov              qword ptr [rbp + -144], rax
                        mov              rax, qword ptr [rcx + 56]
                        mov              qword ptr [rbp + -136], rax
                        mov              rax, qword ptr [rcx + 64]
                        mov              qword ptr [rbp + -128], rax
                        mov              rax, qword ptr [rcx + 72]
                        mov              qword ptr [rbp + -120], rax
                        mov              rax, qword ptr [rcx + 80]
                        mov              qword ptr [rbp + -112], rax
                        mov              rax, qword ptr [rcx + 88]
                        mov              qword ptr [rbp + -104], rax
                        mov              rax, qword ptr [rcx + 96]
                        mov              qword ptr [rbp + -96], rax
                        mov              rax, qword ptr [rcx + 104]
                        mov              qword ptr [rbp + -88], rax
                        mov              rax, qword ptr [rcx + 112]
                        mov              qword ptr [rbp + -80], rax
                        mov              rax, qword ptr [rcx + 120]
                        mov              qword ptr [rbp + -72], rax
                        lea              rsp, [rcx + 128]
                        mov              r12, qword ptr [rdx + 8];            jmp   n72_match_span_β
.Lmatch_arbno_β_144_3:  lea              rsp, [rcx + 128];                    jmp   n65_match_pos_β
                        .size            n66_match_arbno_bx, .-n66_match_arbno_bx
                        .type            n67_match_rpos_bx, @function
n67_match_rpos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_match_rpos_α:       mov              r11, 47
                        mov              rax, 0
                        mov              ecx, r15d
                        sub              ecx, eax
                        cmp              r14d, ecx;                           jne   n66_match_arbno_β
                                                                              jmp   n68_match_end_α
n67_match_rpos_β:       mov              r11, 47;                             jmp   n66_match_arbno_β
                        .size            n67_match_rpos_bx, .-n67_match_rpos_bx
                        .type            n68_match_end_bx, @function
n68_match_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_match_end_α:        mov              r11, 48
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
                        test             rax, rax;                            je    .Lmatch_end_α_147_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   .Lmatch_begin_ω_64_af
.Lmatch_end_α_147_13:   add              rsp, 16
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
n69_statement_end_α:    mov              r11, 49
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n70_stmt_mark_α
n69_statement_end_β:    mov              r11, 49
                        add              rsp, 32;                             jmp   n61_stmt_mark_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_stmt_mark_bx, @function
n70_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT  =   'matched bytes=' SIZE(src)  :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n70_stmt_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n80_statement_begin_α
n70_stmt_mark_β:        mov              r11, 50;                             jmp   n80_statement_begin_α
                        .size            n70_stmt_mark_bx, .-n70_stmt_mark_bx
                        .type            n71_match_alternate_bx, @function
n71_match_alternate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_match_alternate_α:  mov              r11, 51
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], r14d
                        lea              rax, [rip + .Lmatch_alternate_α_153_21]
                        mov              qword ptr [rsp + 16], rax;           jmp   n78_match_span_α
.Lmatch_alternate_α_153_21:
                        lea              rax, [rip + .Lmatch_alternate_α_153_19]
                        mov              qword ptr [rsp + 16], rax;           jmp   n73_match_notany_α
.Lmatch_alternate_γ_71_s0:
                        mov              r11, 51
                        lea              rax, [rip + .Lmatch_alternate_α_153_40]
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_γ_71_s1:
                        mov              r11, 51
                        lea              rax, [rip + .Lmatch_alternate_α_153_41]
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lmatch_alternate_γ_71_as
.Lmatch_alternate_α_153_40:
                                                                              jmp   n79_match_lit_β
.Lmatch_alternate_α_153_41:
                                                                              jmp   n77_match_span_β
.Lmatch_alternate_γ_71_as:
                        mov              r11, 51;                             jmp   n72_match_span_α
n71_match_alternate_β:  mov              r11, 51
                        mov              rax, qword ptr [rsp + 8];            jmp   rax
.Lmatch_alternate_γ_71_af:
                        mov              r11, 51
.Lmatch_alternate_ω_71_af:
                        mov              r11, 51
                        mov              r14d, dword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16];           jmp   rax
.Lmatch_alternate_α_153_19:
                        add              rsp, 32;                             jmp   .Lmatch_arbno_ω_66_af
                        .size            n71_match_alternate_bx, .-n71_match_alternate_bx
                        .type            n72_match_span_bx, @function
n72_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_match_span_α:       sub              rsp, 16
                        mov              r11, 52
                        movsxd           rcx, r14d
.Lmatch_span_α_155_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_155_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 32;                             je    .Lmatch_span_α_155_10
                        cmp              esi, 10;                             je    .Lmatch_span_α_155_10
                                                                              jmp   .Lmatch_span_α_155_1
.Lmatch_span_α_155_10:  add              ecx, 1;                              jmp   .Lmatch_span_α_155_0
.Lmatch_span_α_155_1:   cmp              ecx, r14d;                           jg    .Lmatch_span_α_155_240
                        add              rsp, 16;                             jmp   n71_match_alternate_β
.Lmatch_span_α_155_240: mov              dword ptr [rsp + 4], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_arbno_γ_66_as
n72_match_span_β:       mov              r11, 52
                        mov              r14d, dword ptr [rsp + 4]
                        add              rsp, 16;                             jmp   n71_match_alternate_β
                        .size            n72_match_span_bx, .-n72_match_span_bx
                        .type            n73_match_notany_bx, @function
n73_match_notany_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_match_notany_α:     mov              r11, 53
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   .Lmatch_alternate_ω_71_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_alternate_ω_71_af
                        add              r14d, 1;                             jmp   n74_match_break_α
n73_match_notany_β:     mov              r11, 53
                        sub              r14d, 1;                             jmp   .Lmatch_alternate_ω_71_af
                        .size            n73_match_notany_bx, .-n73_match_notany_bx
                        .type            n74_match_break_bx, @function
n74_match_break_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_match_break_α:      mov              r11, 54
                        movsxd           rcx, r14d
.Lmatch_break_α_158_0:  cmp              ecx, r15d;                           jge   n73_match_notany_β
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 95;                             je    .Lmatch_break_α_158_1
                        add              ecx, 1;                              jmp   .Lmatch_break_α_158_0
.Lmatch_break_α_158_1:  mov              dword ptr [rbp + -128], r14d
                        mov              r14d, ecx;                           jmp   n75_match_lit_α
n74_match_break_β:      mov              r11, 54
                        mov              r14d, dword ptr [rbp + -128];        jmp   n73_match_notany_β
                        .size            n74_match_break_bx, .-n74_match_break_bx
                        .type            n75_match_lit_bx, @function
n75_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_match_lit_α:        mov              r11, 55
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n74_match_break_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 95;                             jne   n74_match_break_β
                        add              r14d, 1;                             jmp   n76_match_any_α
n75_match_lit_β:        mov              r11, 55
                        sub              r14d, 1;                             jmp   n74_match_break_β
                        .size            n75_match_lit_bx, .-n75_match_lit_bx
                        .type            n76_match_any_bx, @function
n76_match_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_match_any_α:        mov              r11, 56
                        mov              eax, r14d
                        cmp              eax, r15d;                           jge   n75_match_lit_β
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        lea              rdi, [rip + .C0]
                        cmp              byte ptr [rdi+rsi], 0;               je    n75_match_lit_β
                        add              r14d, 1;                             jmp   n77_match_span_α
n76_match_any_β:        mov              r11, 56
                        sub              r14d, 1;                             jmp   n75_match_lit_β
                        .size            n76_match_any_bx, .-n76_match_any_bx
                        .type            n77_match_span_bx, @function
n77_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_match_span_α:       mov              r11, 57
                        lea              rdi, [rip + .C1]
                        movsxd           rcx, r14d
.Lmatch_span_α_164_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_164_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_164_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_164_0
.Lmatch_span_α_164_1:   cmp              ecx, r14d;                           jle   n76_match_any_β
                        mov              dword ptr [rbp + -156], r14d
                        mov              r14d, ecx;                           jmp   .Lmatch_alternate_γ_71_s1
n77_match_span_β:       mov              r11, 57
                        mov              r14d, dword ptr [rbp + -156];        jmp   n76_match_any_β
                        .size            n77_match_span_bx, .-n77_match_span_bx
                        .type            n78_match_span_bx, @function
n78_match_span_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_match_span_α:       mov              r11, 58
                        lea              rdi, [rip + .C2]
                        movsxd           rcx, r14d
.Lmatch_span_α_166_0:   cmp              ecx, r15d;                           jge   .Lmatch_span_α_166_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lmatch_span_α_166_1
                        add              ecx, 1;                              jmp   .Lmatch_span_α_166_0
.Lmatch_span_α_166_1:   cmp              ecx, r14d;                           jle   .Lmatch_alternate_ω_71_af
                        mov              dword ptr [rbp + -92], r14d
                        mov              r14d, ecx;                           jmp   n79_match_lit_α
n78_match_span_β:       mov              r11, 58
                        mov              r14d, dword ptr [rbp + -92];         jmp   .Lmatch_alternate_ω_71_af
                        .size            n78_match_span_bx, .-n78_match_span_bx
                        .type            n79_match_lit_bx, @function
n79_match_lit_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_match_lit_α:        mov              r11, 59
                        mov              eax, r14d
                        add              eax, 10
                        cmp              eax, r15d;                           jg    n78_match_span_β
                        movsxd           rcx, r14d
                        mov              rdx, qword ptr [r13+rcx]
                        movabs           rax, 5791411556081353567
                        cmp              rdx, rax;                            jne   n78_match_span_β
                        movzx            eax, byte ptr [r13+rcx+8]
                        cmp              eax, 85;                             jne   n78_match_span_β
                        movzx            eax, byte ptr [r13+rcx+9]
                        cmp              eax, 78;                             jne   n78_match_span_β
                        add              r14d, 10;                            jmp   .Lmatch_alternate_γ_71_s0
n79_match_lit_β:        mov              r11, 59
                        sub              r14d, 10;                            jmp   n78_match_span_β
                        .size            n79_match_lit_bx, .-n79_match_lit_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_begin_α:  mov              r11, 60
                        mov              r10, 6;                              jmp   n81_lit_string_α
n80_statement_begin_β:  mov              r11, 60;                             jmp   main_γ
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_lit_string_bx, @function
n81_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Llit_string_α_171_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_var_α
n81_lit_string_β:       mov              r11, 61
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Llit_string_α_171_0:   .quad            .Llit_string_α_171_0_s
.Llit_string_α_171_0_s: .string          "matched bytes="
                        .size            n81_lit_string_bx, .-n81_lit_string_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 16]             # src
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_call_α
n82_var_β:              mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             sub              rsp, 16
                        mov              r11, 63
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lcall_α_rkfnzd174:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd174]
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
                        cmp              al, 104;                             jne   .Lcall_α_173_240
                        add              rsp, 16;                             jmp   n82_var_β
.Lcall_α_173_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_binop_α
n83_call_β:             mov              r11, 63
                        add              rsp, 16;                             jmp   n82_var_β
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 64
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_assign_α
n84_binop_β:            mov              r11, 64
                        add              rsp, 32;                             jmp   n82_var_β
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_assign_bx, @function
n85_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 65
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
.Lassign_α_176_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_176_1_s]
                        mov              r8, 15
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_statement_end_α
n85_assign_β:           mov              r11, 65;                             jmp   n80_statement_begin_β
.Lassign_α_176_0:       .quad            .Lassign_α_176_0_s
.Lassign_α_176_0_s:     .string          "OUTPUT"
                        .size            n85_assign_bx, .-n85_assign_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 66
                        mov              r10, 6
                        add              rsp, 64;                             jmp   main_γ
n86_statement_end_β:    mov              r11, 66
                        add              rsp, 64;                             jmp   main_γ
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 67
                        mov              r10, 7;                              jmp   n88_lit_string_α
n87_statement_begin_β:  mov              r11, 67;                             jmp   main_γ
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 20
                        mov              rax, qword ptr [rip + .Llit_string_α_181_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_assign_α
n88_lit_string_β:       mov              r11, 68
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Llit_string_α_181_0:   .quad            .Llit_string_α_181_0_s
.Llit_string_α_181_0_s: .string          "Pattern match failed"
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_assign_bx, @function
n89_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # lit_string
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
                        mov              rdi, qword ptr [rip + .Lassign_α_182_0]
                        .section         .rodata
.Lassign_α_182_1_s:     .string          "snobol4/claws5/claws5-match.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_182_1_s]
                        mov              r8, 15
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
                        mov              rdi, qword ptr [rip + .Lassign_α_182_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_statement_end_α
n89_assign_β:           mov              r11, 69;                             jmp   n87_statement_begin_β
.Lassign_α_182_0:       .quad            .Lassign_α_182_0_s
.Lassign_α_182_0_s:     .string          "OUTPUT"
                        .size            n89_assign_bx, .-n89_assign_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 70
                        mov              r10, 7
                        add              rsp, 16;                             jmp   main_γ
n90_statement_end_β:    mov              r11, 70
                        add              rsp, 16;                             jmp   main_γ
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_goto_bx, @function
n91_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_goto_α:             mov              r11, 71;                             jmp   n61_stmt_mark_α
n91_goto_β:             mov              r11, 71;                             jmp   main_ω
                        .size            n91_goto_bx, .-n91_goto_bx
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
