                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 3
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 3
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "subject"
.Lgvan1:                .string          "cap1"
.Lgvan2:                .string          "cap2"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         subject = 'FOOBAR'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_assign_α
.Lx46_0:                .quad            .Lx46_0_s
.Lx46_0_s:              .string          "FOOBAR"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:     mov              r11, 4
                        mov              r10, 1
                        add              rsp, 16;                             jmp   n4_statement_begin_α
#=======================================================================================================================
#         subject ('FOO' $ cap1)  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5
                        mov              r10, 2;                              jmp   n5_var_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               sub              rsp, 16
                        mov              r11, 6
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:       mov              r11, 7
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx54_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx54_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n7_match_assign_save_α
n6_match_begin_β:       mov              r11, 7
.Lx54_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx54_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx54_1
                                                                              jmp   .Lx54_0
.Lx54_1:
n6_match_begin_af:      mov              r11, 7
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
                        add              rsp, 16;                             jmp   n18_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_save_α: sub              rsp, 16
                        mov              r11, 8
                        mov              dword ptr [rsp + 0], r14d;           jmp   n8_match_lit_α
n7_match_assign_save_β: mov              r11, 8
                        add              rsp, 16;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_lit_α:         mov              r11, 9
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jle   .Lx58_237
                        add              rsp, 16;                             jmp   n6_match_begin_β
.Lx58_237:              movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 70;                             je    .Lx58_238
                        add              rsp, 16;                             jmp   n6_match_begin_β
.Lx58_238:              movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 79;                             je    .Lx58_239
                        add              rsp, 16;                             jmp   n6_match_begin_β
.Lx58_239:              movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 79;                             je    .Lx58_240
                        add              rsp, 16;                             jmp   n6_match_begin_β
.Lx58_240:              add              r14d, 3;                             jmp   n9_match_assign_imm_α
n8_match_lit_β:         mov              r11, 9
                        sub              r14d, 3
                        add              rsp, 16;                             jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_imm_α:  mov              r11, 10
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              rax, -1;                             je    .Lx60_4
                        test             rax, rax;                            je    .Lx60_1
                        lea              rcx, [rip + .Lx60_2]
                        lea              rdx, [rip + .Lx60_3];                jmp   rax
.Lx60_2:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx60_1
.Lx60_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n8_match_lit_β
.Lx60_1:                                                                      jmp   n10_match_end_α
.Lx60_4:                                                                      jmp   n8_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n10_match_end_α:        mov              r11, 11
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
                        test             rax, rax;                            je    .Lx62_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n6_match_begin_af
.Lx62_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n11_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n12_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W07/001: imm cap=' cap1   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:  mov              r11, 13
                        mov              r10, 3;                              jmp   n13_lit_string_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_var_α
.Lx67_0:                .quad            .Lx67_0_s
.Lx67_0_s:              .string          "PASS W07/001: imm cap="
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              sub              rsp, 16
                        mov              r11, 15
                        mov              rax, qword ptr [r9 + 16]             # cap1
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_binop_α
n14_var_β:              mov              r11, 15
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            sub              rsp, 16
                        mov              r11, 16
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 17
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_statement_end_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_end_α:    mov              r11, 18
                        mov              r10, 3
                        add              rsp, 48;                             jmp   n22_statement_begin_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W07/001: imm capture should match'
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 19
                        mov              r10, 4;                              jmp   n19_lit_string_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   n22_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_assign_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          "FAIL W07/001: imm capture should match"
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_statement_end_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n22_statement_begin_α
#=======================================================================================================================
# t002    subject = 'FOOBAR'
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:  mov              r11, 23
                        mov              r10, 5;                              jmp   n23_lit_string_α
n22_statement_begin_β:  mov              r11, 23;                             jmp   n26_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       sub              rsp, 16
                        mov              r11, 24
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_assign_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "FOOBAR"
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # subject
                        mov              qword ptr [r9 + 8], rdx;             jmp   n25_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        mov              r10, 5
                        add              rsp, 16;                             jmp   n26_statement_begin_α
#=======================================================================================================================
#         subject ('BAR' $ cap2)  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 27
                        mov              r10, 6;                              jmp   n27_var_α
n26_statement_begin_β:  mov              r11, 27;                             jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              sub              rsp, 16
                        mov              r11, 28
                        mov              rax, qword ptr [r9 + 0]              # subject
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n28_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n28_match_begin_α:      mov              r11, 29
                        mov              rdi, qword ptr [rsp + 0]             # var
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx89_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx89_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n29_match_assign_save_α
n28_match_begin_β:      mov              r11, 29
.Lx89_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx89_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx89_1
                                                                              jmp   .Lx89_0
.Lx89_1:
n28_match_begin_af:     mov              r11, 29
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
                        add              rsp, 16;                             jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n29_match_assign_save_α:
                        sub              rsp, 16
                        mov              r11, 30
                        mov              dword ptr [rsp + 0], r14d;           jmp   n30_match_lit_α
n29_match_assign_save_β:
                        mov              r11, 30
                        add              rsp, 16;                             jmp   n28_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n30_match_lit_α:        mov              r11, 31
                        mov              eax, r14d
                        add              eax, 3
                        cmp              eax, r15d;                           jle   .Lx93_237
                        add              rsp, 16;                             jmp   n28_match_begin_β
.Lx93_237:              movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 66;                             je    .Lx93_238
                        add              rsp, 16;                             jmp   n28_match_begin_β
.Lx93_238:              movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 65;                             je    .Lx93_239
                        add              rsp, 16;                             jmp   n28_match_begin_β
.Lx93_239:              movzx            eax, byte ptr [r13+rcx+2]
                        cmp              eax, 82;                             je    .Lx93_240
                        add              rsp, 16;                             jmp   n28_match_begin_β
.Lx93_240:              add              r14d, 3;                             jmp   n31_match_assign_imm_α
n30_match_lit_β:        mov              r11, 31
                        sub              r14d, 3
                        add              rsp, 16;                             jmp   n28_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n31_match_assign_imm_α: mov              r11, 32
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S1]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              rax, -1;                             je    .Lx95_4
                        test             rax, rax;                            je    .Lx95_1
                        lea              rcx, [rip + .Lx95_2]
                        lea              rdx, [rip + .Lx95_3];                jmp   rax
.Lx95_2:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx95_1
.Lx95_3:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_match_lit_β
.Lx95_1:                                                                      jmp   n32_match_end_α
.Lx95_4:                                                                      jmp   n30_match_lit_β
#-----------------------------------------------------------------------------------------------------------------------
n32_match_end_α:        mov              r11, 33
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
                        test             rax, rax;                            je    .Lx97_13
                        add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14;                                 jmp   n28_match_begin_af
.Lx97_13:               add              rsp, 16
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -8]            # cas_mark
                        mov              r13, qword ptr [rbp + -16]           # outer_Σ
                        mov              r14, qword ptr [rbp + -24]           # outer_δ
                        mov              r15, qword ptr [rbp + -32]           # outer_Δ
                        mov              rsp, rbp                             # frame_whack
                        pop              rbp;                                 jmp   n33_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n34_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W07/002: imm cap BAR=' cap2   :(END)
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35
                        mov              r10, 7;                              jmp   n35_lit_string_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 26
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n36_var_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "PASS W07/002: imm cap BAR="
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              r11, 37
                        mov              rax, qword ptr [r9 + 32]             # cap2
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_binop_α
n36_var_β:              mov              r11, 37
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n37_binop_α:            sub              rsp, 16
                        mov              r11, 38
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rsi, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_statement_end_α
.Lx105_0:               .quad            .Lx105_0_s
.Lx105_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        mov              r10, 7
                        add              rsp, 48;                             jmp   main_γ
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W07/002: BAR capture should match'
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 41
                        mov              r10, 8;                              jmp   n41_lit_string_α
n40_statement_begin_β:  mov              r11, 41;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       sub              rsp, 16
                        mov              r11, 42
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_assign_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          "FAIL W07/002: BAR capture should match"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:           mov              r11, 43
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx111_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_statement_end_α
.Lx111_0:               .quad            .Lx111_0_s
.Lx111_0_s:             .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:    mov              r11, 44
                        mov              r10, 8
                        add              rsp, 16;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .rodata
.S0:                    .string          "cap1"
.S1:                    .string          "cap2"
                        .text
                        .section         .note.GNU-stack,"",@progbits
