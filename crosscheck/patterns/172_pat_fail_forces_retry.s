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
#  'abc' ? LEN(1) $ OUTPUT FAIL   :S(Y)F(N)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:   mov              r11, 1
                        mov              r10, 1;                              jmp   n1_lit_string_α
n0_statement_begin_β:   mov              r11, 1;                              jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 3
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_match_begin_α
.Lx16_0:                .quad            .Lx16_0_s
.Lx16_0_s:              .string          "abc"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:       mov              r11, 3
                        mov              rdi, qword ptr [rsp + 0]             # lit_string
                        mov              rsi, qword ptr [rsp + 8]
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
.Lx18_0:                mov              r14d, dword ptr [rbp + -40]
                        mov              rcx, qword ptr [rip + rtccb@GOTPCREL] # match_beta_cont
                        mov              rax, qword ptr [rcx + 248]
                        mov              qword ptr [rbp + -48], rax
                        lea              rax, [rip + .Lx18_13]
                        mov              qword ptr [rcx + 248], rax;          jmp   n3_match_assign_save_α
n2_match_begin_β:       mov              r11, 3
.Lx18_13:               lea              rsp, [rbp + -56]                     # retry_whack
                        add              dword ptr [rbp + -40], 1             # start_δ
                        mov              eax, dword ptr [rbp + -40]
                        cmp              eax, r15d;                           jg    .Lx18_1
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx]
                        cmp              rax, 0;                              jne   .Lx18_1
                                                                              jmp   .Lx18_0
.Lx18_1:
n2_match_begin_af:      mov              r11, 3
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
                        pop              rbp
                        add              rsp, 16;                             jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_assign_save_α: sub              rsp, 16
                        mov              r11, 4
                        mov              dword ptr [rsp + 0], r14d;           jmp   n4_match_len_α
n3_match_assign_save_β: mov              r11, 4
                        add              rsp, 16;                             jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_len_α:         mov              r11, 5
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d;                           jle   .Lx21_240
                        add              rsp, 16;                             jmp   n2_match_begin_β
.Lx21_240:              add              r14d, 1;                             jmp   n5_match_assign_imm_α
n4_match_len_β:         mov              r11, 5
                        sub              r14d, 1
                        add              rsp, 16;                             jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n5_match_assign_imm_α:  mov              r11, 6
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]
                        mov              esi, eax
                        mov              edx, r14d
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cap_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              rax, -1;                             je    .Lx23_4
                        test             rax, rax;                            je    .Lx23_1
                        lea              rcx, [rip + .Lx23_2]
                        lea              rdx, [rip + .Lx23_3];                jmp   rax
.Lx23_2:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx23_1
.Lx23_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cap_finish@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_match_len_β
.Lx23_1:                                                                      jmp   n5_match_assign_imm_β
n5_match_assign_imm_β:  mov              r11, 6;                              jmp   n4_match_len_β
.Lx23_4:                                                                      jmp   n4_match_len_β
#=======================================================================================================================
# Y OUTPUT = 'matched'            :(END)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 7
                        mov              r10, 2;                              jmp   n7_lit_string_α
n6_statement_begin_β:   mov              r11, 7;                              jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        sub              rsp, 16
                        mov              r11, 8
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 7
                        mov              rax, qword ptr [rip + .Lx26_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n8_assign_α
.Lx26_0:                .quad            .Lx26_0_s
.Lx26_0_s:              .string          "matched"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx27_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_statement_end_α
.Lx27_0:                .quad            .Lx27_0_s
.Lx27_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:     mov              r11, 10
                        mov              r10, 2
                        add              rsp, 16;                             jmp   main_γ
#=======================================================================================================================
# N OUTPUT = 'failed as expected'
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:  mov              r11, 11
                        mov              r10, 3;                              jmp   n11_lit_string_α
n10_statement_begin_β:  mov              r11, 11;                             jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Lx32_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_assign_α
.Lx32_0:                .quad            .Lx32_0_s
.Lx32_0_s:              .string          "failed as expected"
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rsi, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rip + .Lx33_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_statement_end_α
.Lx33_0:                .quad            .Lx33_0_s
.Lx33_0_s:              .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        mov              r10, 3
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
.S0:                    .string          "OUTPUT"
                        .text
                        .section         .note.GNU-stack,"",@progbits
