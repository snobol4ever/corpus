                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "x"
.Lgvan1:                .string          "v"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .section         .text
                        .intel_syntax    noprefix
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
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 11
                        mov              rax, qword ptr [rip + .Lx16_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx16_0:
                        .quad            .Lx16_0_s
.Lx16_0_s:
                        .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # x
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
n4_statement_begin_β:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # x
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        sub              rsp, 160
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              rdi, qword ptr [rsp + 160]                     # var
                        mov              rsi, qword ptr [rsp + 168]
                        push             rbp                                            # match_frame
                        mov              rbp, rsp
                        lea              rbp, [rbp + 8]
                        sub              rsp, 56
                        mov              qword ptr [rbp + -16], r13                     # outer_Σ
                        mov              qword ptr [rbp + -24], r14                     # outer_δ
                        mov              qword ptr [rbp + -32], r15                     # outer_Δ
                        mov              qword ptr [rbp + -40], r12                     # cas_base
                        mov              rcx, qword ptr [rip + rt_anchor_g@GOTPCREL]
                        mov              rax, qword ptr [rcx + 0]                       # anchor_snapshot
                        mov              qword ptr [rbp + -48], rax
                        lea              rcx, [rip + g_cap_gen]
                        mov              eax, dword ptr [rcx + 0]                       # cap_gen
                        mov              qword ptr [rbp + -64], rax
                        call             rt_match_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rbp + -56], 0                       # start_δ
.Lx24_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n7_match_assign_save_α
n6_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx24_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx24_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx24_0
.Lx24_1:
n6_match_begin_af:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n13_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n7_match_assign_save_α:
                        sub              rsp, 16
                        mov              dword ptr [rsp + 0], r14d
                                                                                        jmp   n8_match_len_α
n7_match_assign_save_β:
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n8_match_len_α:
                        mov              eax, r14d
                        add              eax, 5
                        cmp              eax, r15d
                                                                                        jle   .Lx27_240
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
.Lx27_240:
                        add              r14d, 5
                                                                                        jmp   n9_match_assign_imm_α
n8_match_len_β:
                        sub              r14d, 5
                        add              rsp, 16
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_assign_imm_α:
                        mov              eax, dword ptr [rsp + 0]
                        lea              rdi, [rip + .S0]                               # varname
                        mov              esi, eax                                       # saved_delta
                        mov              edx, r14d                                      # cur_delta
                        mov              ecx, 1                                         # is_imm
                        call             rt_cap_open@PLT
                        test             rax, rax
                                                                                        je    .Lx29_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx29_2]
                        lea              rdx, [rip + .Lx29_3]
                                                                                        jmp   rax
.Lx29_2:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_cap_finish@PLT
                                                                                        jmp   .Lx29_1
.Lx29_3:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax                                       # fret
                        mov              rsi, rdx                                       # fret
                        call             rt_cap_finish@PLT
.Lx29_1:
                                                                                        jmp   n10_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n10_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx31_1:
                        test             rax, rax
                                                                                        je    .Lx31_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx31_3]
                        lea              rdx, [rip + .Lx31_4]
                                                                                        jmp   rax
.Lx31_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx31_1
.Lx31_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx31_1
.Lx31_2:
                        call             rt_dcap_end_ok_close@PLT
                        add              rsp, 8
                        pop              r13
                        pop              r15
                        pop              r14
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   n11_var_α
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              qword ptr [1879048192], r12
                        mov              r13, qword ptr [rbp + -16]                     # outer_Σ
                        mov              r14, qword ptr [rbp + -24]                     # outer_δ
                        mov              r15, qword ptr [rbp + -32]                     # outer_Δ
                        mov              rdi, r13                                       # sig
                        mov              rsi, r15                                       # len
                        mov              rdx, qword ptr [rbp + -64]                     # cap_gen
                        call             rt_match_ctx_restore@PLT
                        lea              rsp, [rbp + -8]                                # whack
                        pop              rbp
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052304]                    # v
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n12_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # var
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx33_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n13_statement_end_α
.Lx33_0:
                        .quad            .Lx33_0_s
.Lx33_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:
                        add              rsp, 208
                                                                                        jmp   main_γ
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
.S0:                    .string          "v"
                        .text
                        .section         .note.GNU-stack,"",@progbits
