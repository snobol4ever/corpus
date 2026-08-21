                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#  'ABC' ? POS(0) BAL $ OUTPUT FAIL
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:                                                         jmp   n1_lit_string_α
n0_statement_begin_β:                                                         jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx13_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_match_begin_α
.Lx13_0:                .quad            .Lx13_0_s
.Lx13_0_s:              .string          "ABC"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:       mov              rdi, qword ptr [rsp + 0]             # lit_string
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
.Lx15_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx15_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n3_match_pos_α
n2_match_begin_β:
.Lx15_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx15_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx15_1
                                                                              jmp   .Lx15_0
.Lx15_1:
n2_match_begin_af:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # mbc_restore
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
                        add              rsp, 16;                             jmp   n7_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_pos_α:         mov              rax, 0
                        cmp              r14d, eax;                           jne   n2_match_begin_β
                                                                              jmp   n4_match_assign_save_α
n3_match_pos_β:                                                               jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_assign_save_α: sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d;           jmp   n5_match_bal_α
n4_match_assign_save_β: add              rsp, 16;                             jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_bal_α:         sub              rsp, 16
                        mov              dword ptr [rsp + 0], 0
                        mov              eax, r14d
                        mov              dword ptr [rsp + 4], eax
                        mov              dword ptr [rsp + 8], 0
n5_match_bal_β:
.Lx20_0:                mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        cmp              eax, r15d;                           jge   .Lx20_3
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        add              dword ptr [rsp + 0], 1
                        mov              edx, dword ptr [rsp + 8]
                        cmp              esi, 40;                             jne   .Lx20_1
                        add              edx, 1;                              jmp   .Lx20_2
.Lx20_1:                cmp              esi, 41;                             jne   .Lx20_2
                        sub              edx, 1
                        cmp              edx, 0;                              jl    .Lx20_3
.Lx20_2:                mov              dword ptr [rsp + 8], edx
                        test             edx, edx;                            jne   .Lx20_0
                        mov              eax, dword ptr [rsp + 4]
                        add              eax, dword ptr [rsp + 0]
                        mov              r14d, eax;                           jmp   n6_match_assign_imm_α
.Lx20_3:                mov              eax, dword ptr [rsp + 4]
                        mov              r14d, eax
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n6_match_assign_imm_α:  mov              eax, dword ptr [rsp + 16]
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
                        cmp              rax, -1;                             je    .Lx22_4
                        test             rax, rax;                            je    .Lx22_1
                        lea              rcx, [rip + .Lx22_2]
                        lea              rdx, [rip + .Lx22_3];                jmp   rax
.Lx22_2:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx22_1
.Lx22_3:                mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_match_bal_β
.Lx22_1:                                                                      jmp   n6_match_assign_imm_β
n6_match_assign_imm_β:                                                        jmp   n5_match_bal_β
.Lx22_4:                                                                      jmp   n5_match_bal_β
#=======================================================================================================================
#  OUTPUT = 'done'
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:                                                         jmp   n8_lit_string_α
n7_statement_begin_β:                                                         jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Lx25_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Lx25_0:                .quad            .Lx25_0_s
.Lx25_0_s:              .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_statement_end_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   main_γ
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
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
