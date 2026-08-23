                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__PAT$0:
PAT$0_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 152
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rbp + -8], rcx
                        mov              rcx, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + -16], rcx
                        mov              qword ptr [rbp + -24], rdx
                        mov              qword ptr [rbp + -32], r12
#-----------------------------------------------------------------------------------------------------------------------
n0_match_lit_α:         mov              r11, 1
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    PAT$0_ω
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 91;                             jne   PAT$0_ω
                        add              r14d, 1;                             jmp   n1_match_span_α
n0_match_lit_β:         mov              r11, 1
                        sub              r14d, 1;                             jmp   PAT$0_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_match_span_α:        sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx15_0:                cmp              ecx, r15d;                           jge   .Lx15_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx15_1
                        add              ecx, 1;                              jmp   .Lx15_0
.Lx15_1:                cmp              ecx, r14d;                           jg    .Lx15_240
                        add              rsp, 16;                             jmp   n0_match_lit_β
.Lx15_240:              mov              dword ptr [rbp + -60], r14d
                        mov              r14d, ecx;                           jmp   n2_match_assign_save_α
n1_match_span_β:        mov              r11, 2
                        mov              r14d, dword ptr [rbp + -60]
                        add              rsp, 16;                             jmp   n0_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n2_match_assign_save_α: sub              rsp, 16
                        mov              r11, 3
                        mov              dword ptr [rbp + -80], r14d;         jmp   n3_match_defer_α
n2_match_assign_save_β: mov              r11, 3
                        add              rsp, 16;                             jmp   n1_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n3_match_defer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx18_16
                        mov              rax, qword ptr [rdx + 0]
.Lx18_16:               test             rax, rax;                            jz    .Lx18_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx18_5]
                        push             rcx
                        lea              rcx, [rip + .Lx18_4]
                        push             rcx;                                 jmp   rax
.Lx18_4:                                                                      jmp   n4_match_assign_cond_α
.Lx18_5:                add              rsp, 16;                             jmp   n2_match_assign_save_β
.Lx18_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 0
                        lea              rdx, [rip + .S0]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            jns   .Lx18_240
                        add              rsp, 16;                             jmp   n2_match_assign_save_β
.Lx18_240:              mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx18_6]
                        push             rcx
                        push             rax;                                 jmp   n4_match_assign_cond_α
.Lx18_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax
                        add              rsp, 16;                             jmp   n2_match_assign_save_β
n3_match_defer_β:       mov              r11, 4
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx18_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx18_12
                                                                              jmp   rax
.Lx18_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_cond_α: mov              r11, 5
                        mov              eax, dword ptr [rbp + -80]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n5_match_arbno_α
n4_match_assign_cond_β: mov              r11, 5
                        sub              r12, 24;                             jmp   n3_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_arbno_α:       mov              r11, 6
                        mov              dword ptr [rbp + -96], r14d
                        mov              dword ptr [rbp + -92], r14d;         jmp   n6_match_lit_α
n5_match_arbno_β:       mov              r11, 6;                              jmp   n7_match_lit_α
n5_match_arbno_as:      mov              r11, 6
                        mov              eax, dword ptr [rbp + -92]
                        cmp              r14d, eax;                           je    n7_match_lit_β
                        mov              dword ptr [rbp + -92], r14d;         jmp   n6_match_lit_α
n5_match_arbno_af:      mov              r11, 6
                        mov              eax, dword ptr [rbp + -96]
                        cmp              r14d, eax;                           jmp   n4_match_assign_cond_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_lit_α:         mov              r11, 7
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n5_match_arbno_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 93;                             jne   n5_match_arbno_β
                        add              r14d, 1;                             jmp   PAT$0_γ
n6_match_lit_β:         mov              r11, 7
                        sub              r14d, 1;                             jmp   n5_match_arbno_β
#-----------------------------------------------------------------------------------------------------------------------
n7_match_lit_α:         mov              r11, 8
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jg    n5_match_arbno_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 44;                             jne   n5_match_arbno_af
                        add              r14d, 1;                             jmp   n8_match_span_α
n7_match_lit_β:         mov              r11, 8
                        sub              r14d, 1;                             jmp   n5_match_arbno_af
#-----------------------------------------------------------------------------------------------------------------------
n8_match_span_α:        sub              rsp, 16
                        mov              r11, 9
                        lea              rdi, [rip + .C0]
                        movsxd           rcx, r14d
.Lx28_0:                cmp              ecx, r15d;                           jge   .Lx28_1
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              byte ptr [rdi+rsi], 0;               je    .Lx28_1
                        add              ecx, 1;                              jmp   .Lx28_0
.Lx28_1:                cmp              ecx, r14d;                           jg    .Lx28_240
                        add              rsp, 16;                             jmp   n7_match_lit_β
.Lx28_240:              mov              dword ptr [rbp + -124], r14d
                        mov              r14d, ecx;                           jmp   n9_match_assign_save_α
n8_match_span_β:        mov              r11, 9
                        mov              r14d, dword ptr [rbp + -124]
                        add              rsp, 16;                             jmp   n7_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_save_α: mov              r11, 10
                        mov              dword ptr [rbp + -144], r14d;        jmp   n10_match_defer_α
n9_match_assign_save_β: mov              r11, 10;                             jmp   n8_match_span_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_defer_α:      mov              r11, 11
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_get_pat_dtp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdx, rax
                        test             rax, rax;                            je    .Lx31_16
                        mov              rax, qword ptr [rdx + 0]
.Lx31_16:               test             rax, rax;                            jz    .Lx31_0
                        mov              r8d, 0
                        lea              rcx, [rip + .Lx31_5]
                        push             rcx
                        lea              rcx, [rip + .Lx31_4]
                        push             rcx;                                 jmp   rax
.Lx31_4:                                                                      jmp   n11_match_assign_cond_α
.Lx31_5:                                                                      jmp   n9_match_assign_save_β
.Lx31_0:                push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -24]
                        mov              esi, 1
                        lea              rdx, [rip + .S2]
                        mov              ecx, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_patv_defer_run_all@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             eax, eax;                            js    n9_match_assign_save_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx31_6]
                        push             rcx
                        push             rax;                                 jmp   n11_match_assign_cond_α
.Lx31_6:                add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n9_match_assign_save_β
n10_match_defer_β:      mov              r11, 11
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx31_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx31_12
                                                                              jmp   rax
.Lx31_12:                                                                     jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n11_match_assign_cond_α:
                        mov              r11, 12
                        mov              eax, dword ptr [rbp + -144]
                        lea              rcx, [rip + .S1]
                        mov              qword ptr [r12 + 0], rcx
                        mov              esi, eax
                        mov              qword ptr [r12 + 8], rsi
                        mov              edx, r14d
                        sub              edx, eax
                        mov              qword ptr [r12 + 16], rdx
                        add              r12, 24;                             jmp   n5_match_arbno_as
n11_match_assign_cond_β:
                        mov              r11, 12
                        sub              r12, 24;                             jmp   n10_match_defer_β
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_res:
                        mov              rbp, qword ptr [rsp + 24]
                        add              rsp, 32
#-----------------------------------------------------------------------------------------------------------------------
PAT$0_β:
                                                                              jmp   n6_match_lit_β
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
                        mov              edi, 7
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 7
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "mark_fire"
.Lgvan1:                .string          "fire_count"
.Lgvan2:                .string          "digits"
.Lgvan3:                .string          "pattern"
.Lgvan4:                .string          "epsilon"
.Lgvan5:                .string          "PAT$0$V0"
.Lgvan6:                .string          "PAT$0$V1"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        sub              rsp, 0
#=======================================================================================================================
#         DEFINE('mark_fire()')                          :(mark_fire_end)
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 13
                        mov              r10, 1;                              jmp   n35_define_α
n34_statement_begin_β:  mov              r11, 13;                             jmp   n47_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n35_define_α:           mov              r11, 14
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        mov              rsi, qword ptr [rip + .Lx91_1]
                        mov              edx, 0
                        mov              ecx, 0
                        mov              r8d, 0
                        lea              r9, [rip + n37_statement_begin_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_define_site@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + .Lx91_0]
                        lea              rsi, [rip + mark_fire_α]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             bb_ab_seal_alpha@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_statement_end_α
n35_define_β:           mov              r11, 14;                             jmp   n34_statement_begin_β
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "mark_fire"
.Lx91_1:                .quad            .Lx91_1_s
.Lx91_1_s:              .string          ""
                                                                              jmp   .Lx92_245
#-----------------------------------------------------------------------------------------------------------------------
mark_fire_α:            sub              rsp, 48
                        mov              rax, qword ptr [r9 + 0]              # mark_fire
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [r9 + 0], 0
                        mov              qword ptr [r9 + 8], 0
                        mov              qword ptr [rsp + 32], rcx
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        lea              rcx, [rip + mark_fire_γ]
                        lea              rax, [rip + mark_fire_ω]
                        push             rax
                        push             rcx
                        lea              rax, [rip + n37_statement_begin_α];  jmp   rax
mark_fire_γ:            mov              rdi, qword ptr [r9 + 0]
                        mov              rsi, qword ptr [r9 + 8]
                        mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 8]
                        add              rsp, 48
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   rcx
mark_fire_ω:            mov              rcx, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rcx + 0]
                        lea              r8, [rsp + 48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rcx, qword ptr [rcx + 16]
                        add              rsp, 48
                        mov              eax, 104
                        xor              edx, edx;                            jmp   rcx
.Lx92_245:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 15
                        mov              r10, 1;                              jmp   n47_statement_begin_α
#=======================================================================================================================
# mark_fire       fire_count = fire_count + 1
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 16
                        mov              r10, 2;                              jmp   n38_var_α
n37_statement_begin_β:  mov              r11, 16;                             jmp   n43_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              sub              rsp, 16
                        mov              r11, 17
                        mov              rax, qword ptr [r9 + 16]             # fire_count
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n39_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_binop_α
n39_lit_integer_β:      mov              r11, 18
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n37_statement_begin_β
.Lx98_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n40_binop_α:            sub              rsp, 16
                        mov              r11, 19
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lx99_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lx99_7
.Lx99_2:                mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lx99_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx99_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx99_4
.Lx99_3:                movq             xmm0, rsi
.Lx99_4:                cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lx99_7:                                                                      jmp   n41_assign_α
.Lx99_0:                mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              al, 104;                             jne   .Lx99_240
                        add              rsp, 16;                             jmp   n39_lit_integer_β
.Lx99_240:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # fire_count
                        mov              qword ptr [r9 + 24], rdx;            jmp   n42_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_end_α:    mov              r11, 21
                        mov              r10, 2
                        add              rsp, 48;                             jmp   n43_statement_begin_α
#=======================================================================================================================
#         mark_fire = ''                                 :(RETURN)
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 22
                        mov              r10, 3;                              jmp   n44_lit_string_α
n43_statement_begin_β:  mov              r11, 22;                             jmp   RETURN
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_assign_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 24
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # mark_fire
                        mov              qword ptr [r9 + 8], rdx;             jmp   n46_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 25
                        mov              r10, 3
                        add              rsp, 16;                             jmp   RETURN
#=======================================================================================================================
# mark_fire_end  <stmt 4, line 16: source not in main file (INCLUDE)>
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_begin_α:  mov              r11, 26
                        mov              r10, 4;                              jmp   n48_statement_end_α
n47_statement_begin_β:  mov              r11, 26;                             jmp   n49_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 27
                        mov              r10, 4;                              jmp   n49_statement_begin_α
#=======================================================================================================================
#         fire_count = 0
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 28
                        mov              r10, 5;                              jmp   n50_lit_integer_α
n49_statement_begin_β:  mov              r11, 28;                             jmp   n53_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      sub              rsp, 16
                        mov              r11, 29
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n51_assign_α
.Lx115_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # fire_count
                        mov              qword ptr [r9 + 24], rdx;            jmp   n52_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 31
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n53_statement_begin_α
#=======================================================================================================================
#         digits = '0123456789'
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 32
                        mov              r10, 6;                              jmp   n54_lit_string_α
n53_statement_begin_β:  mov              r11, 32;                             jmp   n57_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       sub              rsp, 16
                        mov              r11, 33
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n55_assign_α
.Lx121_0:               .quad            .Lx121_0_s
.Lx121_0_s:             .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              r11, 34
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # digits
                        mov              qword ptr [r9 + 40], rdx;            jmp   n56_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    mov              r11, 35
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n57_statement_begin_α
#=======================================================================================================================
#         pattern = '[' SPAN(digits) (epsilon . *mark_fire()) ARBNO(',' SPAN(digits) (epsilon . *mark_fire())) ']'
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 36
                        mov              r10, 7;                              jmp   n58_var_α
n57_statement_begin_β:  mov              r11, 36;                             jmp   n67_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 64]             # epsilon
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 38
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # PAT$0$V0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n60_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 39
                        mov              rax, qword ptr [r9 + 64]             # epsilon
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_assign_α
n60_var_β:              mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # PAT$0$V1
                        mov              qword ptr [r9 + 104], rdx;           jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n63_lit_string_α
n62_lit_string_β:       mov              r11, 41
                        add              rsp, 16;                             jmp   n60_var_β
.Lx131_0:               .quad            .Lx131_0_s
.Lx131_0_s:             .string          "PAT$0"
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n64_call_α
n63_lit_string_β:       mov              r11, 42
                        add              rsp, 16;                             jmp   n62_lit_string_β
.Lx132_0:               .quad            .Lx132_0_s
.Lx132_0_s:             .string          "2"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_α:             sub              rsp, 16
                        mov              r11, 43
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
.Lrkfnzd134:            .string          "SNO$MKPAT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd134]
                        lea              rsi, [rsp + 0]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        cmp              al, 104;                             jne   .Lx133_240
                        add              rsp, 16;                             jmp   n63_lit_string_β
.Lx133_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_assign_α
n64_call_β:             mov              r11, 43
                        add              rsp, 16;                             jmp   n63_lit_string_β
#-----------------------------------------------------------------------------------------------------------------------
n65_assign_α:           mov              r11, 44
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # pattern
                        mov              qword ptr [r9 + 56], rdx;            jmp   n66_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:    mov              r11, 45
                        mov              r10, 7
                        add              rsp, 80;                             jmp   n67_statement_begin_α
#=======================================================================================================================
#         '[1,2]' ? pattern                              :S(matched)F(no_match)
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 46
                        mov              r10, 8;                              jmp   n68_lit_string_α
n67_statement_begin_β:  mov              r11, 46;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 47
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_var_α
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "[1,2]"
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 48
                        mov              rax, qword ptr [r9 + 48]             # pattern
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_assign_α
n69_var_β:              mov              r11, 48
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 49
                        mov              rsi, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n71_match_begin_α
n70_assign_β:           mov              r11, 49;                             jmp   n69_var_β
.Lx142_0:               .quad            .Lx142_0_s
.Lx142_0_s:             .string          "PATV$0"
#-----------------------------------------------------------------------------------------------------------------------
n71_match_begin_α:      mov              r11, 50
                        mov              rdi, qword ptr [rsp + 16]            # lit_string
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
.Lx144_0:               mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx144_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n72_match_defer_α
n71_match_begin_β:      mov              r11, 50
.Lx144_13:              lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx144_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx144_1
                                                                              jmp   .Lx144_0
.Lx144_1:
n71_match_begin_af:     mov              r11, 50
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
                        pop              rbp;                                 jmp   n70_assign_β
#-----------------------------------------------------------------------------------------------------------------------
n72_match_defer_α:      mov              r11, 51
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        lea              rdi, [rip + .S3]
                        mov              esi, r14d
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_defer_probe_run@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        test             rax, rax;                            jz    .Lx145_0
                        mov              r8d, 1
                        lea              rcx, [rip + .Lx145_5]
                        push             rcx
                        lea              rcx, [rip + .Lx145_4]
                        push             rcx;                                 jmp   rax
.Lx145_4:                                                                     jmp   n73_match_end_α
.Lx145_5:                                                                     jmp   n71_match_begin_β
.Lx145_0:               mov              eax, edx
                        test             eax, eax;                            js    n71_match_begin_β
                        mov              ecx, r14d
                        mov              r14d, eax
                        lea              rax, [rip + .Lx145_6]
                        push             rcx
                        push             rax;                                 jmp   n73_match_end_α
.Lx145_6:               add              rsp, 8
                        pop              rax
                        mov              r14d, eax;                           jmp   n71_match_begin_β
n72_match_defer_β:      mov              r11, 51
                        cmp              qword ptr [rsp + 0], 0;              jne   .Lx145_12
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 248]
                        test             rax, rax;                            je    .Lx145_12
                                                                              jmp   rax
.Lx145_12:                                                                    jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
n73_match_end_α:        mov              r11, 52
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
                        test             rax, rax;                            je    .Lx147_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n71_match_begin_af
.Lx147_13:              add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n74_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 53
                        mov              r10, 8
                        add              rsp, 32;                             jmp   n75_statement_begin_α
#=======================================================================================================================
# matched OUTPUT = 'MATCH fire_count=' fire_count        :(END)
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 54
                        mov              r10, 9;                              jmp   n76_lit_string_α
n75_statement_begin_β:  mov              r11, 54;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       sub              rsp, 16
                        mov              r11, 55
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n77_var_α
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "MATCH fire_count="
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 16]             # fire_count
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_binop_α
n77_var_β:              mov              r11, 56
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n78_binop_α:            sub              rsp, 16
                        mov              r11, 57
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n79_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 58
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n80_statement_end_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 59
                        mov              r10, 9
                        add              rsp, 48;                             jmp   main_γ
#=======================================================================================================================
# no_match        OUTPUT = 'NOMATCH fire_count=' fire_count
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 60
                        mov              r10, 10;                             jmp   n82_lit_string_α
n81_statement_begin_β:  mov              r11, 60;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       sub              rsp, 16
                        mov              r11, 61
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 19
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_var_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "NOMATCH fire_count="
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 62
                        mov              rax, qword ptr [r9 + 16]             # fire_count
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_binop_α
n83_var_β:              mov              r11, 62
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n81_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            sub              rsp, 16
                        mov              r11, 63
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 64
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n86_statement_end_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 65
                        mov              r10, 10
                        add              rsp, 48;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
RETURN:                 mov              r11, 66
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
.Lseala1:               .string          "mark_fire"
                        .section         .text
                        .intel_syntax    noprefix
                        .weak            mark_fire_α
                        lea              rdi, [rip + .Lseala1]
                        mov              rsi, qword ptr [rip + mark_fire_α@GOTPCREL]
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
                        .long            272
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.S0:                    .string          "PAT$0$V0"
.S1:                    .string          "*mark_fire"
.S2:                    .string          "PAT$0$V1"
.S3:                    .string          "PATV$0"
                        .text
                        .section         .rodata
.C0:                    .byte            0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
