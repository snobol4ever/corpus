                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#=======================================================================================================================
#  '-AB-1-' ? (ANY('AB') | '1' ABORT)   :S(A)F(B)
#-----------------------------------------------------------------------------------------------------------------------
n0_statement_begin_α:
                                                                                        jmp   n1_lit_string_α
n0_statement_begin_β:
                                                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx43_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n2_match_begin_α
.Lx43_0:
                        .quad            .Lx43_0_s
.Lx43_0_s:
                        .string          "-AB-1-"
#-----------------------------------------------------------------------------------------------------------------------
n2_match_begin_α:
                        sub              rsp, 144
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
                        mov              rdi, qword ptr [rsp + 144]                     # lit_string
                        mov              rsi, qword ptr [rsp + 152]
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
.Lx45_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n3_match_alternate_α
n2_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx45_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx45_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx45_0
.Lx45_1:
n2_match_begin_af:
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
                        add              rsp, 160
                                                                                        jmp   n30_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n3_match_alternate_α:
                        mov              dword ptr [rbp + 96], r14d
                        lea              rax, [rip + .Lx47_21]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   n27_match_any_α
.Lx47_21:
                        lea              rax, [rip + .Lx47_19]
                        mov              qword ptr [rbp + 112], rax
                                                                                        jmp   n25_match_lit_α
n3_match_alternate_s0:
                        lea              rax, [rip + .Lx47_40]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n3_match_alternate_as
n3_match_alternate_s1:
                        lea              rax, [rip + .Lx47_41]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n3_match_alternate_as
.Lx47_40:
                                                                                        jmp   n27_match_any_β
.Lx47_41:
                                                                                        jmp   n24_goto_β
n3_match_alternate_as:
                                                                                        jmp   n4_match_end_α
n3_match_alternate_β:
                        mov              rax, qword ptr [rbp + 104]
                                                                                        jmp   rax
n3_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 96]
                        mov              rax, qword ptr [rbp + 112]
                                                                                        jmp   rax
.Lx47_19:
                                                                                        jmp   n2_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n4_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx49_1:
                        test             rax, rax
                                                                                        je    .Lx49_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx49_3]
                        lea              rdx, [rip + .Lx49_4]
                                                                                        jmp   rax
.Lx49_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx49_1
.Lx49_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx49_1
.Lx49_2:
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
                                                                                        jmp   n5_statement_end_α
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
n5_statement_end_α:
                        add              rsp, 160
                                                                                        jmp   n6_statement_begin_α
#=======================================================================================================================
# A OUTPUT = 'first ok'                 :(C)
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:
                                                                                        jmp   n7_lit_string_α
n6_statement_begin_β:
                                                                                        jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Lx54_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n8_assign_α
.Lx54_0:
                        .quad            .Lx54_0_s
.Lx54_0_s:
                        .string          "first ok"
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx55_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n9_statement_end_α
.Lx55_0:
                        .quad            .Lx55_0_s
.Lx55_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n10_statement_begin_α
#=======================================================================================================================
# C '-1B-A-' ? (ANY('AB') | '1' ABORT)  :S(D)F(E)
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:
                                                                                        jmp   n11_lit_string_α
n10_statement_begin_β:
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n12_match_begin_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "-1B-A-"
#-----------------------------------------------------------------------------------------------------------------------
n12_match_begin_α:
                        sub              rsp, 336
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
                        mov              rdi, qword ptr [rsp + 336]                     # lit_string
                        mov              rsi, qword ptr [rsp + 344]
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
.Lx62_0:
                        mov              r14d, dword ptr [rbp + -56]
                                                                                        jmp   n13_match_alternate_α
n12_match_begin_β:
                        mov              r12, qword ptr [rbp + -40]                     # cas_base
                        mov              eax, dword ptr [rbp + -56]                     # start_δ
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    .Lx62_1
                        mov              rcx, qword ptr [rbp + -48]                     # anchor_snapshot
                        test             rcx, rcx
                                                                                        jne   .Lx62_1
                        mov              qword ptr [rbp + -56], rax                     # start_δ
                                                                                        jmp   .Lx62_0
.Lx62_1:
n12_match_begin_af:
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
                        add              rsp, 352
                                                                                        jmp   n37_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n13_match_alternate_α:
                        mov              dword ptr [rbp + 304], r14d
                        lea              rax, [rip + .Lx64_21]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n23_match_any_α
.Lx64_21:
                        lea              rax, [rip + .Lx64_19]
                        mov              qword ptr [rbp + 320], rax
                                                                                        jmp   n21_match_lit_α
n13_match_alternate_s0:
                        lea              rax, [rip + .Lx64_40]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n13_match_alternate_as
n13_match_alternate_s1:
                        lea              rax, [rip + .Lx64_41]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n13_match_alternate_as
.Lx64_40:
                                                                                        jmp   n23_match_any_β
.Lx64_41:
                                                                                        jmp   n20_goto_β
n13_match_alternate_as:
                                                                                        jmp   n14_match_end_α
n13_match_alternate_β:
                        mov              rax, qword ptr [rbp + 312]
                                                                                        jmp   rax
n13_match_alternate_af:
                        mov              r14d, dword ptr [rbp + 304]
                        mov              rax, qword ptr [rbp + 320]
                                                                                        jmp   rax
.Lx64_19:
                                                                                        jmp   n12_match_begin_β
#-----------------------------------------------------------------------------------------------------------------------
n14_match_end_α:
                        push             r14
                        push             r15
                        push             r13
                        sub              rsp, 8
                        mov              rdi, qword ptr [rbp + -40]                     # cas_base
                        mov              rsi, r12                                       # cas_top
                        mov              rdx, r13
                        call             rt_dcap_end_ok_open@PLT
.Lx66_1:
                        test             rax, rax
                                                                                        je    .Lx66_2
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx66_3]
                        lea              rdx, [rip + .Lx66_4]
                                                                                        jmp   rax
.Lx66_3:
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx66_1
.Lx66_4:
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              rdi, rax
                        mov              rsi, rdx
                        call             rt_dcap_step@PLT
                                                                                        jmp   .Lx66_1
.Lx66_2:
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
                                                                                        jmp   n15_statement_end_α
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
n15_statement_end_α:
                        add              rsp, 352
                                                                                        jmp   n16_statement_begin_α
#=======================================================================================================================
# D OUTPUT = 'second ok'                :(END)
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:
                                                                                        jmp   n17_lit_string_α
n16_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 9
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n18_assign_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "second ok"
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx72_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n19_statement_end_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_goto_α:
                                                                                        jmp   n13_match_alternate_af
n20_goto_β:
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n21_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 49
                                                                                        jne   n13_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n22_match_abort_α
n21_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n22_match_abort_α:
                                                                                        jmp   n12_match_begin_af
#-----------------------------------------------------------------------------------------------------------------------
n23_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n13_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 65
                                                                                        je    .Lx80_0
                        cmp              esi, 66
                                                                                        je    .Lx80_0
                                                                                        jmp   n13_match_alternate_af
.Lx80_0:
                        add              r14d, 1
                                                                                        jmp   n13_match_alternate_s0
n23_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n13_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n24_goto_α:
                                                                                        jmp   n3_match_alternate_af
n24_goto_β:
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n25_match_lit_α:
                        mov              eax, r14d
                        add              eax, 1
                        cmp              eax, r15d
                                                                                        jg    n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            eax, byte ptr [r13+rcx]
                        cmp              eax, 49
                                                                                        jne   n3_match_alternate_af
                        add              r14d, 1
                                                                                        jmp   n26_match_abort_α
n25_match_lit_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n26_match_abort_α:
                                                                                        jmp   n2_match_begin_af
#-----------------------------------------------------------------------------------------------------------------------
n27_match_any_α:
                        mov              eax, r14d
                        cmp              eax, r15d
                                                                                        jge   n3_match_alternate_af
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              esi, 65
                                                                                        je    .Lx86_0
                        cmp              esi, 66
                                                                                        je    .Lx86_0
                                                                                        jmp   n3_match_alternate_af
.Lx86_0:
                        add              r14d, 1
                                                                                        jmp   n3_match_alternate_s0
n27_match_any_β:
                        sub              r14d, 1
                                                                                        jmp   n3_match_alternate_af
#-----------------------------------------------------------------------------------------------------------------------
n28_goto_α:
                                                                                        jmp   n6_statement_begin_α
n28_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_goto_α:
                                                                                        jmp   n30_statement_begin_α
n29_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# B OUTPUT = 'first FAIL'
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:
                                                                                        jmp   n31_lit_string_α
n30_statement_begin_β:
                                                                                        jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n32_assign_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "first FAIL"
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx92_0]                 # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n33_statement_end_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   n10_statement_begin_α
#-----------------------------------------------------------------------------------------------------------------------
n34_goto_α:
                                                                                        jmp   n10_statement_begin_α
n34_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n35_goto_α:
                                                                                        jmp   n16_statement_begin_α
n35_goto_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n36_goto_α:
                                                                                        jmp   n37_statement_begin_α
n36_goto_β:
                                                                                        jmp   main_ω
#=======================================================================================================================
# E OUTPUT = 'second aborted'
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:
                                                                                        jmp   n38_lit_string_α
n37_statement_begin_β:
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2                         # result
                        mov              dword ptr [rsp + 4], 14
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n39_assign_α
.Lx100_0:
                        .quad            .Lx100_0_s
.Lx100_0_s:
                        .string          "second aborted"
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rsi, qword ptr [rsp + 0]                       # lit_string
                        mov              rdx, qword ptr [rsp + 8]                       # val
                        mov              rdi, qword ptr [rip + .Lx101_0]                # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n40_statement_end_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:
                        add              rsp, 16
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
