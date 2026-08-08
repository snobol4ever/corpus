                        .intel_syntax    noprefix
                        .text
                        .section         .rodata
.Lgvan0:                .string          "subject"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              edi, 1
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 1
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#=======================================================================================================================
#         subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n4_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_assign_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n3_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n4_statement_begin_α
#=======================================================================================================================
#         subject POS(0) 'H'  :f(e001)
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:
                                                                                        jmp   n5_var_α
n4_statement_begin_β:
                                                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n6_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n6_match_begin_α:
                        sub              rsp, 128
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
                        mov              rdi, qword ptr [rsp + 128]                     # var
                        mov              rsi, qword ptr [rsp + 136]
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
.Lx75_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n7_lit_integer_α
n6_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx75_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx75_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx75_0
.Lx75_1:
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
                        add              rsp, 144
                                                                                        jmp   n16_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_match_pos_α
.Lx76_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_match_pos_α:
                        mov              rax, 0
                        cmp              r14d, eax
                                                                                        jne   n6_match_begin_β
                                                                                        jmp   n9_match_lit_α
n8_match_pos_β:
                                                                                        jmp   n6_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n9_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n6_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 72
                                                                                        jne   n6_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n10_match_end_α
n9_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n6_match_begin_β
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
.Lx81_1:
                        test             rax, rax
                                                                                        je    .Lx81_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx81_3]
                        lea              rdx, [rip + .Lx81_4]
                                                                                        jmp   rax
.Lx81_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx81_1
.Lx81_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx81_1
.Lx81_2:
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
                                                                                        jmp   n11_statement_end_α
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
n11_statement_end_α:
                        add              rsp, 144
                                                                                        jmp   n12_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/001: POS(0) matched'   :(t002)
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:
                                                                                        jmp   n13_lit_string_α
n12_statement_begin_β:
                                                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 28
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n14_assign_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "PASS W06/001: POS(0) matched"
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx87_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n15_statement_end_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n20_statement_begin_α
#=======================================================================================================================
# e001    OUTPUT = 'FAIL W06/001: POS(0) should match'
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:
                                                                                        jmp   n17_lit_string_α
n16_statement_begin_β:
                                                                                        jmp   n20_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 33
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "FAIL W06/001: POS(0) should match"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx93_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n19_statement_end_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n20_statement_begin_α
#=======================================================================================================================
# t002    subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:
                                                                                        jmp   n21_lit_string_α
n20_statement_begin_β:
                                                                                        jmp   n24_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n22_assign_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n23_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n24_statement_begin_α
#=======================================================================================================================
#         subject 'EL' POS(3)  :f(e002)
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:
                                                                                        jmp   n25_var_α
n24_statement_begin_β:
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n26_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n26_match_begin_α:
                        sub              rsp, 304
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
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              rdi, qword ptr [rsp + 304]                     # var
                        mov              rsi, qword ptr [rsp + 312]
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
.Lx106_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n27_match_lit_α
n26_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx106_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx106_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx106_0
.Lx106_1:
n26_match_begin_af:
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
                        add              rsp, 320
                                                                                        jmp   n36_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n27_match_lit_α:
                        mov              eax, r14d
                        add              eax, 2
                        cmp              eax, r15d
                                                                                        jg    n26_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 69
                                                                                        jne   n26_match_begin_β
                        movzx            eax, byte ptr [r13+rcx+1]
                        cmp              eax, 76
                                                                                        jne   n26_match_begin_β
                        add              r14d, 2
                                                                                        jmp   n28_lit_integer_α
n27_match_lit_β:
                        sub              r14d, 2
                                                                                        jmp   n26_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n29_match_pos_α
.Lx109_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n29_match_pos_α:
                        mov              rax, 3
                        cmp              r14d, eax
                                                                                        jne   n27_match_lit_β
                                                                                        jmp   n30_match_end_α
#-----------------------------------------------------------------------------------------------------------------------
n30_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx112_1:
                        test             rax, rax
                                                                                        je    .Lx112_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx112_3]
                        lea              rdx, [rip + .Lx112_4]
                                                                                        jmp   rax
.Lx112_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx112_1
.Lx112_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx112_1
.Lx112_2:
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
                                                                                        jmp   n31_statement_end_α
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
n31_statement_end_α:
                        add              rsp, 320
                                                                                        jmp   n32_statement_begin_α
#=======================================================================================================================
#         OUTPUT = 'PASS W06/002: POS(3) after EL matched'  :(t003)
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:
                                                                                        jmp   n33_lit_string_α
n32_statement_begin_β:
                                                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n34_assign_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "PASS W06/002: POS(3) after EL matched"
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx118_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n35_statement_end_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n40_statement_begin_α
#=======================================================================================================================
# e002    OUTPUT = 'FAIL W06/002: POS(3) after EL should match'
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:
                                                                                        jmp   n37_lit_string_α
n36_statement_begin_β:
                                                                                        jmp   n40_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 42
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n38_assign_α
.Lx123_0:
                        .quad            .Lx123_0_s
.Lx123_0_s:
                        .string          "FAIL W06/002: POS(3) after EL should match"
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx124_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n39_statement_end_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n40_statement_begin_α
#=======================================================================================================================
# t003    subject = 'HELLO'
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:
                                                                                        jmp   n41_lit_string_α
n40_statement_begin_β:
                                                                                        jmp   n44_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 5
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n42_assign_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "HELLO"
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_α:
                        mov              rax, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [1879052288], rax                    # subject
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n43_statement_end_α
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n44_statement_begin_α
#=======================================================================================================================
#         subject POS(2) 'H'  :s(e003)
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_begin_α:
                                                                                        jmp   n45_var_α
n44_statement_begin_β:
                                                                                        jmp   n56_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [1879052288]                    # subject
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rsp + 0], rax                       # result
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n46_match_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n46_match_begin_α:
                        sub              rsp, 480
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
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              rdi, qword ptr [rsp + 480]                     # var
                        mov              rsi, qword ptr [rsp + 488]
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
.Lx137_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n47_lit_integer_α
n46_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx137_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx137_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx137_0
.Lx137_1:
n46_match_begin_af:
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
                        add              rsp, 496
                                                                                        jmp   n56_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3                         # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n48_match_pos_α
.Lx138_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n48_match_pos_α:
                        mov              rax, 2
                        cmp              r14d, eax
                                                                                        jne   n46_match_begin_β
                                                                                        jmp   n49_match_lit_α
n48_match_pos_β:
                                                                                        jmp   n46_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n49_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n46_match_begin_β
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 72
                                                                                        jne   n46_match_begin_β
                        add              r14d, 1
                                                                                        jmp   n50_match_end_α
n49_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n46_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n50_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx143_1:
                        test             rax, rax
                                                                                        je    .Lx143_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx143_3]
                        lea              rdx, [rip + .Lx143_4]
                                                                                        jmp   rax
.Lx143_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx143_1
.Lx143_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx143_1
.Lx143_2:
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
                                                                                        jmp   n51_statement_end_α
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
n51_statement_end_α:
                        add              rsp, 496
                                                                                        jmp   n52_statement_begin_α
#=======================================================================================================================
# e003    OUTPUT = 'FAIL W06/003: POS(2) H should fail'
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:
                                                                                        jmp   n53_lit_string_α
n52_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 34
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n54_assign_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "FAIL W06/003: POS(2) H should fail"
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx149_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n55_statement_end_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#=======================================================================================================================
#         OUTPUT = 'PASS W06/003: POS(2) H correctly fails'  :(END)
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:
                                                                                        jmp   n57_lit_string_α
n56_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 38
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n58_assign_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "PASS W06/003: POS(2) H correctly fails"
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx155_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n59_statement_end_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_goto_α:
                                                                                        jmp   n16_statement_begin_α
n60_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_goto_α:
                                                                                        jmp   n20_statement_begin_α
n61_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n62_goto_α:
                                                                                        jmp   n36_statement_begin_α
n62_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n63_goto_α:
                                                                                        jmp   n40_statement_begin_α
n63_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_goto_α:
                                                                                        jmp   n52_statement_begin_α
n64_goto_β:
                                                                                        jmp   main_ω
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
                        .section         .note.GNU-stack,"",@progbits
